package com.webapp.woo.model.dao.inf;

import com.webapp.woo.model.vo.MemberVO;

public interface IMemberDAO {

	// 로그인
		boolean JoinLogin(String userId, String userPw);
		
		//  아이디 찾기
		MemberVO FindUserId(String userName, String Email, int isMember);
		
		
		// 비밀번호 찾기
		MemberVO FindPw(String userName, String Email);
		
		
		// 새비밀번호 변경
		MemberVO NewPassword(String UserPw);
}
