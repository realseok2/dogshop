package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.ReviewService;
import com.javaex.vo.ReviewVo;
import com.javaex.vo.SessionVo;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	//리뷰 작성
	@ResponseBody
	@RequestMapping("/review")
	public int review(@ModelAttribute ReviewVo reviewvo,
						 HttpSession session)
	{
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		int userNo = sessionVo.getUserNo();
		reviewvo.setUserno(userNo);
		
		return reviewService.writereview(reviewvo);
	}
	@ResponseBody
	@RequestMapping("/reviewon")
	public int reviewon(@RequestParam("shopno")int shopno) {

		return shopno;
	}
	@RequestMapping("/showreview")
	public String showreview(@RequestParam("shopno") int shopno,
							 HttpSession session, Model model) {
		List<ReviewVo> reviewList = reviewService.getreviewList(shopno);
		
		
		model.addAttribute("reviewList", reviewList);
		return "main/showreview";
	}
}
