package com.javaex.vo;

public class ReviewListVo {
	private String id;
	private String regdate;
	private int spoint;
	private String sdesc;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getSpoint() {
		return spoint;
	}
	public void setSpoint(int spoint) {
		this.spoint = spoint;
	}
	public String getSdesc() {
		return sdesc;
	}
	public void setSdesc(String sdesc) {
		this.sdesc = sdesc;
	}
	@Override
	public String toString() {
		return "ReviewListVo [id=" + id + ", regdate=" + regdate + ", spoint=" + spoint + ", sdesc=" + sdesc + "]";
	}
	
	

}
