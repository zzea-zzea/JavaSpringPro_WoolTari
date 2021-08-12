package com.webapp.woo.model.vo;

import java.sql.Timestamp;

public class SupportVO {
	
	private int supportIndex;
	private Timestamp supportDate;
	private String price;
	private int priceType;
	private String depositorName;
	private int supportCenterType;
	private int memberIndex;
	
	public SupportVO()  {}
	
	

	public SupportVO(int memberIndex) {
		super();
		this.memberIndex = memberIndex;
	}



	public SupportVO(int supportIndex, Timestamp supportDate, String price, int priceType, String depositorName,
			int supportCenterType, int memberIndex) {
		super();
		this.supportIndex = supportIndex;
		this.supportDate = supportDate;
		this.price = price;
		this.priceType = priceType;
		this.depositorName = depositorName;
		this.supportCenterType = supportCenterType;
		this.memberIndex = memberIndex;
	}



	public int getSupportIndex() {
		return supportIndex;
	}



	public void setSupportIndex(int supportIndex) {
		this.supportIndex = supportIndex;
	}



	public Timestamp getSupportDate() {
		return supportDate;
	}



	public void setSupportDate(Timestamp supportDate) {
		this.supportDate = supportDate;
	}



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}



	public int getPriceType() {
		return priceType;
	}



	public void setPriceType(int priceType) {
		this.priceType = priceType;
	}



	public String getDepositorName() {
		return depositorName;
	}



	public void setDepositorName(String depositorName) {
		this.depositorName = depositorName;
	}



	public int getSupportCenterType() {
		return supportCenterType;
	}



	public void setSupportCenterType(int supportCenterType) {
		this.supportCenterType = supportCenterType;
	}



	public int getMemberIndex() {
		return memberIndex;
	}



	public void setMemberIndex(int memberIndex) {
		this.memberIndex = memberIndex;
	}



	@Override
	public String toString() {
		return "SupportVO [supportIndex=" + supportIndex + ", supportDate=" + supportDate + ", price=" + price
				+ ", priceType=" + priceType + ", depositorName=" + depositorName + ", supportCenterType="
				+ supportCenterType + ", memberIndex=" + memberIndex + "]";
	}
	
	
}
