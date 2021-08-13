package com.webapp.woo.model.vo;

public class LocationVO {

	private int c_index;
	private String local_si;
	private String local_gu;
	private String facility_name;
	private int facility_cate;
	private String phone_num;
	private String facility_add;
	private double latitude;
	private double hardness;

	public int getC_index() {
		return c_index;
	}

	public void setC_index(int c_index) {
		this.c_index = c_index;
	}

	public String getLocal_si() {
		return local_si;
	}

	public void setLocal_si(String local_si) {
		this.local_si = local_si;
	}

	public String getLocal_gu() {
		return local_gu;
	}

	public void setLocal_gu(String local_gu) {
		this.local_gu = local_gu;
	}

	public String getFacility_name() {
		return facility_name;
	}

	public void setFacility_name(String facility_name) {
		this.facility_name = facility_name;
	}

	public int getFacility_cate() {
		return facility_cate;
	}

	public void setFacility_cate(int facility_cate) {
		this.facility_cate = facility_cate;
	}

	public String getPhone_num() {
		return phone_num;
	}

	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}

	public String getFacility_add() {
		return facility_add;
	}

	public void setFacility_add(String facility_add) {
		this.facility_add = facility_add;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getHardness() {
		return hardness;
	}

	public void setHardness(double hardness) {
		this.hardness = hardness;
	}

	public LocationVO() {
		// TODO Auto-generated constructor stub
	}

	public LocationVO(int c_index, String local_si, String local_gu, String facility_name, int facility_cate,
			String phone_num, String facility_add) {
		super();
		this.c_index = c_index;
		this.local_si = local_si;
		this.local_gu = local_gu;
		this.facility_name = facility_name;
		this.facility_cate = facility_cate;
		this.phone_num = phone_num;
		this.facility_add = facility_add;
	}

	public LocationVO(int c_index, String local_si, String local_gu, String facility_name, int facility_cate,
			String phone_num, String facility_add, double latitude, double hardness) {
		super();
		this.c_index = c_index;
		this.local_si = local_si;
		this.local_gu = local_gu;
		this.facility_name = facility_name;
		this.facility_cate = facility_cate;
		this.phone_num = phone_num;
		this.facility_add = facility_add;
		this.latitude = latitude;
		this.hardness = hardness;
	}

	@Override
	public String toString() {
		return "LocationVO [c_index=" + c_index + ", local_si=" + local_si + ", local_gu=" + local_gu
				+ ", facility_name=" + facility_name + ", facility_cate=" + facility_cate + ", phone_num=" + phone_num
				+ ", facility_add=" + facility_add + ", latitude=" + latitude + ", hardness=" + hardness + "]";
	}

}
