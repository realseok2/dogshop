package com.javaex.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.ShareService;
import com.javaex.vo.DogVo;
import com.javaex.vo.SessionVo;
import com.javaex.vo.ShareVo;

@Controller
public class ShareController {

	@Autowired
	private ShareService shareService;

//	자랑하기 메인------------------------------------------------------------------------------	
	// 메인 폼
	@RequestMapping("/shareMain")
	public String shareMain(Model model, HttpSession session) {
		System.out.println("share-main-form");

		//업로드 순서 6개
		List<ShareVo> sList = shareService.getSList();
		model.addAttribute("sList", sList);
		System.out.println("sList : @@@@@" + sList.toString());
		
		//좋아요 순서 6개
		List<ShareVo> cList = shareService.getCList();
		model.addAttribute("cList", cList);
		System.out.println("cList : @@@@@@" + cList.toString());

	return "main/share_petagram";
	}

//	자랑하기 추가------------------------------------------------------------------------------
	// 추가하기 폼
	@RequestMapping("/shareAdd")
	public String shareAdd(HttpSession session, Model model) {
		System.out.println("share-add-form");
		
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		int userNo = sessionVo.getUserNo();
		System.out.println(userNo);
		
		List<DogVo> aList = shareService.getdList(userNo);
		model.addAttribute("aList",aList);
		
		System.out.println("aList : @@@@@" + aList.toString());
				
		return "main/share_add";
	}


	//자랑하기 추가	  
	@RequestMapping("/add")
	public String add(@ModelAttribute ShareVo shareVo, MultipartFile file, HttpSession session, Model model) {
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
	  
		int userNo = sessionVo.getUserNo(); String id = shareService.getid(userNo);
		  
		shareService.add(shareVo, file, userNo,id);
	  
		return "redirect:/shareAll";
	}


//	자랑하기 자세히 보기--------------------------------------------------------------------------
	// 자세히보기 폼
	@RequestMapping("/shareDetail")
	public String shareDetail() {
		System.out.println("share-detail-form");
		return "main/share_petagram_detail";
	}

//	자랑하기 전체 리스트 보기-----------------------------------------------------------------------
	// 전체보기 폼
//	@RequestMapping("/shareAll")
//	public String shareAll(Model model, HttpSession session) {
//		System.out.println("share_All");
//		
//		//리스트 전체
//		List<ShareVo> hList = shareService.getHList();
//		model.addAttribute("hList", hList);
//		System.out.println("hList : @@@@@@" + hList.toString());		
//		
//		return "main/share_petagram_All";
//	}
	
//	----------------------------------------------------------------------------
//	---------------------------------------------------------------------------- 연습용
	// 전체보기 페이징
	@RequestMapping("/shareAll")
	public String shareAll(@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage, Model model, HttpSession session) {
		System.out.println("share_All");
		System.out.println("crtPage : @@@@@@@@@@@@@@" + crtPage);
		
		//리스트 전체
		Map<String, Object> hMap = shareService.getHList(crtPage);
		model.addAttribute("hMap", hMap);
		System.out.println(hMap.toString());
		
		return "main/share_petagram_All";
	}
	
	
	
	
	
	
	
	
	
	
}
