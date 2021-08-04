package com.webapp.woo;

public class mycode {
	// 로그인 인증 관련 상수 정의
	public static final int MB_LOGIN_ERROR = 0;
	public static final int MB_LOGIN_OK = 1;
	public static final int MB_LOGIN_NOT_FOUND = 2;
	public static final int MB_LOGIN_NULL_EMPTY = 3;
	public static final int MB_PW_NULL_EMPTY = 4;
	public static final int MB_PW_MISMATCH = 5;
	
	
	public static final int FIND_ERROR = 1;
	public static final int FIND_SUCCESS = 2;
	public static final int FIND_NULL = 3;
	public static final int PHN_MISMATCH = 4;
	public static final int LOGIN_ERROR = 5;
	
	public static final String[] LOGIN_MSGS = {
		"아이디찾기 일반 에러", "아이디찾기 성공!", 
		"아이디  없음", "로그인 파람 에러",
		"패스워드 파람 에러", "패스워드 불일치"
	};
}
