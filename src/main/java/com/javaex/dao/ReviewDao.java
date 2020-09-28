package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ReservationVo;
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
	public double getspoint(int shopno) {
		if(sqlSession.selectOne("review.getspoint",shopno) == null) {
			return 0.0;
		}
		else {
			double a = sqlSession.selectOne("review.getspoint",shopno);
			double spoint =  Double.parseDouble(String.format("%.1f", a));
			return spoint;
		}
	}
	public int scount(int shopvo) {
		return sqlSession.selectOne("review.scount", shopvo);
	}
	public List<ReviewVo> getreviewList(int shopno){
		return sqlSession.selectList("review.getreviewList",shopno);
	}
}
