package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NanumController {
	
	//무료 나눔
	@RequestMapping("/nanum")
	public String share(Model model) {
		
		return "main/nanum";
	}
	
	//글 작성 폼
	@RequestMapping("/nanumWriteForm")
	public String shareWriteForm(Model model) {
		
		return "main/nanumWrite";
	}
}
