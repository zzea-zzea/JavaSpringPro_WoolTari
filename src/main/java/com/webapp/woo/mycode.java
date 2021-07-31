package com.webapp.woo;

public class mycode {
	// 로그인 인증 관련 상수 정의
	public static final int MB_LOGIN_ERROR = 0;
	public static final int MB_LOGIN_OK = 1;
	public static final int MB_LOGIN_NOT_FOUND = 2;
	public static final int MB_LOGIN_NULL_EMPTY = 3;
	public static final int MB_PW_NULL_EMPTY = 4;
	public static final int MB_PW_MISMATCH = 5;
	
	public static final String[] LOGIN_MSGS = {
		"로그인 일반 에러", "로그인 성공!", 
		"로그인 회원 없음", "로그인 파람 에러",
		"패스워드 파람 에러", "패스워드 불일치"
	};
}
