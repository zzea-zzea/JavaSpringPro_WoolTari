package com.webapp.woo.service.inf;

import java.util.List;

import com.webapp.woo.model.vo.MemberVO;

public interface IMemberSVC {
	// 회원 스키마 중개...

	// - 가입 할 수 있다. (패스워드 암호화/저장)
	boolean insertNewMember(MemberVO mb);

	// - 로그인명 중복체크 할 수 있다.
	boolean idchackMember(String id);

	// - 별명 중복체크 할 수 있다.
	boolean nickchackMember(String nickName);

	// - 로그인 할 수 있다. (세션, 암호화 인증)
	int loginProcess(String id, String pw);// 패스워드를 암호화 풀어서 리턴
	String decryptPassword(String id);// 패스워드를 암호화 풀어서 리턴

	// 아이디를 찾을 수 있다.
	MemberVO findidMember(String name, String email);

	// 비밀번호를 찾을 수 있다.
	MemberVO findpwMember(String id, String email);

	// 비밀번호를 변경할 수 있다.
	boolean updateMemberPw(MemberVO mb); // 암호화
	
	// 멤버 조회
			MemberVO selectOneMember(int MemberIndex);
			MemberVO selectOneMember(String ld);
			MemberVO selectOneMemberEmail(String email);
			
	// 전체 멤버 리스트를 가져올 수 있다.
	List<MemberVO> takeAllMember();
}
