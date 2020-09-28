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
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.CommentService;
import com.javaex.service.NanumService;
import com.javaex.vo.CommentVo;
import com.javaex.vo.NanumVo;
import com.javaex.vo.SessionVo;

@Controller
public class NanumController {
	@Autowired
	NanumService nanumService;
	@Autowired
	CommentService commentService;
	
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
	
	//글 작성
	@RequestMapping("/nanumWrite")
	public String nanumWrite(@ModelAttribute NanumVo nanumVo, MultipartFile file,HttpSession session) {
		int userNo = ((SessionVo)session.getAttribute("session")).getUserNo();
		nanumVo.setUserNo(userNo);
		
		nanumService.NanumWrite(nanumVo,file);

		return "redirect:/nanum";
	}
	
	//글 세부 페이지
	@RequestMapping("/nanumPage")
	public String nanumPage(Model model,@RequestParam("nanumNo")int nanumNo,HttpSession session) {
		NanumVo nanumVo = nanumService.NanumSelectOne(nanumNo);
		model.addAttribute("nanumVo", nanumVo);

		int count = nanumService.CmtCount(nanumNo);
		
		model.addAttribute("count", count);
		return "main/nanumPage";
	}
	
	//글 삭제
	@RequestMapping("/nanumDel")
	public String nanumDel(@RequestParam("nanumNo")int nanumNo) {
		nanumService.nanumDel(nanumNo);
		
		return "redirect:/nanum";
	}
	
	//댓글 작성
	@ResponseBody
	@RequestMapping("/nanumCmt")
	public CommentVo nanumCmt(@RequestParam("nanumNo")int nanumNo,@RequestParam("content")String content,HttpSession session) {
		String userName = ((SessionVo)session.getAttribute("session")).getUserName();
		int userNo = ((SessionVo)session.getAttribute("session")).getUserNo();
		
		return commentService.CommentAdd(nanumNo,content,userName,userNo);
	}
	
	
	//댓글 리스트 가져오기
	@ResponseBody
	@RequestMapping("/CmtList")
	public List<CommentVo> CmtList(int nanumNo) {
		return commentService.CommentList(nanumNo); 
	}
	
	@RequestMapping("/CmtDel")
	public String CmtDel(@RequestParam("commentNo")int commentNo,@RequestParam("nanumNo")int nanumNo) {
		commentService.CmtDel(commentNo);
		
		return "redirect:/nanumPage?nanumNo="+nanumNo;
	}
}
