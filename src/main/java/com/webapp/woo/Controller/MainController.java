package com.webapp.woo.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webapp.woo.mycode;
import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.CommunityVO;
import com.webapp.woo.model.vo.LocationVO;
import com.webapp.woo.model.vo.MemberVO;
import com.webapp.woo.model.vo.SupportVO;
import com.webapp.woo.service.inf.ICommentSVC;
import com.webapp.woo.service.inf.ICommunitySVC;
import com.webapp.woo.service.inf.IFileManageSVC;
import com.webapp.woo.service.inf.ILocationSVC;
import com.webapp.woo.service.inf.IMemberSVC;
import com.webapp.woo.service.inf.ISupportSVC;

@Controller
public class MainController {

	@Autowired
	ICommunitySVC ctSvc;
	@Autowired
	IMemberSVC mbSvc;
	@Autowired
	IFileManageSVC fileSvc;
	@Autowired
	ICommentSVC CommentSVC;
	@Autowired
	ILocationSVC LocationSVC;
	@Autowired
	ISupportSVC SupportSVC;

	private static final Logger mbLogger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping(value = "default.woo", method = RequestMethod.GET)
	public String defaultMember() {
		return "index";
	}

	@RequestMapping(value = "main.woo", method = RequestMethod.GET)
	public ModelAndView MainIndexForm(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("index");
		
		return mav;
	}

	@RequestMapping(value = "info_policy.woo", method = RequestMethod.GET)
	public ModelAndView InfoPolicy(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("info/info_policy");
		return mav;
	}

	@RequestMapping(value = "info_childcare.woo", method = RequestMethod.GET)
	public ModelAndView InfoChildCare(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("info/info_childcare");
		return mav;
	}



//	@RequestMapping(value = "content.woo", method = RequestMethod.GET)
//	public ModelAndView Content(HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView("community/content");
//		return mav;
//	}
//	
	//article_search.my; post dao pn order.. pagination
		@RequestMapping(value = "content_search.woo",
				method = {RequestMethod.POST, RequestMethod.GET})
		public ModelAndView articleSearchProc(
				@RequestParam(value = "target", required = false, 
						defaultValue = "all") String target,
				@RequestParam(value = "keyword",   // required=true..
					defaultValue = "test") String k, 
				@RequestParam(value = "pg", required = false, 
					defaultValue = "1") int pg
				//@RequestParam(value = "pg") Integer pg
				) {
			
			System.out.println(">> 검색 키워드: " + k + ", pg: " + pg);

			
			List<CommunityVO> ctList = ctSvc.searchCommunitys(k, target, pg);		
			  ModelAndView mav = new ModelAndView();
			
			if( ctList != null ) {
				int ctSize = ctList.size();
				mav.addObject("ctSize", ctSize);
				mav.addObject("ctList", ctList);
				// paginate...
//				int maxPg = atSvc.checkMaxPageNumberForSearch(k, target);  
					// 검색 일치 총 레코드 수
				mav.addObject("pn", pg); // 요청된 검색 페이지 번호			
				
			} else {
				mav.addObject("msg", "게시글 검색 실패: " + k);
			}		
			return mav;
		}	
	
		
		@RequestMapping(value = "info_center.woo", method = RequestMethod.GET)
		public ModelAndView InfoCenter(
				@RequestParam(value = "si", required = false, defaultValue = "서울") String local_si){
			
			List<LocationVO> lovo = LocationSVC.selectAllLocationList(local_si);
			ModelAndView mav = new ModelAndView("info/info_center");
			if(lovo !=null) {
				int lovSize = lovo.size();
				mav.addObject("lovo", lovo); 
				mav.addObject("lovSize", lovSize); 
			}else {
				mav.addObject("msg",  "없어 꺼져"); 
			}
			return mav;
		}
	
	@RequestMapping(value = "content.woo", method = RequestMethod.GET)
	public ModelAndView contentListProc(
		@RequestParam(value = "pg", required = false, defaultValue = "1") int pageNumber) {
		System.out.println("content() pg...: pg = " + pageNumber);

		int maxPg = ctSvc.checkMaxPageNumber(); // 1~4
		if( pageNumber <= 0 || pageNumber > maxPg ) {
			System.out.println(">> 잘못된 페이지 번호 요청 pg: " + pageNumber);
			ModelAndView erMav =  new ModelAndView("redirect:content.woo?pg=1");
			erMav.addObject( "msg", ">> 잘못된 페이지 번호 요청 pg: " + pageNumber);
			return erMav;
		}
		List<CommunityVO> ctList = ctSvc.selectAllCommunitys(pageNumber);
		ModelAndView mav =  new ModelAndView("community/content");//FW
		if( ctList != null ) {
			int ctSize = ctList.size(); // 1 ~ 10
			List<String> mbLoginList = new ArrayList<>();
			for (CommunityVO ct : ctList) { // 순서가 유지...
				String mbName = mbSvc.selectOneMember(  ct.getMember_index()).getNickName(); // 서브쿼리역할
				mbLoginList.add(mbName);
			}
			
			mav.addObject("msg",  "pg/오리지널-sublists 게시글 리스트 조회 성공!: " + ctSize +"개");
			mav.addObject("ctList", ctList); // 메인 리스트
			mav.addObject("mbLoginList", mbLoginList); // 서브 리스트1 - 계정명
			mav.addObject("ctSize", ctSize);
			mav.addObject("pn", pageNumber); 
			mav.addObject("maxPg", maxPg);
		} else {
			mav.addObject("msg",  "pg/오리지널-sublists 게시글 리스트 조회 실패! : " + pageNumber);
		}		
		return mav;
	}	
	
	@RequestMapping(value = "new_content.woo", method = RequestMethod.GET)
	public ModelAndView NewContent(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("community/new_content");
		return mav;
	}
	
	@RequestMapping(value = "new_content_add.woo", method = RequestMethod.POST)
	 public ModelAndView NewContentProc(int cate, String title, String content,
			 List<MultipartFile> imgPath, int memberIndex, HttpSession ses) {
	        System.out.println("new_content(): multipart..");
	        System.out.println("multi-file upload 몇개 파일: " + imgPath.size());

	        ModelAndView mav = new ModelAndView();

	        String realPath = ses.getServletContext()
	                .getRealPath(
	                    IFileManageSVC.DEF_UPLOAD_DEST_PATH + "/");
	        System.out.println("ctrl: realpath = " + realPath);

	        HashMap<String, Object> rMap = // 멀티 파일 업로드 with 정보
	        this.fileSvc.writeMultipleUploadFilesWithInfo(
	                        imgPath, realPath, ses);
	        //String filePath = (String) rMap.get("filePath"); // null
	        String filePath = (String) rMap.get("filePaths"); // 다수개..경로
	        double totalMB = (double) rMap.get("totalMB");
	        int countFiles = (int) rMap.get("countFiles");

	        int atRetKey = ctSvc.insertNewCommunityReturnKey2(
	                new CommunityVO(cate, title, content, filePath, memberIndex)); // psc-kh 방식

	        if( atRetKey > 0 ) { // pk id값이 양의 정수 정상값...
	            System.out.println("신규 게시글 등록 성공 id: " + atRetKey);
	            //mav.setViewName("redirect:article_list.my"); //RE
	            mav.addObject("countFiles", countFiles); // ui에 정보 공유
	            //mav.addObject("totalMB", totalMB);// ui에 정보 공유
	            mav.addObject("totalMB", 
	                    String.format("%.2f", totalMB));// ui에 정보 공유
	            mav.setViewName("redirect:content.woo");
	        } else {
	            System.out.println("신규 게시글 등록 실패!");
	            mav.setViewName("community/new_content.woo"); // FW
	        }
	        return mav;
	    }

	@RequestMapping(value = "/list.my",	method = RequestMethod.GET)
	public String answerListAllProc(Model model, 
			@RequestParam(value ="boardId", required = false, defaultValue = "0") int boardIndex) {
		
		List<CommentVO> asList = null; 
		if( boardIndex == 0 ) //전체댓글 리스트
			System.out.println("잘못된 접근");
		else 
			asList = CommentSVC.CommentListForBoard(boardIndex);
					// 특정 게시글에 종속된 전체 댓글 리스트
		if( asList != null ) {
			int asSize = asList.size();
			model.addAttribute("asSize", asSize);
			model.addAttribute("asList", asList);
			if( boardIndex != 0 )	model.addAttribute("atId", boardIndex);
			// 댓글 리스트뷰를 포함한 게시글 상세보기로 이동
			return "content_view.woo";
		} else {
			if( boardIndex != 0 )	{
				model.addAttribute("msg", "댓글 리스트 조회 실패!");
				return "redirect:content_view.woo?BoardId="+boardIndex; 
			}	else {	
				model.addAttribute("msg", "전체댓글 리스트 조회 실패!");
				return "redirect:content_view.woo"; // ?
			}
		}
	}
	   
	 @RequestMapping(value = "/Writecomment.woo", method = RequestMethod.POST)
		public String commentAddProc(HttpSession ses, Model model,
				RedirectAttributes rdAttr,
				CommentVO CVO) {
				System.out.println("CV = " + CVO);
		
		   int asId = CommentSVC.Writecomment(CVO);
			if( asId > 0  ) {
				rdAttr.addFlashAttribute("msgrd", "방금 추가된 댓글 PK: " + asId);
				return "redirect:/content_view.woo?atId="+CVO.getboardIndex();
				// atId번 게시글의 상세페이지에서 함께 댓글리스트를 표시
			} else {
				System.out.println("댓글 등록 실패!");
				model.addAttribute("msg", "댓글 등록 실패!");
				model.addAttribute("member", 
						mbSvc.selectOneMember(CVO.getmemberIndex()));
				return "answer/as_new_form";
			}
		}	  
	   
	   
	 @RequestMapping(value = "/retouch_comment.woo", method = RequestMethod.GET)
		public String retouch(HttpSession ses, Model model,
				@RequestParam(value = "commentId") int commentIndex, 
				@RequestParam(value = "memberId") int memberIndex,
				@RequestParam(value = "boardId") int boardIndex, 
				RedirectAttributes rdAttr) {
		int sesMbId = (int)ses.getAttribute("mbPKId");
		if( sesMbId == memberIndex ) { // 댓글 작성자 인증
			CommentVO cv = CommentSVC.selectOneComment(commentIndex);
			List<MemberVO> mbLoginList = mbSvc.takeAllMember();
			if( cv != null ) {
				model.addAttribute("cv", cv);
				MemberVO mb = mbSvc.selectOneMember(memberIndex);
				model.addAttribute("member", mb);
				return "community/content_view";
			} else {
				rdAttr.addFlashAttribute("msgrd", "as 편집폼 준비 실패: db error~!");
				return "community:/content_view.woo?boardId="+ boardIndex;
			}
		} else {
			rdAttr.addFlashAttribute("msgrd", "as 편집폼 준비 실패: 댓글 작성자 불일치");
			return "community:/content_view.woo?boardId="+ boardIndex;
		}		
	}
	   
	   @RequestMapping(value = "/Deletecomment.woo", method = RequestMethod.POST)
	   public String deleteCommentProc(HttpSession ses, Model model,
			   @RequestParam(value = "commentId") int commentIndex, 
			   @RequestParam(value = "memberId") int memberIndex,
			   @RequestParam(value = "boardId") int boardIndex ) {
		   ModelAndView mav = new ModelAndView();
		   CommentVO myComment = CommentSVC.selectOneComment(commentIndex);
		   boolean asId = CommentSVC.deleteComment(myComment.getcommentIndex());
		   if( asId ) {
			   return "redirect:/community_view.woo?atId="+myComment.getboardIndex();
			   // atId번 게시글의 상세페이지에서 함께 댓글리스트를 표시
		   } else {
			   System.out.println("댓글 삭제 실패!");
			   model.addAttribute("msg", "댓글 삭제 실패!");
			   model.addAttribute("member", 
					   mbSvc.selectOneMember(myComment.getmemberIndex()));
			   return "redirect:/community_view.woo?atId="+myComment.getboardIndex();
		   }
	   }
	   
	   @RequestMapping(value = "content_view.woo", method = RequestMethod.GET)
	 	//>>>>>>> branch 'master' of https://github.com/zzea-zzea/JavaSpringPro_wooltari.git
	 		public String ContentViewProc(int atId, HttpSession ses, Model model) {
	 			CommunityVO ct = ctSvc.selectOneCommunity(atId);
	 			String ctFilePath = ct.getImg_path();
	 			
	 			String fps[] = null;
	 			int fpCount = -1;
	 			if(ctFilePath != null && !ctFilePath.isEmpty()) {
	 				if( ctFilePath.indexOf(IFileManageSVC.MULTI_FILE_SEP) != -1 ) {
	 					fps = ctFilePath.split("\\|"); // 더블 이스케이프!!
	 							// |는 정규식 기호 임.. 
	 							// \|로 보내야 정규식에서 그냥 문자로써의 |
	 					fpCount = fps.length; // 2개이상의 파일경로들
	 				} else {
	 					fpCount = 1; // 단 1개가 구분자없이 파일경로 하나.
	 					fps = new String[] { ctFilePath };
	 				}
	 				model.addAttribute("fps", fps);
	 			} else {
	 				fpCount = 0;
	 			}
	 			model.addAttribute("fpCount", fpCount);
	 			
	 			if(ct != null) {
	 				model.addAttribute("community", ct); // vo el 속성화..
	 				
	 				List<CommentVO>	coList = CommentSVC.CommentListForBoard(atId);
	 				// 특정 게시글에 종속된 전체 댓글 리스트
	 				if( coList != null ) {
	 					int asSize = coList.size();
	 					model.addAttribute("asSize", asSize);
	 					model.addAttribute("asList", coList);
	 					model.addAttribute("atId", atId);
	 				} else {
	 					model.addAttribute("msg", "게시글 종속 댓글 조회실패");
	 				}
	 				return "community/content_view"; //fw + _as_list.jsp 조각을 포함
	 				
	 			} else {
	 				return "redirect:content.woo"; //re
	 			}
	 		}
	
	@RequestMapping(value = "retouch_content.woo", method = RequestMethod.GET)
	public String RetouchContent(Model model, HttpSession ses, 
			@RequestParam(value = "atId", 
			defaultValue = "0") int id) {
		if(id == 0) {
			return "redirect:content.woo";
		}
		CommunityVO ct = ctSvc.selectOneCommunity(id);
		if(ct != null) {
//		 	게시글 작성자 본인이 맞는지? 인증체크? 세션?
			// 세션에 로그인mbPKId == 해당 게시글의 fk memberId 일치.. 
			int writerId = ct.getMember_index(); // 글쓴사람 <<FK>>
			int mbPKId = (Integer)ses.getAttribute("mbPKId");
			// 세션인증사람 <<PK>>
			if( writerId == mbPKId ) { // 글쓴이 본인이 로그인 중 맞음
				model.addAttribute("community", ct);
				model.addAttribute("msg","게시글 편집 폼 준비 성공 : "+id);
				return "community/retouch_content"; //FW
			} else {
				System.out.println("게시글 편집 폼 준비 실패: 게시글 작성자가 아님! - " +id);
				return "redirect:content_view.woo?atId="+id;
			}
		} else {
			System.out.println("게시글 편집 폼 준비 실패: 게시글을 찾을 수 없음 - " +id);
			return "redirect:content_view.woo?atId="+id;
		}
	}
	
	 

	
	@RequestMapping(value = "delete.woo", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "atId", 
			defaultValue = "0") int id) {
		ctSvc.deleteCommunity(id);
		return "redirect:content.woo";
	}
		
		
	
			
	
	
	
	@RequestMapping(value = "community_update.woo",
			method = RequestMethod.POST)
	public String articleUpdateProc( HttpSession ses, Model model,
			@ModelAttribute(value = "community") CommunityVO ct
			// + 파람도 받고, 모델에 속성공유도 동시에.. 그것도..
			// article이란 속성명으로 해준다.
//			ArticleVO at // articleVO 기본 속성명.. 
				// vo같은 객체(Command객체)를 통해 
				// 다수 개의 파람들을 하나로 묶어서
				// 요청으로부터 입력 받을 수 있음 
			) {
			// 작성자가 또 맞는지?
			int writerId = ct.getMember_index(); // 글쓴사람 <<FK>>
			int mbPKId = (Integer)ses.getAttribute("mbPKId");
									// 세션인증사람 <<PK>>
			if( writerId != mbPKId ) { // 글쓴이 본인이 아님!!!
				System.out.println("\"게시글 갱신 실패: 작성자 본인 아님!!" + ct.getMember_index());
				return "redirect:content_view.woo?atId="+ ct.getMember_index();
			}
			
			System.out.println("article_update vo3커맨드객체: " + ct);
			
			// svc/ dao
//			boolean b = atSvc.updateArticle(at); 
				// 커맨드요청입력객체를 그대로 서비스로 전달
			int b = ctSvc.updateCommunity(ct);
			// 분기..
			//if( b ) {
			model.addAttribute("b", b); // 리턴 코드값
			if( b == 1 ) { // OK 1
				model.addAttribute("msg","게시글 갱신 성공: " + ct.getBoard_index());
				return "redirect:content_view.woo?atId=" + ct.getBoard_index();
					
			} else {
				System.out.println("게시글 갱신 실패: " + ct.getBoard_index());
				return "community/retouch_content"; // FW	
			}
	}	
	

	
	@RequestMapping(value = "new_notice.woo", method = RequestMethod.GET)
	public ModelAndView NewNotice(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("notice/new_notice");
		return mav;
	}

	@RequestMapping(value = "notice_view.woo", method = RequestMethod.GET)
	public ModelAndView NoticeView(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("notice/notice_view");
		return mav;
	}

	@RequestMapping(value = "retouch_notice.woo", method = RequestMethod.GET)
	public ModelAndView Retouch_Notice(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("notice/retouch_notice");
		return mav;
	}


	@RequestMapping(value = "endsupport.woo", method = RequestMethod.GET)
	public ModelAndView EndSupport(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("support/endsupport");
		return mav;
	}

	@RequestMapping(value = "support.woo", method = RequestMethod.GET)
	public ModelAndView Support(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("support/support");
		return mav;
	}

	@RequestMapping(value = "support_info.woo", method = RequestMethod.GET)
	public ModelAndView SupportInfo(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("support/support_info");
		return mav;
	}

	@RequestMapping(value = "login.woo", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("login/login");

		return mav;
	}
	

	@RequestMapping(value = "member_login.woo", method = RequestMethod.POST)
	public ModelAndView memberLoginProc(HttpSession ses, String id, String pw) {
		System.out.println("memberLoginProc()..: login = " + id + ", pw = " + pw);

		ModelAndView mav = new ModelAndView();

		int loginResult = mbSvc.loginProcess(id, pw);

		if (loginResult == mycode.MB_LOGIN_OK) { // 로그인 인증 성공..
			System.out.println("로그인 인증 성공: " + id);

			ses.setAttribute("mbLoginName", id); // 로그인명을 기억.. <<UQ>>
			MemberVO mb = mbSvc.selectOneMember(id);
			ses.setAttribute("mbPKId", mb.getMemberIndex()); // <<PK>> id 기억...

			// 임시로... member_list.my Redirect.
			mav.setViewName("redirect:main.woo");

		} else { // 로그인 인증 실패...
			String errMsg = mycode.LOGIN_MSGS[loginResult];
			mav.addObject("msg", "ERROR: " + errMsg);
			mav.setViewName("login/login");
			// mb_login_form.jsp로 Forward
		}
		return mav;
	}

	@RequestMapping(value = "member_findid.woo", method = RequestMethod.POST)
	public ModelAndView memberFindIdProc(HttpServletRequest request) {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		HttpSession ses = request.getSession();
		
	
		
		System.out.println("memberFindIdProc().. : name = " + name + ", email = " + email);

		ModelAndView mav = new ModelAndView();
		MemberVO vo = mbSvc.findidMember(name, email);

		if (vo != null) {
			System.out.println(vo.getId());
			mav.addObject("vo", vo);
			mav.setViewName("redirect:main.woo");
		} else {
			System.out.println("널 !");
			mav.setViewName("login/login");
		}

		return mav;
	}

	@RequestMapping(value = "member_findpw.woo", method = RequestMethod.POST)
	public ModelAndView memberFindPwProc(HttpServletRequest request) {

		String id = request.getParameter("id");
		String email = request.getParameter("email");
		HttpSession ses = request.getSession();
		
		ses.setAttribute("id", id);
		ses.setAttribute("email", email);

		System.out.println("memberFindIdProc().. : id = " + id + ", email = " + email);

		ModelAndView mav = new ModelAndView();
		MemberVO vo = mbSvc.findpwMember(id, email);
  
		if (vo != null) {
			System.out.println(vo.getPw());
			mav.addObject("vo", vo);
			mav.setViewName("redirect:member_updatepw.woo");
		} else {
			System.out.println("널 !");
			mav.setViewName("login/login");
		}

		return mav;
	}

	@RequestMapping(value = "member_updatepw.woo", method = RequestMethod.POST)
	public ModelAndView memberupdatePwProc(HttpServletRequest request, HttpSession ses) {
		String pw = request.getParameter("pw");
		String id = (String) ses.getAttribute("id");
		String email = (String) ses.getAttribute("email");
		
		System.out.println("memberFindIdProc().. : pw = " + pw);

		ModelAndView mav = new ModelAndView();
		MemberVO mb = new MemberVO(id, pw, email);
		mbSvc.updateMemberPw(mb);
		
			System.out.println(mb.getPw());
			System.out.println(mb.getId());
			System.out.println(mb.getEmail());
			mav.addObject("mb", mb);
//			mav.setViewName("redirect:login.woo");
			
		return mav;
	}

	@RequestMapping(value = "sign_up.woo", method = RequestMethod.GET)
	public ModelAndView singup(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView("signup/sign_up");
		return mav;

	}

	
	@RequestMapping(value = "conditions.woo", method = RequestMethod.GET)
	public ModelAndView conditions(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView("signup/terms_and_conditions");
		return mav;

	}
	@RequestMapping(value = "member_join.woo", method = RequestMethod.POST)

	public ModelAndView memberJoinProc(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
//		String phone = request.getParameter("phone");
		String phone = "01023654127";
		String brith = request.getParameter("brith");
		String nickName = request.getParameter("nickname");
		String genderStr = request.getParameter("gender");
//		int gender = 1;
//		if (genderStr != null && !genderStr.isEmpty())
//			gender = Integer.parseInt(genderStr);
		int gender = 1;
		String email = request.getParameter("email");
		String isMemberStr = request.getParameter("ismember");
		int isMember = 1;
//		if (isMemberStr != null && !isMemberStr.isEmpty())
//			isMember = Integer.parseInt(isMemberStr);
//		String buisness = request.getParameter("buisness");
		String buisness = null;

		HttpSession ses = request.getSession();

		ModelAndView mav = new ModelAndView();

		// 로그인중복
//		if (id != null && !id.isEmpty()) {
//			boolean dup = this.mbSvc.idchackMember(id);
//			if (dup) {
//				// 이미 사용중인 login...
//				System.out.println("회원 가입 실패: login 중복!!! + " + id);
//				mav.setViewName("signup/sign_up"); // FW
//				return mav;
//			}
//		} else {
//			System.out.println("회원 가입 실패: login 파람 에러!");
//			mav.setViewName("signup/sign_up"); // FW
//			return mav;
//		}

		// 별명중복
//		if (nickName != null && !nickName.isEmpty()) {
//			boolean dup = this.mbSvc.nickchackMember(nickName);
//			if (dup) {
//				System.out.println("회원 가입 실패: login 중복!!! + " + nickName);
//				mav.setViewName("signup/sign_up"); // FW
//				return mav;
//			}
//		} else {
//			mav.addObject("msg", "회원 가입 실패: login 파람 에러!");
//			System.out.println("회원 가입 실패: login 파람 에러!");
//			mav.setViewName("signup/sign_up"); // FW
//			return mav;
//		}
		MemberVO mb = new MemberVO(id, pw, name, phone, brith, nickName, gender, email, isMember, buisness);
		boolean b = mbSvc.insertNewMember(mb);
		System.out.println(mb);
		if (b) {
			if (fileSvc.makeMemberDirectory(id, ses)) {
				System.out.println("회원 DB 가입 성공!! 축하~~~^^");
				mav.setViewName("redirect:login.woo"); 
			} else {
			
				System.out.println("회원 DB 가입 성공!! 축하지만.. 폴더생성 실패!");
				mav.setViewName("redirect:login.woo"); 
			}
		} else {
	
			System.out.println("회원 가입 실패: DB 에러!");
			mav.setViewName("signup/sign_up"); // FW
		}

		return mav;
	}

	@RequestMapping(value = "mypage.woo", method = RequestMethod.GET)
	public ModelAndView Mypage(HttpServletRequest request, int mbId) {
		ModelAndView mav = new ModelAndView("mypage/mypage");

		
		return mav;
	}
	
	
	@RequestMapping(value = "mypage_sup.woo", method = RequestMethod.GET)
	public ModelAndView MypageSupport(HttpSession ses, Model model,
			   HttpServletRequest request) {
		int memberIndex = Integer.parseInt(request.getParameter("mbId"));
		ModelAndView mav = new ModelAndView();
		System.out.println("mbId = " + memberIndex);
		List<SupportVO> userSpList = SupportSVC.oneUserSupport(memberIndex);
		mav.addObject("userSpList", userSpList);
		for (int i = 0; i < userSpList.size(); i++) {
			System.out.println(userSpList.get(i));
		}
		mav.setViewName("mypage/mypage_sup");
		return mav;
	}

	@RequestMapping(value = "mypage_boa.woo", method = RequestMethod.GET)
	public ModelAndView MypageBoard(HttpSession ses, Model model,
			   HttpServletRequest request) {
		
		int memberIndex = Integer.parseInt(request.getParameter("mbId"));
		ModelAndView mav = new ModelAndView();
		System.out.println("mbId = " + memberIndex);
		List<CommunityVO> userCtList = ctSvc.selectAllCommunitysForMember(memberIndex);
		model.addAttribute("ct", userCtList); 
		mav.addObject("userCtList", userCtList);
		mav.setViewName("mypage/mypage_boa");
		return mav;
	}

//	@RequestMapping(value = "donate_main.woo", method = RequestMethod.GET)
//	public ModelAndView DonateMain(HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView("support/donate_main");
//		return mav;
//	}
}
