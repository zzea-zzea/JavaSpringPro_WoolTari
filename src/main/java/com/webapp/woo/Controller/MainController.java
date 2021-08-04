package com.webapp.woo.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.webapp.woo.mycode;
import com.webapp.woo.model.vo.MemberVO;
import com.webapp.woo.service.inf.IFileManageSVC;
import com.webapp.woo.service.inf.IMemberSVC;

@Controller
public class MainController {

	@Autowired
	IMemberSVC mbSvc;
	@Autowired
	IFileManageSVC fileSvc;

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

	@RequestMapping(value = "info_center.woo", method = RequestMethod.GET)
	public ModelAndView InfoCenter(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("info/info_center");
		return mav;
	}

	@RequestMapping(value = "content.woo", method = RequestMethod.GET)
	public ModelAndView Content(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("community/content");
		return mav;
	}

	@RequestMapping(value = "content_view.woo", method = RequestMethod.GET)
	public ModelAndView ContentView(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("community/content_view");
		return mav;
	}

	@RequestMapping(value = "retouch_content.woo", method = RequestMethod.GET)
	public ModelAndView RetouchContent(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("community/retouch_content");
		return mav;
	}

	@RequestMapping(value = "new_content.woo", method = RequestMethod.GET)
	public ModelAndView NewContent(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("community/new_content");
		return mav;
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

	@RequestMapping(value = "donate_type.woo", method = RequestMethod.GET)
	public ModelAndView DonateType(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("support/donate_type");
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
			ses.setAttribute("mbPKId", mb.getId()); // <<PK>> id 기억...

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
	public ModelAndView Mypage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("mypage/mypage");
		return mav;
	}
	
	@RequestMapping(value = "mypage_sup.woo", method = RequestMethod.GET)
	public ModelAndView MypageSupport(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("mypage/mypage_sup");
		return mav;
	}

	@RequestMapping(value = "mypage_boa.woo", method = RequestMethod.GET)
	public ModelAndView MypageBoard(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("mypage/mypage_boa");
		return mav;
	}

//	@RequestMapping(value = "donate_main.woo", method = RequestMethod.GET)
//	public ModelAndView DonateMain(HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView("support/donate_main");
//		return mav;
//	}
}
