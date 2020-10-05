package com.javaex.vo;

public class ShareReplyVo {

//------------------------------------------------------------	필드
	
	private int shareNo;
	private int replyNo;
	private int userNo;
	private String replyId;
	private String replyContent;
	
//------------------------------------------------------------	생성자

	public ShareReplyVo() {
		
	}
	
	public ShareReplyVo(int shareNo, int replyNo, int userNo, String replyId, String replyContent) {
		this.shareNo = shareNo;
		this.replyNo = replyNo;
		this.userNo = userNo;
		this.replyId = replyId;
		this.replyContent = replyContent;
	}
	
//------------------------------------------------------------	getter, setter

	public int getShareNo() {
		return shareNo;
	}

	public void setShareNo(int shareNo) {
		this.shareNo = shareNo;
	}
	
	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getReplyId() {
		return replyId;
	}

	public void setReplyId(String replyId) {
		this.replyId = replyId;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

//------------------------------------------------------------	일반메소드





//------------------------------------------------------------	toString
	
	@Override
	public String toString() {
		return "ShareReplyVo [shareNo=" + shareNo + ", replyNo=" + replyNo + ", userNo=" + userNo + ", replyId=" + replyId + ", replyContent="
				+ replyContent + "]";
	}	
}
