package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CommentVo;

@Repository
public class CommentDao {

	@Autowired
	SqlSession sqlSession;
	
	//댓글 작성
	public int CommentAdd(CommentVo commentVo) {
		return sqlSession.insert("comment.commentInsert" , commentVo);
	}
	
	//댓글 리스트
	public List<CommentVo> CommentList(int nanumNo){
		return sqlSession.selectList("comment.commentList",nanumNo);
	}
}
