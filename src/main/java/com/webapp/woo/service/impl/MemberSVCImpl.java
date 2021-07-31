package com.webapp.woo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.webapp.woo.mycode;
import com.webapp.woo.model.dao.inf.IMemberDAO;
import com.webapp.woo.model.vo.MemberVO;
import com.webapp.woo.service.inf.IMemberSVC;

public class MemberSVCImpl implements IMemberSVC {

	@Autowired
	IMemberDAO mbDao;
	
	@Override
	public boolean insertNewMember(MemberVO mb) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean idchackMember(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean nickchackMember(String nickName) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int loginProcess(String id, String pw) {
		System.out.println("SVC: 로그인시도중");
		if( id == null || id.isEmpty() )
			return mycode.MB_LOGIN_NULL_EMPTY;
		if( pw == null || pw.isEmpty() )
			return mycode.MB_PW_NULL_EMPTY;
		
		MemberVO mb = mbDao.selectOneMember(id);
		if( mb == null ) {
			System.out.println("SVC: " + id + " 회원이 없음!");
	
		return mycode.MB_LOGIN_NOT_FOUND;
		}
		String dbPW = mbDao.decryptPassword(id);
		if( dbPW.equals(pw) ) {
			// 인증성공 상태...
			return mycode.MB_LOGIN_OK;
		} else 
			return mycode.MB_PW_MISMATCH;
		
		
		
	}

	@Override
	public boolean findidMember(String name, String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean findpwMember(String name, String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateOneMember(MemberVO mb) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String decryptPassword(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO selectOneMember(int MemberIndex) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO selectOneMember(String ld) {
		// TODO Auto-generated method stub
		return null;
	}

}
