package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.ShareReplyService;
import com.javaex.vo.ShareReplyVo;

@Controller
public class ShareReplyController {
	
	@Autowired
	private ShareReplyService shareReplyService;

	
//------------------------------------------------------------------------------------- 댓글 ajax
	
	@RequestMapping("/replyAdd")
	public String replyAdd() {
		System.out.println("ajax로 add처리!~!~!~!~!");
		
		return "main/share_petagram_detail";
	}
	
//------------------------------------------------------------------------------------- 댓글 리스트
	
//	//댓글 리스트
//	@ResponseBody
//	@RequestMapping("/detailList/{shareNo}")
//	public List<ShareReplyVo> detailList(@PathVariable("shareNo") int shareNo) {
//		System.out.println("detailList@#@#@#@#@");
//		
//		List<ShareReplyVo> drList = shareReplyService.getList(shareNo);
//		
//		System.out.println(drList.toString());
//		
//		return drList;
//	}
	
//------------------------------------------------------------------------------------- 댓글 추가
	
	//댓글 작성
	@ResponseBody
	@RequestMapping("/write/{shareNo}")
	public ShareReplyVo write(@RequestBody ShareReplyVo shareReplyVo, @PathVariable("shareNo") int shareNo) {
		System.out.println("shareReplyController전-----@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println(shareReplyVo.toString());
		
		ShareReplyVo replyAdd = shareReplyService.addReply(shareReplyVo, shareNo);
		int count = shareReplyService.replyCount(shareNo);
		System.out.println("count 댓글 갯수 시발아"+count);
		
//		int count = 0;
//		count++;		
//		replyNo = count;		
//		insert (shareReplyVo);
		
		return replyAdd;
	}

//------------------------------------------------------------------------------------- 댓글 삭제


	




























}
