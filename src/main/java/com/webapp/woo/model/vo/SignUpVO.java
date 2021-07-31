package com.webapp.woo.model.vo;

import java.sql.Date;

public class SignUpVO {

	private int Member_id;
	private String UserId;
	private String UserPw;
	private String UserName;
	private String PhoneNumber;
	private String Brithday;
	private String NickName;
	private int Gender;
	private String Email;
	private int isMember;
	private String NumMember;
	private String Buisness;

	
	
	
	
	
	
	public SignUpVO(String userId, String userPw) {
		super();
		UserId = userId;
		UserPw = userPw;
	}
	



	public SignUpVO(String userName, String email, int isMember) {
		super();
		UserName = userName;
		Email = email;
		this.isMember = isMember;
	}






	public SignUpVO(int member_id, String userId, String userPw, String userName, String phoneNumber, String brithday,
			String nickName, int gender, String email, int isMember, String numMember, String buisness) {
		super();
		Member_id = member_id;
		UserId = userId;
		UserPw = userPw;
		UserName = userName;
		PhoneNumber = phoneNumber;
		Brithday = brithday;
		NickName = nickName;
		Gender = gender;
		Email = email;
		this.isMember = isMember;
		NumMember = numMember;
		Buisness = buisness;
	}
	public int getMember_id() {
		return Member_id;
	}
	public void setMember_id(int member_id) {
		Member_id = member_id;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getUserPw() {
		return UserPw;
	}
	public void setUserPw(String userPw) {
		UserPw = userPw;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getBrithday() {
		return Brithday;
	}
	public void setBrithday(String brithday) {
		Brithday = brithday;
	}
	public String getNickName() {
		return NickName;
	}
	public void setNickName(String nickName) {
		NickName = nickName;
	}
	public int getGender() {
		return Gender;
	}
	public void setGender(int gender) {
		Gender = gender;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public int getIsMember() {
		return isMember;
	}
	public void setIsMember(int isMember) {
		this.isMember = isMember;
	}
	public String getNumMember() {
		return NumMember;
	}
	public void setNumMember(String numMember) {
		NumMember = numMember;
	}
	public String getBuisness() {
		return Buisness;
	}
	public void setBuisness(String buisness) {
		Buisness = buisness;
	}
	@Override
	public String toString() {
		return "MemberVO [Member_id=" + Member_id + ", UserId=" + UserId + ", UserPw=" + UserPw + ", UserName="
				+ UserName + ", PhoneNumber=" + PhoneNumber + ", Brithday=" + Brithday + ", NickName=" + NickName
				+ ", Gender=" + Gender + ", Email=" + Email + ", isMember=" + isMember + ", NumMember=" + NumMember
				+ ", Buisness=" + Buisness + "]";
	}
	
	
}
	
	
	
	