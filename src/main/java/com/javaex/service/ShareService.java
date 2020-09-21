package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.ShareDao;
import com.javaex.vo.ShareVo;

@Service
public class ShareService {

	@Autowired
	private ShareDao shareDao;
	
	//리스트 출력
	public List<ShareVo> getList(int userNo) {
		return shareDao.getList(userNo);
	}
	
	//자랑하기 추가
	public int add(ShareVo shareVo, MultipartFile file, int userNo, String id) {
		
		
		// 데이터 추출========================================================
				String saveDir = "C:\\JavaStudy\\dogshop";
				// 원본파일 이름추출
				String orgName = file.getOriginalFilename();

				// 확장자
				String exName = orgName.substring(orgName.lastIndexOf("."));

				// 저장파일이름
				String shareImg = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

				// 파일경로
				String filePath = saveDir + "\\" + shareImg;

				// 파일사이즈
				long fileSize = file.getSize();

				System.out.println("원본파일이름: " + orgName);
				System.out.println("확장자: " + exName);
				System.out.println("파일경로: " + filePath);
				System.out.println("파일사이즈: " + fileSize);

				// 파일 복사==========================================================
				try {
					byte[] fileData = file.getBytes();
					OutputStream out = new FileOutputStream(filePath);
					BufferedOutputStream bout = new BufferedOutputStream(out);

					bout.write(fileData);
					bout.close();
				} catch (IOException e) {
					e.printStackTrace();
				}

				shareVo.setShareImg(shareImg);
				shareVo.setUserNo(userNo);
				shareVo.setId(id);
				shareDao.add(shareVo);
				int result = 0;
				return result;
		
	}
	public String getid(int userNo) {
		return shareDao.getid(userNo);
	}
	
	
}
