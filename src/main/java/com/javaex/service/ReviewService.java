package com.javaex.service;

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
		int userno = reviewvo.getUserno();
		ReservationVo vo = reviewdao.tets(userno);
		reviewvo.setShopno(vo.getShopno());
		reviewvo.setRegno(vo.getRegno());
		return reviewdao.writereview(reviewvo);
	}
}
