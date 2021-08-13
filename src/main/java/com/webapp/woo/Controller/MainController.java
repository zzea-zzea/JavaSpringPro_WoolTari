package com.webapp.woo.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@Autowired
	private JavaMailSender mailSender;

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

//   @RequestMapping(value = "content.woo", method = RequestMethod.GET)
//   public ModelAndView Content(HttpServletRequest request) {
//      ModelAndView mav = new ModelAndView("community/content");
//      return mav;
//   }
//   
	// article_search.my; post dao pn order.. pagination
	@RequestMapping(value = "content_search.woo", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView articleSearchProc(
			@RequestParam(value = "target", required = false, defaultValue = "all") String target,
			@RequestParam(value = "keyword", // required=true..
					defaultValue = "test") String k,
			@RequestParam(value = "pg", required = false, defaultValue = "1") int pg
	// @RequestParam(value = "pg") Integer pg
	) {

		System.out.println(">> 검색 키워드: " + k + ", pg: " + pg);

		List<CommunityVO> ctList = ctSvc.searchCommunitys(k, target, pg);
		ModelAndView mav = new ModelAndView();

		if (ctList != null) {
			int ctSize = ctList.size();
			mav.addObject("ctSize", ctSize);
			mav.addObject("ctList", ctList);
			// paginate...
//            int maxPg = atSvc.checkMaxPageNumberForSearch(k, target);  
			// 검색 일치 총 레코드 수
			mav.addObject("pn", pg); // 요청된 검색 페이지 번호

		} else {
			mav.addObject("msg", "게시글 검색 실패: " + k);
		}
		return mav;
	}

	@RequestMapping(value = "info_center.woo", method = RequestMethod.GET)
	public ModelAndView InfoCenter(@RequestParam(value = "si", required = false, defaultValue = "서울") String local_si) {

		List<LocationVO> lovo = LocationSVC.selectAllLocationList(local_si);
		ModelAndView mav = new ModelAndView("info/info_center");
		if (lovo != null) {
			int lovSize = lovo.size();
			mav.addObject("lovo", lovo);
			mav.addObject("lovSize", lovSize);
		} else {
			mav.addObject("msg", "없어 꺼져");
		}
		return mav;
	}

	@RequestMapping(value = "content.woo", method = RequestMethod.GET)
	public ModelAndView contentListProc(
			@RequestParam(value = "pg", required = false, defaultValue = "1") int pageNumber) {
		System.out.println("content() pg...: pg = " + pageNumber);

		int maxPg = ctSvc.checkMaxPageNumber(); // 1~4
		if (pageNumber <= 0 || pageNumber > maxPg) {
			System.out.println(">> 잘못된 페이지 번호 요청 pg: " + pageNumber);
			ModelAndView erMav = new ModelAndView("redirect:content.woo?pg=1");
			erMav.addObject("msg", ">> 잘못된 페이지 번호 요청 pg: " + pageNumber);
			return erMav;
		}
		List<CommunityVO> ctList = ctSvc.selectAllCommunitys(pageNumber);
		ModelAndView mav = new ModelAndView("community/content");// FW
		if (ctList != null) {
			int ctSize = ctList.size(); // 1 ~ 10
			List<String> mbLoginList = new ArrayList<>();
			for (CommunityVO ct : ctList) { // 순서가 유지...
				String mbName = mbSvc.selectOneMember(ct.getMember_index()).getNickName(); // 서브쿼리역할
				mbLoginList.add(mbName);
			}

			mav.addObject("msg", "pg/오리지널-sublists 게시글 리스트 조회 성공!: " + ctSize + "개");
			mav.addObject("ctList", ctList); // 메인 리스트
			mav.addObject("mbLoginList", mbLoginList); // 서브 리스트1 - 계정명
			mav.addObject("ctSize", ctSize);
			mav.addObject("pn", pageNumber);
			mav.addObject("maxPg", maxPg);
		} else {
			mav.addObject("msg", "pg/오리지널-sublists 게시글 리스트 조회 실패! : " + pageNumber);
		}
		return mav;
	}

	@RequestMapping(value = "new_content.woo", method = RequestMethod.GET)
	public ModelAndView NewContent(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("community/new_content");
		return mav;
	}

	@RequestMapping(value = "new_content_add.woo", method = RequestMethod.POST)
	public ModelAndView NewContentProc(int cate, String title, String content, List<MultipartFile> imgPath,
			int memberIndex, HttpSession ses) {
		System.out.println("new_content(): multipart..");
		System.out.println("multi-file upload 몇개 파일: " + imgPath.size());

		ModelAndView mav = new ModelAndView();

		String realPath = ses.getServletContext().getRealPath(IFileManageSVC.DEF_UPLOAD_DEST_PATH + "/");
		System.out.println("ctrl: realpath = " + realPath);

		HashMap<String, Object> rMap = // 멀티 파일 업로드 with 정보
				this.fileSvc.writeMultipleUploadFilesWithInfo(imgPath, realPath, ses);
		// String filePath = (String) rMap.get("filePath"); // null
		String filePath = (String) rMap.get("filePaths"); // 다수개..경로
		double totalMB = (double) rMap.get("totalMB");
		int countFiles = (int) rMap.get("countFiles");

		int atRetKey = ctSvc.insertNewCommunityReturnKey2(new CommunityVO(cate, title, content, filePath, memberIndex)); // psc-kh
																															// 방식

		if (atRetKey > 0) { // pk id값이 양의 정수 정상값...
			System.out.println("신규 게시글 등록 성공 id: " + atRetKey);
			// mav.setViewName("redirect:article_list.my"); //RE
			mav.addObject("countFiles", countFiles); // ui에 정보 공유
			// mav.addObject("totalMB", totalMB);// ui에 정보 공유
			mav.addObject("totalMB", String.format("%.2f", totalMB));// ui에 정보 공유
			mav.setViewName("redirect:content.woo");
		} else {
			System.out.println("신규 게시글 등록 실패!");
			mav.setViewName("community/new_content.woo"); // FW
		}
		return mav;
	}

	@RequestMapping(value = "/Writecomment.woo", method = RequestMethod.POST)
	public String commentAddProc(HttpSession ses, Model model, RedirectAttributes rdAttr, CommentVO CVO) {
		System.out.println("CV = " + CVO);

		int asId = CommentSVC.Writecomment(CVO);
		if (asId > 0) {
			rdAttr.addFlashAttribute("msgrd", "방금 추가된 댓글 PK: " + asId);
			return "redirect:/content_view.woo?atId=" + CVO.getboardIndex();
			// atId번 게시글의 상세페이지에서 함께 댓글리스트를 표시
		} else {
			System.out.println("댓글 등록 실패!");
			model.addAttribute("msg", "댓글 등록 실패!");
			model.addAttribute("member", mbSvc.selectOneMember(CVO.getmemberIndex()));
			return "answer/as_new_form";
		}
	}

	@RequestMapping(value = "/retouch_comment.woo", method = RequestMethod.GET)
	public String retouch(HttpSession ses, Model model, @RequestParam(value = "commentId") int commentIndex,
			@RequestParam(value = "memberId") int memberIndex, @RequestParam(value = "boardId") int boardIndex,
			RedirectAttributes rdAttr) {
		int sesMbId = (int) ses.getAttribute("mbPKId");
		if (sesMbId == memberIndex) { // 댓글 작성자 인증
			CommentVO cv = CommentSVC.selectOneComment(commentIndex);
			if (cv != null) {
				model.addAttribute("cv", cv);
				MemberVO mb = mbSvc.selectOneMember(memberIndex);
				model.addAttribute("member", mb);
				return "community/content_view";
			} else {
				rdAttr.addFlashAttribute("msgrd", "as 편집폼 준비 실패: db error~!");
				return "community:/content_view.woo?boardId=" + boardIndex;
			}
		} else {
			rdAttr.addFlashAttribute("msgrd", "as 편집폼 준비 실패: 댓글 작성자 불일치");
			return "community:/content_view.woo?boardId=" + boardIndex;
		}
	}

	@RequestMapping(value = "/Deletecomment.woo", method = RequestMethod.POST)
	public String deleteCommentProc(HttpSession ses, Model model, @RequestParam(value = "commentId") int commentIndex,
			@RequestParam(value = "memberId") int memberIndex, @RequestParam(value = "boardId") int boardIndex) {
		CommentVO myComment = CommentSVC.selectOneComment(commentIndex);
		boolean asId = CommentSVC.deleteComment(myComment.getcommentIndex());
		if (asId) {
			return "redirect:/community_view.woo?atId=" + myComment.getboardIndex();
			// atId번 게시글의 상세페이지에서 함께 댓글리스트를 표시
		} else {
			System.out.println("댓글 삭제 실패!");
			model.addAttribute("msg", "댓글 삭제 실패!");
			model.addAttribute("member", mbSvc.selectOneMember(myComment.getmemberIndex()));
			return "redirect:/community_view.woo?atId=" + myComment.getboardIndex();
		}
	}

	@RequestMapping(value = "content_view.woo", method = RequestMethod.GET)
	// >>>>>>> branch 'master' of
	// https://github.com/zzea-zzea/JavaSpringPro_wooltari.git
	public String ContentViewProc(int atId, HttpSession ses, Model model) {
		CommunityVO ct = ctSvc.selectOneCommunity(atId);
		String ctFilePath = ct.getImg_path();

		String fps[] = null;
		int fpCount = -1;
		if (ctFilePath != null && !ctFilePath.isEmpty()) {
			if (ctFilePath.indexOf(IFileManageSVC.MULTI_FILE_SEP) != -1) {
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

		if (ct != null) {
			model.addAttribute("community", ct); // vo el 속성화..

			List<CommentVO> coList = CommentSVC.CommentListForBoard(atId);
			// 특정 게시글에 종속된 전체 댓글 리스트
			if (coList != null) {
				int asSize = coList.size();
				model.addAttribute("asSize", asSize);
				model.addAttribute("asList", coList);
				model.addAttribute("atId", atId);
			} else {
				model.addAttribute("msg", "게시글 종속 댓글 조회실패");
			}
			return "community/content_view"; // fw + _as_list.jsp 조각을 포함

		} else {
			return "redirect:content.woo"; // re
		}
	}

	@RequestMapping(value = "retouch_content.woo", method = RequestMethod.GET)
	public String RetouchContent(Model model, HttpSession ses,
			@RequestParam(value = "atId", defaultValue = "0") int id) {
		if (id == 0) {
			return "redirect:content.woo";
		}
		CommunityVO ct = ctSvc.selectOneCommunity(id);
		if (ct != null) {
//          게시글 작성자 본인이 맞는지? 인증체크? 세션?
			// 세션에 로그인mbPKId == 해당 게시글의 fk memberId 일치..
			int writerId = ct.getMember_index(); // 글쓴사람 <<FK>>
			int mbPKId = (Integer) ses.getAttribute("mbPKId");
			// 세션인증사람 <<PK>>
			if (writerId == mbPKId) { // 글쓴이 본인이 로그인 중 맞음
				model.addAttribute("community", ct);
				List<String> mbLoginList = new ArrayList<>();

				String mbName = mbSvc.selectOneMember(ct.getMember_index()).getNickName(); // 서브쿼리역할
				mbLoginList.add(mbName);
				model.addAttribute("mbLoginList", mbLoginList);
				return "community/retouch_content"; // FW
			} else {
				System.out.println("게시글 편집 폼 준비 실패: 게시글 작성자가 아님! - " + id);
				return "redirect:content_view.woo?atId=" + id;
			}
		} else {
			System.out.println("게시글 편집 폼 준비 실패: 게시글을 찾을 수 없음 - " + id);
			return "redirect:content_view.woo?atId=" + id;
		}
	}

	@RequestMapping(value = "delete.woo", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "atId", defaultValue = "0") int id) {
		ctSvc.deleteCommunity(id);
		return "redirect:content.woo";
	}

	@RequestMapping(value = "community_update.woo", method = RequestMethod.POST)
	public String articleUpdateProc(HttpSession ses, Model model, @ModelAttribute(value = "community") CommunityVO ct
	// + 파람도 받고, 모델에 속성공유도 동시에.. 그것도..
	// article이란 속성명으로 해준다.
//         ArticleVO at // articleVO 기본 속성명.. 
	// vo같은 객체(Command객체)를 통해
	// 다수 개의 파람들을 하나로 묶어서
	// 요청으로부터 입력 받을 수 있음
	) {
		// 작성자가 또 맞는지?
		int writerId = ct.getMember_index(); // 글쓴사람 <<FK>>
		int mbPKId = (Integer) ses.getAttribute("mbPKId");
		// 세션인증사람 <<PK>>
		if (writerId != mbPKId) { // 글쓴이 본인이 아님!!!
			System.out.println("\"게시글 갱신 실패: 작성자 본인 아님!!" + ct.getMember_index());
			return "redirect:content_view.woo?atId=" + ct.getMember_index();
		}

		System.out.println("article_update vo3커맨드객체: " + ct);

		// svc/ dao
//         boolean b = atSvc.updateArticle(at); 
		// 커맨드요청입력객체를 그대로 서비스로 전달
		int b = ctSvc.updateCommunity(ct);
		// 분기..
		// if( b ) {
		model.addAttribute("b", b); // 리턴 코드값
		if (b == 1) { // OK 1
			model.addAttribute("msg", "게시글 갱신 성공: " + ct.getBoard_index());
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

	@RequestMapping(value = "support_end.woo", method = RequestMethod.GET)
	public ModelAndView EndSupport(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("support/support_end");
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

	@RequestMapping(value = "findid.woo", method = RequestMethod.GET)
	public ModelAndView findid(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("login/findid");

		return mav;
	}

	@RequestMapping(value = "findpw.woo", method = RequestMethod.GET)
	public ModelAndView findpw(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("login/findpw");

		return mav;
	}

	@RequestMapping(value = "pw_num.woo", method = RequestMethod.GET)
	public ModelAndView pwnum(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("login/pw_num");

		return mav;
	}

	@RequestMapping(value = "newpw.woo", method = RequestMethod.GET)
	public ModelAndView newpw(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("login/newpw");

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

	@ResponseBody
	@RequestMapping(value = "member_findid.woo", method = RequestMethod.POST)
	public ModelAndView memberFindIdProc(HttpServletResponse response, HttpServletRequest request) throws Exception {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		HttpSession ses = request.getSession();

		System.out.println("memberFindIdProc().. : name = " + name + ", email = " + email);

		ModelAndView mav = new ModelAndView();
		MemberVO vo = mbSvc.findidMember(name, email);

		if (vo.getId() != null) {
			String id = vo.getId();

			mav.setViewName("redirect:login.woo");
		} else {

			mav.setViewName("redirect:findid.woo");
		}
		return mav;
	}

	@RequestMapping(value = "member_findpw.woo")
	public ModelAndView pwauth(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		String id = request.getParameter("id");
		String email = request.getParameter("email");

		MemberVO vo = mbSvc.findpwMember(id, email);
		System.out.println(vo);

		if (vo != null) {
			Random r = new Random();
			int num = r.nextInt(99999999);

			if (vo.getId().equals(id)) {
				session.setAttribute("email", vo.getEmail());

				String setfrom = "jh970221@gmail.com";
				String tomail = request.getParameter("email");
				String title = "안녕하세요 울타리 인증메일입니다.";
				String content = "인증번호는 " + num + " 입니다.";

				try {
					MimeMessage message = mailSender.createMimeMessage();
					MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

					messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
					messageHelper.setTo(tomail); // 받는사람 이메일
					messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
					messageHelper.setText(content); // 메일 내용

					mailSender.send(message);
				} catch (Exception e) {
					System.out.println(e);
				}
				ModelAndView mv = new ModelAndView();
				mv.setViewName("login/pw_num");
				mv.addObject("num", num);
				return mv;
			} else {
				ModelAndView mv = new ModelAndView();
				mv.setViewName("login/findpw");
				return mv;
			}
		} else {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("login/findpw");
			return mv;
		}
	}

	@RequestMapping(value = "/pw_set.woo", method = RequestMethod.POST)
	public String pw_set(@RequestParam(value = "email_injeung") String email_injeung,
			@RequestParam(value = "num") String num) throws IOException {

		if (email_injeung.equals(num)) {

			return "login/newpw";
		} else {

			return "login/findpw";
		}
	}

	@RequestMapping(value = "/pw_new.woo", method = RequestMethod.POST)
	public String memberupdatePwProc(HttpServletRequest request, HttpSession session) throws IOException {

		String email = request.getParameter("email");
		MemberVO vo = mbSvc.selectOneMemberEmail(email);
		String pw = request.getParameter("pw");
		vo.setPw(pw);
		System.out.println(email);
//		vo.setEmail(email);

		boolean result = mbSvc.updateMemberPw(vo);

		System.out.println(pw);
		System.out.println(vo);
		System.out.println(result);

		if (result == true) {
			System.out.println("성공");
			return "login/login";
		} else {
			System.out.println("실패");
			return "login/newpw";
		}
	}

	@RequestMapping(value = "sign_up.woo", method = RequestMethod.GET)
	public ModelAndView singup(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView("signup/sign_up");
		return mav;

	}

	@RequestMapping(value = "member_join.woo", method = RequestMethod.POST)

	public ModelAndView memberJoinProc(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String brith = request.getParameter("brith");
		String nickName = request.getParameter("nickname");
		String genderStr = request.getParameter("gender");
		int gender = 1;
		if (genderStr != null && !genderStr.isEmpty())
			gender = Integer.parseInt(genderStr);
		String email = request.getParameter("email");
		String isMemberStr = request.getParameter("ismember");
		int isMember = 1;
		if (isMemberStr != null && !isMemberStr.isEmpty())
			isMember = Integer.parseInt(isMemberStr);
		String numMember = request.getParameter("nummember");
		String buisness = request.getParameter("buisness");

		HttpSession ses = request.getSession();

		ModelAndView mav = new ModelAndView();

		// 로그인중복
		if (id != null && !id.isEmpty()) {
			boolean dup = this.mbSvc.idchackMember(id);
			if (dup) {
				// 이미 사용중인 login...
				System.out.println("회원 가입 실패: login 중복!!! + " + id);
				mav.setViewName("signup/sign_up"); // FW
				return mav;
			}
		} else {
			System.out.println("회원 가입 실패: login 파람 에러!");
			mav.setViewName("signup/sign_up"); // FW
			return mav;
		}

		// 별명중복
		if (nickName != null && !nickName.isEmpty()) {
			boolean dup = this.mbSvc.nickchackMember(nickName);
			if (dup) {
				System.out.println("회원 가입 실패: login 중복!!! + " + nickName);
				mav.setViewName("signup/sign_up"); // FW
				return mav;
			}
		} else {
			mav.addObject("msg", "회원 가입 실패: login 파람 에러!");
			System.out.println("회원 가입 실패: login 파람 에러!");
			mav.setViewName("signup/sign_up"); // FW
			return mav;
		}
		MemberVO mb = new MemberVO(id, pw, name, phone, brith, nickName, gender, email, isMember, numMember, buisness);
		boolean b = mbSvc.insertNewMember(mb);

		if (b) {
			if (fileSvc.makeMemberDirectory(id, ses)) {
				// DB에 회원가입 로그인 첫페이지로 리다이렉트
				System.out.println("회원 DB 가입 성공!! 축하~~~^^");
				mav.setViewName("redirect:login.woo"); // RE
			} else {
				// 롤백? 할지.... 아니면 에러 안내후.. 수동으로
				// 혹은 후처리로... 고유폴더를 admin..나중에 생성할지..결정
				System.out.println("회원 DB 가입 성공!! 축하지만.. 폴더생성 실패!");
				mav.setViewName("redirect:login.woo"); // RE
				// mav.setViewName("redirect:admin_faq.my"); //RE
			}
		} else {
			// DB에 회원가입이 최종 실패 시... mb_join_form.jsp 포워딩..
			System.out.println("회원 가입 실패: DB 에러!");
			mav.setViewName("signup/sign_up"); // FW
		}

		return mav;
	}

	@RequestMapping(value = "mypage.woo", method = RequestMethod.GET)
	public ModelAndView Mypage(HttpServletRequest request, Model model) {

		String strMbId = request.getParameter("mbId");
		System.out.println(strMbId);

		int mbId = Integer.parseInt(strMbId); // <<PK>>
		System.out.println(mbId);
		MemberVO mb = this.mbSvc.selectOneMember(mbId);
		ModelAndView mav = new ModelAndView();
		System.out.println(mb);
		String userName = mb.getName().substring(9);
		StringBuffer phoneNumber = new StringBuffer();
		phoneNumber.append(mb.getPhone());
		phoneNumber.insert(3, "-");
		phoneNumber.insert(8, "-");
		StringBuffer brithDay = new StringBuffer();
		brithDay.append(mb.getBrith());
		brithDay.insert(4, "년-");
		brithDay.insert(8, "월-");
		brithDay.append("일");
		if (mb != null) {
			mav.addObject("member", mb); // vo객체가 속성화 (EL 객체화)
			mav.addObject("userName", userName);
			mav.addObject("phoneNumber", phoneNumber);
			mav.addObject("brithDay", brithDay);
			// mav.setViewName("mypage"); // FW
			mav.setViewName("mypage/mypage");

		} else { // DAO - Error : EmptyResultDAE/DAE 발생...
			mav.setViewName("redirect:main.woo");
		}

		return mav;
	}

	@RequestMapping(value = "mypage_sumit.woo", method = RequestMethod.POST)
	public ModelAndView MypageSumit(HttpServletRequest request) {
		String pw = request.getParameter("pw");
		String strMbId = request.getParameter("mbId");
		System.out.println(strMbId);

		int mbId = Integer.parseInt(strMbId); // <<PK>>
		System.out.println(mbId);
		MemberVO mb = this.mbSvc.selectOneMember(mbId);
		ModelAndView mav = new ModelAndView();
		if (mb != null) {

			String decrpytedPw = mbSvc.decryptPassword(mb.getId());
			mb.setPw(decrpytedPw); // 암호화 풀림
			System.out.println(mb.getPw() + pw);
			if (mb.getPw().equals(pw)) {
				mav.addObject("member", mb);
				mav.setViewName("mypage/retouch_mypage");
//				mav.addObject("msg", "비밀번호 일치");

			} else {
				mav.addObject("msg", "비밀번호 불일치");
				mav.setViewName("redirect:mypage.woo?mbId=" + mbId);
			}
		} else {
			mav.setViewName("redirect:mypage.woo?mbId=" + mbId);
		}

		return mav;

	}

	@RequestMapping(value = "retouch_mypage.woo", method = RequestMethod.GET)
	public ModelAndView MypageEdutForm(HttpServletRequest request) {
		
		String strMbId = request.getParameter("mbId");
		System.out.println(strMbId);
		int mbId = Integer.parseInt(strMbId); // <<PK>>
		MemberVO mb = mbSvc.selectOneMember(mbId);
		ModelAndView mav = new ModelAndView();
		if (mb != null) {
//			String decrpytedPw = mbSvc.decryptPassword(mb.getId());
//			mb.setPw(decrpytedPw); // 암호화 풀림
			mav.addObject("member", mb);
			mav.setViewName("mypage/retouch_mypage?mbId=" + mbId);
		} else {
			System.out.println("ERROR 회원 편집 준비 실패" + mbId);
			mav.setViewName("redirect:mypage.woo?mbId=" + mbId);
		}

		return mav;
	}

	@RequestMapping(value = "member_update.woo", method = RequestMethod.POST)
	public ModelAndView memberUpdateProc(HttpServletRequest request) {
		// http post 동기 submit 요청...

		// 원래...는... login 등을 사용하여 세션 인증 처리 (권한) 필요..
		int memberIndex = Integer.parseInt(request.getParameter("memberIndex")); // hidden
		//
		String name = request.getParameter("name");
		String nickName = request.getParameter("nickName");
		String id = request.getParameter("id");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String phone = phone1 + phone2 + phone3;
		String pw = request.getParameter("pw");

		MemberVO mb = new MemberVO(memberIndex, id, pw, name, phone, nickName);
		boolean b = this.mbSvc.updateOneMember(mb);
		ModelAndView mav = new ModelAndView();
		//
		if (b) {
			mav.addObject("msg", "회원정보 갱신 성공! - " + id);
			mav.setViewName("redirect:mypage.woo?mbId=" + memberIndex);
		} else {
			mav.addObject("msg", "ERROR: 회원 정보 갱신 실패!! " + memberIndex);
			mav.setViewName("mypage/retouch_mypage"); // FW
		}
		return mav;
	}

	@RequestMapping(value = "mypage_sup.woo", method = RequestMethod.GET)
	public ModelAndView MypageSupport(HttpServletRequest request) {
		
		String strMbId = request.getParameter("mbId");
		System.out.println(strMbId);
		int mbId = Integer.parseInt(strMbId); // <<PK>>
		ModelAndView mav = new ModelAndView();
		System.out.println("mbId = " + mbId);
		List<SupportVO> userSpList = SupportSVC.oneUserSupport(mbId);
		mav.addObject("userSpList", userSpList);
		for (int i = 0; i < userSpList.size(); i++) {
			System.out.println(userSpList.get(i));
		}
		mav.setViewName("mypage/mypage_sup");
		return mav;
	}

	@RequestMapping(value = "mypage_boa.woo", method = RequestMethod.GET)
	public ModelAndView MypageBoard(HttpSession ses, Model model, HttpServletRequest request) {

		String strMbId = request.getParameter("mbId");
		System.out.println(strMbId);
		int mbId = Integer.parseInt(strMbId); // <<PK>>
		ModelAndView mav = new ModelAndView();
		System.out.println("mbId = " + mbId);
		List<CommunityVO> userCtList = ctSvc.selectAllCommunitysForMember(mbId);
		model.addAttribute("ct", userCtList);
		mav.addObject("userCtList", userCtList);
		mav.setViewName("mypage/mypage_boa");
		return mav;
	}

//   @RequestMapping(value = "donate_main.woo", method = RequestMethod.GET)
//   public ModelAndView DonateMain(HttpServletRequest request) {
//      ModelAndView mav = new ModelAndView("support/donate_main");
//      return mav;
//   }
}