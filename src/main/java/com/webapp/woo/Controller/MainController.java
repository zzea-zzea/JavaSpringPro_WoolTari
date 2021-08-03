package com.webapp.woo.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
	


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
	
	@RequestMapping(value = "sign_up.woo", method = RequestMethod.GET)
	public ModelAndView singup(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("signup/sign_up");
		return mav;
	}
		
	
	@RequestMapping(value = "mypage.woo", method = RequestMethod.GET)
	public ModelAndView Mypage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("mypage/mypage");
		return mav;
	}

//	@RequestMapping(value = "donate_main.woo", method = RequestMethod.GET)
//	public ModelAndView DonateMain(HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView("support/donate_main");
//		return mav;
//	}
}