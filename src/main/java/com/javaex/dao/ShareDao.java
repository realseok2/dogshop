package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ShareVo;

@Repository
public class ShareDao {

	@Autowired
	private SqlSession sqlSession;
	
	//리스트 출력
	public List<ShareVo> getList(int userNo) {
		System.out.println("dao : @@@@@@@" + userNo);
		
		return sqlSession.selectList("share.getList", userNo);
		
		
	}
	
	
	//자랑하기 추가
	public int add(ShareVo shareVo) {
		return sqlSession.insert("share.insert", shareVo);
	}
	public String getid(int userNo) {
		return sqlSession.selectOne("user.getid",userNo);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
