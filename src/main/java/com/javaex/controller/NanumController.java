package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.NanumService;
import com.javaex.vo.NanumVo;
import com.javaex.vo.SessionVo;

@Controller
public class NanumController {
	@Autowired
	NanumService nanumService;
	
	
	//무료 나눔
	@RequestMapping("/nanum")
	public String nanum(Model model) {
		List<NanumVo> nList = nanumService.NanumSelectList();
		model.addAttribute("nList", nList);
		
		return "main/nanum";
	}
	
	//글 작성 폼
	@RequestMapping("/nanumWriteForm")
	public String nanumWriteForm() {
		
		return "main/nanumWrite";
	}
	
	//글 작성 폼
	@RequestMapping("/nanumWrite")
	public String nanumWrite(@ModelAttribute NanumVo nanumVo, MultipartFile file,HttpSession session) {
		int userNo = ((SessionVo)session.getAttribute("session")).getUserNo();
		nanumVo.setUserNo(userNo);
		
		nanumService.NanumWrite(nanumVo,file);

		return "redirect:/nanum";
	}
	
	//글 작성 폼
	@RequestMapping("/nanumPage")
	public String nanumPage(Model model,@RequestParam("nanumNo")int nanumNo) {
		NanumVo nanumVo = nanumService.NanumSelectOne(nanumNo);
		model.addAttribute("nanumVo", nanumVo);
		return "main/nanumPage";
	}
		
}
