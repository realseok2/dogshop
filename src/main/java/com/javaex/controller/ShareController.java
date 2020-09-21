package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.ShareService;
import com.javaex.vo.SessionVo;
import com.javaex.vo.ShareVo;

@Controller
public class ShareController {

	@Autowired
	private ShareService shareService;
	
//	자랑하기 메인------------------------------------------------------------------------------	
	//메인 폼
	@RequestMapping("/shareMain")
	public String shareMain() {
		System.out.println("share-main-form");
		return "main/share_petagram";	
	}
	
//	자랑하기 자세히 보기--------------------------------------------------------------------------
	//자세히보기 폼
	@RequestMapping("/shareDetail")
	public String shareDetail() {
		System.out.println("share-detail-form");
		return "main/share_petagram_detail";
	}
	
//	자랑하기 추가------------------------------------------------------------------------------
	//추가하기 폼
	@RequestMapping("/shareAdd")
	public String shareAdd() {
		System.out.println("share-add-form");
		return "main/share_add";
	}
	
	//자랑하기 추가
	@RequestMapping("/add")
	public String add(@ModelAttribute ShareVo shareVo, MultipartFile file, HttpSession session, Model model) {
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		System.out.println("share-add");
		System.out.println(sessionVo);
		
		int userNo = sessionVo.getUserNo();
		String id = shareService.getid(userNo);
		System.out.println(id);
		shareService.add(shareVo, file, userNo,id);
		
		System.out.println("controller : @@@@@: " + shareVo.toString());
		
		return "redirect:/shareMain";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
