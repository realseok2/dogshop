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
		
		//댓글 갯수
		int replyCount = shareReplyDao.replyCount();
		System.out.println("replyCount~!~~(~*@~(@*~(@*~("+replyCount);
		
		return shareReplyDao.getList(shareNo);
	}
	
	
	

//------------------------------------------------------------------------------------- 댓글 추가
	
	public List<ShareReplyVo> addReply(ShareReplyVo shareReplyVo, int shareNo) {
		System.out.println("addReplyService@@@@@@@@@@@");
		
		//저장
		shareReplyDao.insertSelectKey(shareReplyVo, shareNo);
		
		int replyNo = shareReplyVo.getReplyNo();
		System.out.println("selectKey로 받은 replyNo값 [ " + replyNo + " ]");
		
		//저장한 데이터 가져오기
		return shareReplyDao.selectByNo(replyNo);
	}

//------------------------------------------------------------------------------------- 댓글 삭제

	
	
	
	
	
	
}
