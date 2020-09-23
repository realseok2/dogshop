package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.NanumVo;

@Repository
public class NanumDao {

	@Autowired
	SqlSession sqlSession;
	
	//글 조회
	public List<NanumVo> NanumSelectList() {
		return sqlSession.selectList("nanum.selectList");
	}
	
	//글 등록
	public int NanumWrite(NanumVo nanumVo) {
		return sqlSession.insert("nanum.insert" , nanumVo);
	}
	
	//글 1개조회
	public NanumVo NanumSelectOne(int nanumNo) {
		return sqlSession.selectOne("nanum.selectOne",nanumNo);
	}

}
