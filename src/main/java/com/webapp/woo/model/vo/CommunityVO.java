package com.webapp.woo.model.vo;

import java.sql.Timestamp;

public class CommunityVO {

	private int board_index;
	private int cate;
	private String title;
	private String content;
	private int views;
	private Timestamp write_date;
	private String img_path;
	private int member_index;
	private int is_board;
	
	
	
	public int getIs_board() {
		return is_board;
	}
	public void setIs_board(int is_board) {
		this.is_board = is_board;
	}
	public int getBoard_index() {
		return board_index;
	}
	public void setBoard_index(int board_index) {
		this.board_index = board_index;
	}
	public int getCate() {
		return cate;
	}
	public void setCate(int cate) {
		this.cate = cate;
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
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public Timestamp getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public int getMember_index() {
		return member_index;
	}
	public void setMember_index(int member_index) {
		this.member_index = member_index;
	}
	public CommunityVO() {
		// TODO Auto-generated constructor stub
	}

	public CommunityVO(int cate, String title, int views, Timestamp write_date, int member_index) {
		super();
		this.cate = cate;
		this.title = title;
		this.views = views;
		this.write_date = write_date;
		this.member_index = member_index;
	}
	public CommunityVO(int board_index, int cate, String title, String content, int views, Timestamp write_date,
			String img_path, int member_index) {
		super();
		this.board_index = board_index;
		this.cate = cate;
		this.title = title;
		this.content = content;
		this.views = views;
		this.write_date = write_date;
		this.img_path = img_path;
		this.member_index = member_index;
	}
	
	
	public CommunityVO(int cate, String title, String content, String img_path, int member_index) {
		super();
		this.cate = cate;
		this.title = title;
		this.content = content;
		this.img_path = img_path;
		this.member_index = member_index;
	}
	@Override
	public String toString() {
		return "CommunityVO [board_index=" + board_index + ", cate=" + cate + ", title=" + title + ", content="
				+ content + ", views=" + views + ", write_date=" + write_date + ", img_path=" + img_path
				+ ", member_index=" + member_index + "]";
	}
	
	
}
