package com.javaex.vo;

public class VisitVo {
	private String dogName;
	private String shopTitle;
	private String regdate;
	private double dogweight;
	private String reserved;
	private int regno, shopno;
	
	
	public int getRegno() {
		return regno;
	}

	public void setRegno(int regno) {
		this.regno = regno;
	}

	public int getShopno() {
		return shopno;
	}

	public void setShopno(int shopno) {
		this.shopno = shopno;
	}

	public VisitVo(){}

	public String getDogName() {
		return dogName;
	}

	public void setDogName(String dogName) {
		this.dogName = dogName;
	}

	public String getShopTitle() {
		return shopTitle;
	}

	public void setShopTitle(String shopTitle) {
		this.shopTitle = shopTitle;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public double getDogweight() {
		return dogweight;
	}

	public void setDogweight(double dogweight) {
		this.dogweight = dogweight;
	}

	public String getReserved() {
		return reserved;
	}

	public void setReserved(String reserved) {
		this.reserved = reserved;
	}

	@Override
	public String toString() {
		return "VisitVo [dogName=" + dogName + ", shopTitle=" + shopTitle + ", regdate=" + regdate + ", dogweight="
				+ dogweight + ", reserved=" + reserved + ", regno=" + regno + ", shopno=" + shopno + "]";
	}


	

	

}
