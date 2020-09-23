package com.javaex.vo;

public class NanumVo {
	//필드
	private int nanumNo,userNo;
	private String area,groups,title,content,img,regdate,userName;
	
	
	//생성자
	public NanumVo() {
	}

	public NanumVo(int nanumNo, int userNo, String area, String groups, String title, String content, String img,
			String regdate, String userName) {
		this.nanumNo = nanumNo;
		this.userNo = userNo;
		this.area = area;
		this.groups = groups;
		this.title = title;
		this.content = content;
		this.img = img;
		this.regdate = regdate;
		this.userName = userName;
	}

	//g.s
	public int getnanumNo() {
		return nanumNo;
	}
	public void setnanumNo(int nanumNo) {
		this.nanumNo = nanumNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getGroups() {
		return groups;
	}
	public void setGroups(String groups) {
		this.groups = groups;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	//toString
	@Override
	public String toString() {
		return "NanumVo [nanumNo=" + nanumNo + ", userNo=" + userNo + ", area=" + area + ", groups=" + groups + ", title="
				+ title + ", content=" + content + ", img=" + img + ", regdate=" + regdate + ", userName=" + userName
				+ "]";
	}
	
	
}
