package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.ShareDao;
import com.javaex.vo.DogVo;
import com.javaex.vo.ShareVo;

@Service
public class ShareService {

	@Autowired
	private ShareDao shareDao;
	
	//---------------------------------------------------------------------
	//리스트 업로드 순서 6개 출력
	public List<ShareVo> getSList() {
		return shareDao.getSList();
	}
	
	//리스트 좋아요 순서 6개 출력
	public List<ShareVo> getCList() {
		return shareDao.getCList();
	}
	
	//유저넘버 별 게시물
	public List<ShareVo> getUsList(int userNo) {
		return shareDao.getUsList(userNo);
	}
	
	//자랑하기 추가부분에서 반려견 정보 받아오기 리스트
	public List<DogVo> getdList(int userNo){
		return shareDao.getList(userNo);
	}	
	
	//등록할 때 선택한 강아지 정보 가져오기
	public ShareVo getShare(ShareVo shareVo) {
		return shareDao.getShare(shareVo);
	}
	
	//리스트 전체 출력
	public Map<String, Object>  getHList(int crtPage) {
		
		//페이징 리스트 가져오기-------------------------------------------------------------
		
		//페이지당 글 갯수
		int listCnt	= 9;
		
		//현재 페이지 계산
		crtPage = (crtPage>0) ? crtPage : (crtPage = 1) ;	//crtPage 0 보다 작으면 1Page 처리	
		//		위 방식과 같은 의미
		//		if(crtPage>0) {
		//			crtPage = crtPage;
		//		} else {
		//			crtPage = 1;
		//		}
		
		//시작 글 번호 startRnum
		int startRnum = (crtPage-1)*listCnt;	//	1page --> 0		+1 db에서 계산
		
		//끝 글 번호 endRnum
		int endRnum = startRnum + listCnt;		//	1Page --> 10	db에서 그대로 사용
		
//		System.out.println("crtPage : " + crtPage);
//		System.out.println("startRnum : " + startRnum);
//		System.out.println("endRnum : " + endRnum);
		
		
		List<ShareVo> list = shareDao.getHList(startRnum, endRnum);


	//totalCount 페이지 버튼 영역---------------------------------------------------
		//전체 글 갯수
		int totalCount = shareDao.totalCount();
		
		//페이지당 버튼 갯수
		int pageBtnCount = 5;
		
		//1		-->		1 ~ 5
		//2		--> 	1 ~ 5
		//3		--> 	1 ~ 5
		//4		--> 	1 ~ 5
		//5		--> 	1 ~ 5
		//6		-->		5 ~ 10
		//11	--> 	11 ~ 15
		
		//마지막 버튼 번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount) * pageBtnCount;
		
		//시작 버튼 번호
		int startPageBtnNo = endPageBtnNo - (pageBtnCount-1);
		
		//다음 화살표 유무 next
		boolean next = false;
		if(endPageBtnNo*listCnt < totalCount) {
			next = true;
		} else {
			endPageBtnNo = (int)Math.ceil(totalCount/(double)listCnt);
		}
		
		//이전 화살표 유무 prev
		boolean prev = false;
		if(startPageBtnNo != 1) {
			prev = true;
		}
		
		Map<String, Object> hMap = new HashMap<String, Object>();
		hMap.put("prev", prev);
		hMap.put("startPageBtnNo", startPageBtnNo);
		hMap.put("endPageBtnNo", endPageBtnNo);
		hMap.put("next", next);
		hMap.put("hList", list);
					
		return hMap;
	}	
	
	//---------------------------------------------------------------------
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

//				System.out.println("원본파일이름: " + orgName);
//				System.out.println("확장자: " + exName);
//				System.out.println("파일경로: " + filePath);
//				System.out.println("파일사이즈: " + fileSize);

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
	
	//아이디 가져오기
	public String getid(int userNo) {
		return shareDao.getid(userNo);
	}
	
	//게시물 삭제
	public int shareDelete(int shareNo) {
		return shareDao.shareDelete(shareNo);
	}
	
	//게시물 읽기
	public List<ShareVo> read(int shareNo) {		
		return shareDao.getPost(shareNo);
	}
	
	
	
	
	
	

	
	
}
