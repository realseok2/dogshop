package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ShareReplyDao;
import com.javaex.vo.ShareReplyVo;

@Service
public class ShareReplyService {
	
	@Autowired
	private ShareReplyDao shareReplyDao;
	
//------------------------------------------------------------------------------------- 댓글 리스트
	
	//댓글 리스트
	public List<ShareReplyVo> getList(int shareNo) {
		System.out.println("service getList");
				
		return shareReplyDao.getList(shareNo);
	}
	
	public int replyCount(int shareNo) {
		System.out.println("replyCountService2$#");
		return shareReplyDao.replyCount(shareNo);
	}
	
	/*
	 * //아이디 가져오기 public String getId(int userNo) { return
	 * shareReplyDao.getId(userNo); }
	 */
	

//------------------------------------------------------------------------------------- 댓글 추가
	
	public ShareReplyVo addReply(ShareReplyVo shareReplyVo, int shareNo) {
		System.out.println("addReplyService@@@@@@@@@@@");
		
		//저장
		shareReplyDao.insertSelectKey(shareReplyVo);
		
		shareNo = shareReplyVo.getShareNo();
		System.out.println("selectKey로 받은 replyNo값 [ " + shareNo + " ]");
		
		//저장한 데이터 가져오기
		return shareReplyDao.selectByNo(shareNo);
	}

//------------------------------------------------------------------------------------- 댓글 삭제

	
	
	
	
	
	
}
