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
	
	public CommentVo CommentAdd(int nanumNo,String content,String userName) {
		CommentVo cmtVo = new CommentVo();
		cmtVo.setNanumNo(nanumNo);
		cmtVo.setContent(content);
		cmtVo.setUserName(userName);
		
		commentDao.insertSelectKey(cmtVo);
		int commentNo = cmtVo.getCommentNo();

		CommentVo commentVo = commentDao.cmtSelectOne(commentNo);
		return commentVo;
	}
	
	public List<CommentVo> CommentList(int nanumNo) {
		
		return commentDao.CommentList(nanumNo);
	}
}
