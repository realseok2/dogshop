package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShareController {
	
	//글 작성 폼
	@RequestMapping("/shareWriteForm")
	public String shareWriteForm(Model model) {
		
		return "main/shareWrite";
	}
}
