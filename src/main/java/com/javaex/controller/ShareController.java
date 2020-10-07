package com.javaex.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.ShareReplyService;
import com.javaex.service.ShareService;
import com.javaex.vo.DogVo;
import com.javaex.vo.SessionVo;
import com.javaex.vo.ShareReplyVo;
import com.javaex.vo.ShareVo;

@Controller
public class ShareController {

	@Autowired
	private ShareService shareService;
	@Autowired
	private ShareReplyService shareReplyService;

//	자랑하기 메인------------------------------------------------------------------------------	
	// 메인 폼
	@RequestMapping("/shareMain")
	public String shareMain(Model model, HttpSession session) {

		//업로드 순서 6개
		List<ShareVo> sList = shareService.getSList();
		model.addAttribute("sList", sList);
		
		//좋아요 순서 6개
		List<ShareVo> cList = shareService.getCList();
		model.addAttribute("cList", cList);
		
	return "main/share_petagram";
	}

//	자랑하기 추가------------------------------------------------------------------------------
	// 추가하기 폼
	@RequestMapping("/shareAdd")
	public String shareAdd(HttpSession session, Model model) {
		
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		int userNo = sessionVo.getUserNo();
		
		List<DogVo> aList = shareService.getdList(userNo);
		model.addAttribute("aList",aList);
				
		return "main/share_add";
	}


	//자랑하기 추가	  
	@RequestMapping("/add")
	public String add(@ModelAttribute ShareVo shareVo, MultipartFile file, HttpSession session, Model model) {
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
	  
		int userNo = sessionVo.getUserNo();
		String id = shareService.getid(userNo);
		  
		shareService.add(shareVo, file, userNo, id);
	  
		return "redirect:/shareAll";
	}
	
	//자랑하기 추가할때 반려동물 조회	  
	@ResponseBody
	@RequestMapping("/addPageSelect")
	public ShareVo getShare(@ModelAttribute ShareVo shareVo, MultipartFile file, HttpSession session, Model model) {

		shareVo.setUserNo(((SessionVo)session.getAttribute("session")).getUserNo());
		shareVo = shareService.getShare(shareVo);
		return shareVo;
	}

//	자랑하기 자세히 보기--------------------------------------------------------------------------
	// 자세히보기 폼
	@RequestMapping("/shareDetail/{shareNo}/{userNo}")
	public String shareDetail(Model model, @PathVariable("shareNo") int shareNo, @PathVariable("userNo") int userNo) {
		
		//자세히 보기 게시물 큰 이미지
		List<ShareVo> selectDetail = shareService.read(shareNo);
		model.addAttribute("selectDetail", selectDetail);		
		System.out.println("selectDetail@@@@@@@@@@@@@" + selectDetail);
		
		//유저넘버 별 게시물
		List<ShareVo> usList = shareService.getUsList(userNo);
		System.out.println("usList" + usList);
		model.addAttribute("usList", usList);
		
		//디테일 댓글 리스트
		List<ShareReplyVo> drList = shareReplyService.getList(shareNo);
		System.out.println("shareController drList 제발점되라 시발 댓글"+drList.toString());
				
		return "main/share_petagram_detail";
	}

//	자랑하기 전체 리스트 보기-----------------------------------------------------------------------
	// 전체보기 페이징
	@RequestMapping("/shareAll")
	public String shareAll(@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage, Model model, HttpSession session) {
		
		//리스트 전체
		Map<String, Object> hMap = shareService.getHList(crtPage);
		model.addAttribute("hMap", hMap);
		
		return "main/share_petagram_All";
	}
	
//	게시물 삭제--------------------------------------------------------------------------------
	
	@RequestMapping("/shareDelete/{shareNo}")
	public String shareDelete(@PathVariable("shareNo") int shareNo) {
		int count = shareService.shareDelete(shareNo);
		return "redirect:/shareAll";
	}
	
//	게시물 하나 가져오기-----------------------------------------------------------------------	---

	
	
}
