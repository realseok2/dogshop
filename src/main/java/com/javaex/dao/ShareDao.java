package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ShareVo;

@Repository
public class ShareDao {

	@Autowired
	private SqlSession sqlSession;
	
	//자랑하기 추가
	public int add(ShareVo shareVo) {
		System.out.println("dao : @@@@@" + shareVo.toString());
		return sqlSession.insert("share.insert", shareVo);
	}
	public String getid(int userNo) {
		return sqlSession.selectOne("user.getid",userNo);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
