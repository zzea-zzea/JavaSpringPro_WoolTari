package com.webapp.woo.model.vo;

public class MemberVO {
	private int MemberIndex; // 순서번호
	private String Id; // 아이디
	private String Pw; // 비밀번호
	private String Name; // 이름
	private String Phone; // 전화번호
	private String Brith; // 생일
	private String NickName; // 별명
	private int Gender; // 성별
	private String Email; // 이메일
	private int IsMember; // 회원인지? 사업자인지?
	private String NumMember; // 주민번호
	private String Buisness; // 사업자번호

	public MemberVO() {

	}

	public MemberVO(String id, String pw, String email) {
		super();
		Id = id;
		Pw = pw;
		Email = email;
	}

	public MemberVO(String pw) {
		super();
		Pw = pw;
	}

	public MemberVO(String id, String pw, String name, String phone, String brith, String nickName, int gender,
			String email, int isMember, String buisness) {
		super();
		Id = id;
		Pw = pw;
		Name = name;
		Phone = phone;
		Brith = brith;
		NickName = nickName;
		Gender = gender;
		Email = email;
		IsMember = isMember;
		Buisness = buisness;
	}

	public MemberVO(String name, String email, int isMember) {
		super();
		Name = name;
		Email = email;
		IsMember = isMember;
	}

	public MemberVO(String id, String pw) {
		super();
		Id = id;
		Pw = pw;
	}

	public MemberVO(String id, String pw, String name, String phone, String brith, String nickName, int gender,
			String email, int isMember, String numMember, String buisness) {
		super();
		Id = id;
		Pw = pw;
		Name = name;
		Phone = phone;
		Brith = brith;
		NickName = nickName;
		Gender = gender;
		Email = email;
		IsMember = isMember;
		NumMember = numMember;
		Buisness = buisness;
	}

	public MemberVO(int memberIndex, String id, String pw, String name, String phone, String brith, String nickName,
			int gender, String email, int isMember, String numMember, String buisness) {
		super();
		MemberIndex = memberIndex;
		Id = id;
		Pw = pw;
		Name = name;
		Phone = phone;
		Brith = brith;
		NickName = nickName;
		Gender = gender;
		Email = email;
		IsMember = isMember;
		NumMember = numMember;
		Buisness = buisness;
	}

	public int getMemberIndex() {
		return MemberIndex;
	}

	public void setMemberIndex(int memberIndex) {
		MemberIndex = memberIndex;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getPw() {
		return Pw;
	}

	public void setPw(String pw) {
		Pw = pw;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getBrith() {
		return Brith;
	}

	public void setBrith(String brith) {
		Brith = brith;
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
		return IsMember;
	}

	public void setIsMember(int isMember) {
		IsMember = isMember;
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
		return "MemberVO [MemberIndex=" + MemberIndex + ", Id=" + Id + ", Pw=" + Pw + ", Name=" + Name + ", Phone="
				+ Phone + ", Brith=" + Brith + ", NickName=" + NickName + ", Gender=" + Gender + ", Email=" + Email
				+ ", IsMember=" + IsMember + ", NumMember=" + NumMember + ", Buisness=" + Buisness + "]";
	}

}
