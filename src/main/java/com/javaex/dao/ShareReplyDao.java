package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ShareReplyVo;

@Repository
public class ShareReplyDao {

	@Autowired
	private SqlSession sqlSession;
	
//------------------------------------------------------------------------------------- 댓글 리스트
	
	//댓글 리스트
	public List<ShareReplyVo> getList(int shareNo) {
		System.out.println("dao getList");
		
		List<ShareReplyVo> drList = sqlSession.selectList("shareReply.getList", shareNo);
		System.out.println("dao getList return"+drList.toString());
		return drList;
	}	
	
	//댓글 갯수
	public int replyCount() {
		return sqlSession.selectOne("shareReply.replyCount");
	}
//------------------------------------------------------------------------------------- 댓글 추가

	public void insertSelectKey(ShareReplyVo shareReplyVo) {
		System.out.println("shareReplyDao:insertSelectKey@@@@@@@@@@@");
		
		System.out.println("전~~~~~~~~~~~"+shareReplyVo.toString());			//no값 없음
		sqlSession.insert("shareReply.insertSelectKey", shareReplyVo);
		System.out.println("후~~~~~~~~~~~"+shareReplyVo.toString());			//no값 있음
	}
	
	//댓글 가져오기
	public ShareReplyVo selectByNo(int replyNo) {
		return sqlSession.selectOne("shareReply.selectByNo", replyNo);
	}
	
	
	
	
	
	
//------------------------------------------------------------------------------------- 댓글 삭제

	
	
	
	
	
	
	
	
	
	
	
}
