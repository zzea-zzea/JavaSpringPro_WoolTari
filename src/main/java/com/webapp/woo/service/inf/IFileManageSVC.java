package com.webapp.woo.service.inf;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public interface IFileManageSVC {
	// 기본 파일 업로드의 목적(destination대상) 폴더	
	String DEF_UPLOAD_DEST_PATH = "/uploads";
	// 업로드 파일 접두어
	String DEF_UPLOAD_PREFIX = "WOOLTARI_";
	// 다수 파일경로 구분자
	String MULTI_FILE_SEP = "|"; //","
	
	// 실제 서버에 파일을 업로드 하고 실제 파일 경로명을 리턴하는 함수
	// : 멀티파트 파일데이터, 파일업로드 기준물리폴더, 세션 정보를 받아서..
	//   실제 서버의 물리경로에 정책을 따라서 파일 저장 처리를 완료한 후..
	//   최종 물리경로를 리턴(filePath) => articles TBL, VO.
	String writeUploadFile(MultipartFile upfile, 
					String realPath, HttpSession ses);
	
	// 회원 가입 성공 시 계정명으로 고유한 해당 
	// 회원 전용 업로드 폴더 생성하기
	boolean makeMemberDirectory(String id, HttpSession ses);
	
	// 시간/타임스탬프 - 파일 네이밍정책에 따라 고유한 파일명 만들기
	String prepareUniqueFilename(String originFilename);
	
	// 랜덤ID + 시간/타임스탬프 - 파일 네이밍정책에 따라 고유한 파일명 만들기
	String prepareUniqueFilename2(String originFilename);

	// 다수개 (다중) 파일 업로드 (일괄 배치 처리)
	String writeMultipleUploadFiles(List<MultipartFile> upfiles, String realPath, HttpSession ses);
	
	// 다수개 (다중) 파일 업로드/ 볼륨,개수 정보 표시 (일괄 배치 처리)
	HashMap<String, Object> writeMultipleUploadFilesWithInfo(List<MultipartFile> upfiles, String realPath, HttpSession ses);
}


