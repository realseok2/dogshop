package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ReservationVo;
import com.javaex.vo.ReviewListVo;
import com.javaex.vo.ReviewVo;

@Repository
public class ReviewDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public ReservationVo test(ReviewVo reviewVo) {
		return sqlSession.selectOne("review.test",reviewVo);
	}
	public int writereview(ReviewVo reviewvo) {
		return sqlSession.insert("review.writeview", reviewvo);
	}
	public void reserved(int regno) {
		sqlSession.update("reservation.reserved", regno);
	}
	public Integer getspoint(int shopno) {
		if(sqlSession.selectOne("review.getspoint",shopno) == null) {
			return 0;
		}
		else {
		 return sqlSession.selectOne("review.getspoint",shopno);
		}
	}
	public int scount(int shopvo) {
		return sqlSession.selectOne("review.scount", shopvo);
	}
	public List<ReviewListVo> getreviewList(int shopno){
		return sqlSession.selectList("review.getreviewList",shopno);
	}
}
