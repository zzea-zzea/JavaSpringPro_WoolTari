package com.webapp.woo.service.impl;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.webapp.woo.service.inf.IFileManageSVC;
@Service
public class FileManageImpl implements IFileManageSVC {

	
		// login명의 고유 전용업로드 폴더 생성
		@Override
		public boolean makeMemberDirectory(String id, HttpSession ses) {
			if( id != null && id.isEmpty() == false ) {
				String realPath = 
						ses.getServletContext().getRealPath( 
						DEF_UPLOAD_DEST_PATH + "/" + id);
				System.out.println(">> 가입완료한 회원의 고유폴더: " 
							+ realPath);
				try {
					File userFolder = new File(realPath);
					// userFolder.exists() // 이미 생성된 경우?
//					userFolder.setWritable(true);
//					if( userFolder.canWrite() == true )
						return userFolder.mkdir(); // 디렉터리 실시간 생성
//					else {
//						System.out.println(">> read only 같음...");
//						return false;
//					}
				//} catch (IOException | Exception e) {
				} catch (SecurityException e) {
					System.out.println(">> filesvc: 폴더 생성 권한/보안 에러!");	
				} catch (Exception e) {
					System.out.println(">> filesvc: 폴더 생성 일반에러!");
				}
			}
			return false;
		}

		@Override
		public String writeUploadFile(MultipartFile upfile, String realPath, HttpSession ses) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public String prepareUniqueFilename(String originFilename) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public String prepareUniqueFilename2(String originFilename) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public String writeMultipleUploadFiles(List<MultipartFile> upfiles, String realPath, HttpSession ses) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public HashMap<String, Object> writeMultipleUploadFilesWithInfo(List<MultipartFile> upfiles, String realPath,
				HttpSession ses) {
			// TODO Auto-generated method stub
			return null;
		}

		
}
