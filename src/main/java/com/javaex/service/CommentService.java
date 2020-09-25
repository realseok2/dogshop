package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.CommentDao;
import com.javaex.vo.CommentVo;

@Service
public class CommentService {

	@Autowired
	CommentDao commentDao;
	
	//댓글작성
	public CommentVo CommentAdd(int nanumNo,String content,String userName,int userNo) {
		CommentVo cmtVo = new CommentVo();
		cmtVo.setNanumNo(nanumNo);
		cmtVo.setContent(content);
		cmtVo.setUserName(userName);
		cmtVo.setUserNo(userNo);
		
		commentDao.insertSelectKey(cmtVo);
		int commentNo = cmtVo.getCommentNo();

		CommentVo commentVo = commentDao.cmtSelectOne(commentNo);
		return commentVo;
	}
	
	//리스트 불러오기
	public List<CommentVo> CommentList(int nanumNo) {
		
		return commentDao.CommentList(nanumNo);
	}
	
	//댓글삭제
	public int CmtDel(int commentNo) {
		
		return commentDao.CmtDel(commentNo);
	}
}
