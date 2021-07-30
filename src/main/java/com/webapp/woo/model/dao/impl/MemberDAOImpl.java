package com.webapp.woo.model.dao.impl;

//@Repository 자동빈 등록 

import org.springframework.stereotype.Repository;

import com.webapp.woo.model.dao.inf.IMemberDAO;
import com.webapp.woo.model.vo.MemberVO;
@Repository 
public class MemberDAOImpl implements IMemberDAO {

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
