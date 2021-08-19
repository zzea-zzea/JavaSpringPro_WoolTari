package com.webapp.woo.model.dao.inf;

import java.util.List;

import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.MemberVO;

public interface IMemberDAO {
   // 회원 스키마 중개...

   // - 가입 할 수 있다. (패스워드 암호화/저장)
   boolean insertNewMember(MemberVO mb); // 비암호화 버젼

   // - 로그인명 중복체크 할 수 있다.
   boolean idchackMember(String id);

   // - 별명 중복체크 할 수 있다.
   boolean nickchackMember(String nickName);
   
// - 별명 중복체크 할 수 있다.
   boolean emailchackMember(String email);

   // - 로그인 할 수 있다. (세션, 암호화 인증)
   String decryptPassword(String id);// 패스워드를 암호화 풀어서 리턴

   String decryptPassword(int mbId); // 패스워드를 암호화 풀어서 리턴
   
   MemberVO loginAdmin(String id, String pw);

   // 아이디를 찾을 수 있다.
   MemberVO findidMember(String name, String email);

   // 비밀번호를 찾을 수 있다.
   MemberVO findpwMember(String id, String email);

   // 비밀번호를 변경할 수 있다.
   boolean updateMemberPw(MemberVO mb); // 암호화

   // 멤버 조회
   MemberVO selectOneMember(int MemberIndex);

   MemberVO selectOneMember(String id);

   MemberVO selectOneMemberEmail(String email);

   boolean updateOneMember(MemberVO mb);
   
   boolean selectOneMembdr(String id);
   
   // 모든 멤버 가져오기
   List<MemberVO> allMember();
      
   // 한 멤버에 주민번호 등록
   boolean inputnumMember(int memberId, String numMember);
   
   public boolean deleteMember(int memberId);
}