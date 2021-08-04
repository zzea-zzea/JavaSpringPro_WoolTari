package com.webapp.woo.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class CommunityVO {

	private int boardIndex;
	private int cate;
	private String title;
	private String content;
	private int views;
	private Timestamp writeDate;
	private String imgPath;
	private int memberIndex;
	
	
	
	public int getboardIndex() {
		return boardIndex;
	}
	public void setboardIndex(int boardIndex) {
		this.boardIndex = boardIndex;
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
	public Timestamp getwriteDate() {
		return writeDate;
	}
	public void setwriteDate(Timestamp writeDate) {
		this.writeDate = writeDate;
	}
	public String getimgPath() {
		return imgPath;
	}
	public void setimgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public int getmemberIndex() {
		return memberIndex;
	}
	public void setmemberIndex(int memberIndex) {
		this.memberIndex = memberIndex;
	}
	

	public CommunityVO(int cate, String title, int views, Timestamp writeDate, int memberIndex) {
		super();
		this.cate = cate;
		this.title = title;
		this.views = views;
		this.writeDate = writeDate;
		this.memberIndex = memberIndex;
	}
	public CommunityVO(int boardIndex, int cate, String title, String content, int views, Timestamp writeDate,
			String imgPath, int memberIndex) {
		super();
		this.boardIndex = boardIndex;
		this.cate = cate;
		this.title = title;
		this.content = content;
		this.views = views;
		this.writeDate = writeDate;
		this.imgPath = imgPath;
		this.memberIndex = memberIndex;
	}
	
	@Override
	public String toString() {
		return "CommunityVO [boardIndex=" + boardIndex + ", cate=" + cate + ", title=" + title + ", content="
				+ content + ", views=" + views + ", writeDate=" + writeDate + ", imgPath=" + imgPath
				+ ", memberIndex=" + memberIndex + "]";
	}
	
	
}
