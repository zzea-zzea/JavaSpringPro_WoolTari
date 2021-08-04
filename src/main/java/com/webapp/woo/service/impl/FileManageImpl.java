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
		public HashMap<String, Object> writeMultipleUploadFilesWithInfo(
				List<MultipartFile> upfiles, String realPath,
				HttpSession ses) {
			// 정보:  
			//     파일 개수,  파일 총량,  경로합..., 이미지파일%(종류)..
			final String[] IMG_FILES = { ".jpg", ".png", ".gif", ".webp" };
			long totalBytes = 0L; // 바이트 총량..
			int imgCnt = 0;
			StringBuffer filePaths = new StringBuffer(); 
			for (int i = 0; i < upfiles.size(); i++) {
				MultipartFile upfile = upfiles.get(i);
				//
				String oriFile = upfile.getOriginalFilename();
				for (String fmt : IMG_FILES) {
					if( oriFile.toLowerCase().endsWith(fmt) ) {
						imgCnt++; break;
					}
				}
				//	
				totalBytes += upfile.getSize(); // volume
				String singleFP = // signle file path..
					writeUploadFile(upfile, realPath, ses);
				if( singleFP != null ) 
					filePaths.append(singleFP 
							+ ( i < upfiles.size()-1 ? MULTI_FILE_SEP : "") );
				else // null 예외?
					System.out.println(i+"번 파일 업로드 실패함: "
							+ upfile.getOriginalFilename());
			}		
			HashMap<String, Object> rMap = new HashMap<>();
			rMap.put("countFiles", upfiles.size()); // 파일 개수
			rMap.put("filePaths", filePaths.toString()); // 경로묶음
			rMap.put("totalBytes", totalBytes); // 총용량 bytes
			double totalMB = totalBytes / (1024.0*1024.0); // Mega bytes.bytes.
			rMap.put("totalMB", totalMB); // 총용량 MB
			rMap.put("imgFileRatio", ((double)imgCnt/upfiles.size())*100.0);
						// 이미지 파일 비율 %
			return rMap;
		}

}
