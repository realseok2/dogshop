package com.javaex.vo;

public class CommentVo {

	//필드
	private String content,regdate,userName;
	private int    commentNo , nanumNo , userNo;
	
	//생성자
	public CommentVo() {
	}
	
	public CommentVo(String content, String regdate, String userName, int commentNo, int nanumNo, int userNo) {
		this.content = content;
		this.regdate = regdate;
		this.userName = userName;
		this.commentNo = commentNo;
		this.nanumNo = nanumNo;
		this.userNo = userNo;
	}

	//g.s
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getNanumNo() {
		return nanumNo;
	}
	public void setNanumNo(int nanumNo) {
		this.nanumNo = nanumNo;
	}
	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "CommentVo [content=" + content + ", regdate=" + regdate + ", userName=" + userName + ", commentNo="
				+ commentNo + ", nanumNo=" + nanumNo + ", userNo=" + userNo + "]";
	}
	
	
}
