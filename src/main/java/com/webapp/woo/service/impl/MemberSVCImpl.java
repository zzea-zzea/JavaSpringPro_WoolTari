package com.webapp.woo.service.impl;

import com.webapp.woo.model.vo.MemberVO;
import com.webapp.woo.service.inf.IMemberSVC;

public class MemberSVCImpl implements IMemberSVC {

	@Override
	public boolean JoinLogin(String userId, String userPw) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberVO FindUserId(String userName, String Email, int isMember) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO FindPw(String userName, String Email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO NewPassword(String UserPw) {
		// TODO Auto-generated method stub
		return null;
	}

}
