package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ReviewDao;
import com.javaex.vo.ReservationVo;
import com.javaex.vo.ReviewVo;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao reviewdao;
	
	public int writereview(ReviewVo reviewvo) {
		ReservationVo vo = reviewdao.test(reviewvo);
		
		reviewvo.setShopno(vo.getShopno());
		reviewvo.setRegno(vo.getRegno());
		
		int result = reviewdao.writereview(reviewvo);
		if(result == 1) {
			reviewdao.reserved(vo.getRegno());
		}
		return result;
	}
	public double getspoint(int shopno) {
		return reviewdao.getspoint(shopno);
	}
	public int scount(int shopno) {
		return reviewdao.scount(shopno);
	}
	public List<ReviewVo> getreviewList(int shopno){
		return reviewdao.getreviewList(shopno);
	}
}
