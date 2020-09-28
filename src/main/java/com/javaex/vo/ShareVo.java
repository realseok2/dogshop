package com.javaex.vo;

public class ShareVo {

//--------------------------------------------------------	필드

	private int shareNo;
	private int userNo;
	private String id;
	private String content;
	private String	regDate;
	private int hit=0;
	private String shareImg;
	private int liked=0;
	private int dogNo;
	private String dogName;
	private String dogType;
	private int dogWeight;
	private int dogAge;
	private String dogEtc;
	
	
//--------------------------------------------------------	생성자
	
	public ShareVo() {
		
	}

//--------------------------------------------------------	getter, setter
	
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

	public int getDogNo() {
		return dogNo;
	}

	public void setDogNo(int dogNo) {
		this.dogNo = dogNo;
	}

	public String getDogName() {
		return dogName;
	}

	public void setDogName(String dogName) {
		this.dogName = dogName;
	}

	public String getDogType() {
		return dogType;
	}

	public void setDogType(String dogType) {
		this.dogType = dogType;
	}

	public int getDogWeight() {
		return dogWeight;
	}

	public void setDogWeight(int dogWeight) {
		this.dogWeight = dogWeight;
	}

	public int getDogAge() {
		return dogAge;
	}

	public void setDogAge(int dogAge) {
		this.dogAge = dogAge;
	}

	public String getDogEtc() {
		return dogEtc;
	}

	public void setDogEtc(String dogEtc) {
		this.dogEtc = dogEtc;
	}



//--------------------------------------------------------	일반메소드





//--------------------------------------------------------	toString
	
	@Override
	public String toString() {
		return "ShareVo [shareNo=" + shareNo + ", userNo=" + userNo + ", id=" + id + ", content=" + content
				+ ", regDate=" + regDate + ", hit=" + hit + ", shareImg=" + shareImg + ", liked=" + liked + ", dogNo="
				+ dogNo + ", dogName=" + dogName + ", dogType=" + dogType + ", dogWeight=" + dogWeight + ", dogAge="
				+ dogAge + ", dogEtc=" + dogEtc + "]";
	}

	
	
	
	
	
	
}
