package com.webapp.woo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webapp.woo.mycode;
import com.webapp.woo.model.dao.inf.IMemberDAO;
import com.webapp.woo.model.vo.MemberVO;
import com.webapp.woo.service.inf.IMemberSVC;

@Service
public class MemberSVCImpl implements IMemberSVC {

   mycode mc;

   @Autowired
   IMemberDAO mbDao;

   @Override
   public boolean insertNewMember(MemberVO mb) {
      // TODO Auto-generated method stub
      return mbDao.insertNewMember(mb);
   }

   @Override
   public boolean idchackMember(String id) {

      return mbDao.idchackMember(id);
   }

   @Override
   public boolean nickchackMember(String nickName) {

      return mbDao.nickchackMember(nickName);
   }

   @Override
   public int loginProcess(String id, String pw) {
      System.out.println("SVC: 로그인시도중");

      if (id == null || id.isEmpty())
         return mycode.MB_LOGIN_NULL_EMPTY;
      if (pw == null || pw.isEmpty())
         return mycode.MB_PW_NULL_EMPTY;

      MemberVO mb = mbDao.selectOneMember(id);
      if (mb == null) {
         System.out.println("SVC: " + id + " 회원이 없음!");

         return mycode.MB_LOGIN_NOT_FOUND;
      }
      String dbPW = mbDao.decryptPassword(id);
      if (dbPW.equals(pw)) {
         // 인증성공 상태...
         return mycode.MB_LOGIN_OK;
      } else
         return mycode.MB_PW_MISMATCH;

   }

   @Override
   public MemberVO findidMember(String name, String email) {

      return mbDao.findidMember(name, email);
   }

   @Override
   public MemberVO findpwMember(String id, String email) {

      return mbDao.findpwMember(id, email);
   }

   @Override
   public boolean updateMemberPw(MemberVO mb) {
      // TODO Auto-generated method stub
      return mbDao.updateMemberPw(mb);
   }

   @Override
   public String decryptPassword(String id) {
      // TODO Auto-generated method stub
      return mbDao.decryptPassword(id);
   }

   @Override
   public MemberVO selectOneMember(int MemberIndex) {
      // TODO Auto-generated method stub
      return mbDao.selectOneMember(MemberIndex);
   }

   @Override
   public MemberVO selectOneMember(String id) {
      // TODO Auto-generated method stub
      return mbDao.selectOneMember(id);
   }

   @Override
   public MemberVO selectOneMemberEmail(String email) {
      // TODO Auto-generated method stub
      return mbDao.selectOneMemberEmail(email);
   }

   @Override
   public boolean updateOneMember(MemberVO mb) {
      // TODO Auto-generated method stub
      return mbDao.updateOneMember(mb);
   }
   
   @Override
   public boolean selectOneMembdr(String id) {
      // TODO Auto-generated method stub
      return mbDao.selectOneMembdr(id);
   }

   @Override
   public List<MemberVO> allMember() {
      // TODO Auto-generated method stub
      return mbDao.allMember();
   }

   @Override
   public boolean inputnumMember(int memberId, String numMember) {
      // TODO Auto-generated method stub
      return mbDao.inputnumMember(memberId, numMember);
   }

   @Override
   public boolean deleteMember(int mbId) {
      // TODO Auto-generated method stub
      return mbDao.deleteMember(mbId);
   }

@Override
public boolean emailchackMember(String email) {
	// TODO Auto-generated method stub
	return mbDao.emailchackMember(email);
}
}
