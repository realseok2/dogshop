package com.javaex.vo;

public class ReviewVo {
	private int reviewno;
	private int shopno;
	private int userno;
	private int regno;
	private double spoint;
	private String sdesc;
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getShopno() {
		return shopno;
	}
	public void setShopno(int shopno) {
		this.shopno = shopno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getRegno() {
		return regno;
	}
	public void setRegno(int regno) {
		this.regno = regno;
	}
	public double getSpoint() {
		return spoint;
	}
	public void setSpoint(double spoint) {
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
		return "ReviewVo [reviewno=" + reviewno + ", shopno=" + shopno + ", userno=" + userno + ", regno=" + regno
				+ ", spoint=" + spoint + ", sdesc=" + sdesc + "]";
	}

	
}