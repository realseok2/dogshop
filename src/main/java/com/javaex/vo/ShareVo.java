package com.javaex.vo;

public class ShareVo {

//--------------------------------------------------------	필드

	private int shareNo;
	private int userNo;
	private String id;
	private String content;
	private String	regDate;
	private int hit;
	private String shareImg;
	private int liked;
	
//--------------------------------------------------------	생성자
	
	public ShareVo() {
		
	}

	

//--------------------------------------------------------	일반메소드





//--------------------------------------------------------	toString
	
	public int getShareNo() {
		return shareNo;
	}



	public void setShareNo(int shareNo) {
		this.shareNo = shareNo;
	}



	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getRegDate() {
		return regDate;
	}



	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}



	public int getHit() {
		return hit;
	}



	public void setHit(int hit) {
		this.hit = hit;
	}



	public String getShareImg() {
		return shareImg;
	}



	public void setShareImg(String shareImg) {
		this.shareImg = shareImg;
	}



	public int getLiked() {
		return liked;
	}



	public void setLiked(int liked) {
		this.liked = liked;
	}



	@Override
	public String toString() {
		return "ShareVo [shareNo=" + shareNo + ", userNo=" + userNo + ", id=" + id + ", content=" + content
				+ ", regDate=" + regDate + ", hit=" + hit + ", shareImg=" + shareImg + ", liked=" + liked + "]";
	}
	
	
	
	
	
}
