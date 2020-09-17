package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ReservationVo;
import com.javaex.vo.ReviewVo;

@Repository
public class ReviewDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public ReservationVo tets(int userno) {
		return sqlSession.selectOne("review.test",userno);
	}
	public int writereview(ReviewVo reviewvo) {
		return sqlSession.insert("review.writeview", reviewvo);
	}
}
