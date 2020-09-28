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

import com.javaex.dao.DogDao;
import com.javaex.vo.DogVo;
import com.javaex.vo.VisitVo;

@Service
public class DogService {

	@Autowired
	private DogDao dogDao;

	//펫 리스트
	public List<DogVo> getList(int userNo) {
		
		return dogDao.getList(userNo);
	}

	//펫 추가
	public int add(DogVo DogVo, MultipartFile file, int userNo) {
		
		// 데이터 추출========================================================
		String saveDir = "C:\\JavaStudy\\dogshop";
		// 원본파일 이름추출
		String orgName = file.getOriginalFilename();

		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));

		// 저장파일이름
		String dogImg = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

		// 파일경로
		String filePath = saveDir + "\\" + dogImg;

		// 파일사이즈
		/*
		 * long fileSize = file.getSize();
		 * 
		 * System.out.println("원본파일이름: " + orgName); System.out.println("확장자: " +
		 * exName); System.out.println("파일경로: " + filePath);
		 * System.out.println("파일사이즈: " + fileSize);
		 */

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

		DogVo.setDogImg(dogImg);
		DogVo.setUserNo(userNo);
		dogDao.add(DogVo);
		int result = 0;
		return result;
	}

	//	펫 수정
	public DogVo petBasicMain(String userNo) {
		return dogDao.petSelect(userNo);

	}
	
	//방문내역리스트
	public List<VisitVo> getrList(int userNo){
		return dogDao.getrList(userNo);
	}

}
