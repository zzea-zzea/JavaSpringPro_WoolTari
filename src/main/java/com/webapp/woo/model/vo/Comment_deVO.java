package com.webapp.woo.model.vo;

import java.sql.Timestamp;

public class Comment_deVO {

	private int comment_de_index;
	private String content;
	private Timestamp creat_date;
	private int depth;
	private int member_index;
	private int comment_index;
	public int getComment_de_index() {
		return comment_de_index;
	}
	public void setComment_de_index(int comment_de_index) {
		this.comment_de_index = comment_de_index;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCreat_date() {
		return creat_date;
	}
	public void setCreat_date(Timestamp creat_date) {
		this.creat_date = creat_date;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getMember_index() {
		return member_index;
	}
	public void setMember_index(int member_index) {
		this.member_index = member_index;
	}
	public int getComment_index() {
		return comment_index;
	}
	public void setComment_index(int comment_index) {
		this.comment_index = comment_index;
	}
	
	public Comment_deVO() {}
	
	public Comment_deVO(int comment_de_index, String content, Timestamp creat_date, int depth, int member_index,
			int comment_index) {
		super();
		this.comment_de_index = comment_de_index;
		this.content = content;
		this.creat_date = creat_date;
		this.depth = depth;
		this.member_index = member_index;
		this.comment_index = comment_index;
	}
	@Override
	public String toString() {
		return "Comment_deVO [comment_de_index=" + comment_de_index + ", content=" + content + ", creat_date="
				+ creat_date + ", depth=" + depth + ", member_index=" + member_index + ", comment_index="
				+ comment_index + "]";
	}
	
	
	
}
