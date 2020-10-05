package com.javaex.vo;

public class SessionVo {

	//필드
	int userNo,shopNo;
	String userName,userId,shopDomain;

	//생성자
	public SessionVo() {
	}
	
	public SessionVo(int userNo, int shopNo, String userName, String userId, String shopDomain) {
		this.userNo = userNo;
		this.shopNo = shopNo;
		this.userName = userName;
		this.userId = userId;
		this.shopDomain = shopDomain;
	}


	//g.s
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getShopDomain() {
		return shopDomain;
	}

	public void setShopDomain(String shopDomain) {
		this.shopDomain = shopDomain;
	}
	//일반메소드
	@Override
	public String toString() {
		return "SessionVo [userNo=" + userNo + ", shopNo=" + shopNo + ", userName=" + userName +  ", userId=" + userId + ", shopDomain="
				+ shopDomain + "]";
	}

	
}
