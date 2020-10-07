package com.javaex.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.MainService;
import com.javaex.service.ReviewService;
import com.javaex.vo.ShopVo;

@Controller
public class MainController {
	@Autowired
	private ReviewService reviewservice;
		
	@Autowired
	private MainService mainservice;
	
	//메인페이지
	@RequestMapping("/main")
	public String main(Model model) {
		List<ShopVo> shopList = mainservice.getStoreList();
		model.addAttribute("shopList", shopList);
		
		List<ShopVo> shopList2 = mainservice.getStoreList2();
		model.addAttribute("shopList2", shopList2);
		return "main/main";
	}
	
	//리스트로찾기
	@RequestMapping("/listsearch")
	public String listsearch(Model model) {
		List<ShopVo> sList = mainservice.list();
		model.addAttribute("sList", sList);
		
	
		return "main/listsearch";
	}
	
	//1개의 매장 조회
	@ResponseBody
	@RequestMapping("/selectStore")
	public Map<String,Object> selectStore(@RequestParam String shopDomain, Model model) {
		Map<String,Object> map = new HashMap<String,Object>();
		ShopVo shopVo = mainservice.selectStore(shopDomain);
		map.put("shopVo", shopVo);
		double spoint = reviewservice.getspoint(shopVo.getShopNo());
		map.put("spoint", spoint);
		System.out.println(spoint);
		
		
		return map;
	}
	
	//지도로찾기
	@RequestMapping("/mapsearch")
	public String mapsearch(Model model) {
		List<ShopVo> sList = mainservice.list();
		model.addAttribute("sList", sList);
		
		return "main/mapsearch";
	}
	
}
