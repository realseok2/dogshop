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

import com.javaex.dao.NanumDao;
import com.javaex.vo.NanumVo;

@Service
public class NanumService {

	@Autowired
	NanumDao nanumDao;
	//글 조회
	public List<NanumVo> NanumSelectList() {
		return nanumDao.NanumSelectList();
	}
	
	//글 1개 조회
	public NanumVo NanumSelectOne(int nanumNo) {

		return nanumDao.NanumSelectOne(nanumNo);
	}
	
	//글등록
	public int NanumWrite(NanumVo nanumVo,MultipartFile file) {
		String img = Gallery(file);
		nanumVo.setImg(img);

		return nanumDao.NanumWrite(nanumVo);
	}
	

	
	
	
	
	
	//첨부파일 등록
	public String Gallery(MultipartFile file) {
		// ======데이터 추출======
		String saveDir = "C:\\JavaStudy\\dogshop";
		
		// 원본파일 이름추출
		String orgName = file.getOriginalFilename();
	
		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));
	
		// 저장파일이름
		String logoFile = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
	
		// 파일경로
		String filePath = saveDir + "\\" + logoFile;
	
		// ======파일 복사======
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);
	
			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return logoFile;
	}
}
