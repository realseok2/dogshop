package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.DogVo;
import com.javaex.vo.ShareVo;

@Repository
public class ShareDao {

	@Autowired
	private SqlSession sqlSession;
	//---------------------------------------------------------------------
	//리스트 업로드 순서 6개 출력
	public List<ShareVo> getSList() {		
		return sqlSession.selectList("share.getSList");		
	}
	
	//리스트 좋아요 순서 6개 출력
	public List<ShareVo> getCList() {				
		return sqlSession.selectList("share.getCList");		
	}
	
	//리스트 전체 출력
	public List<ShareVo> getHList() {				
		return sqlSession.selectList("share.getHList");		
	}
	
	//---------------------------------------------------------------------	
	//자랑하기 추가
	public int add(ShareVo shareVo) {
		return sqlSession.insert("share.insert", shareVo);
	}
	
	public String getid(int userNo) {
		return sqlSession.selectOne("user.getid",userNo);
	}
	public List<DogVo> getList(int userNo){
		return sqlSession.selectList("dog.getList",userNo);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
