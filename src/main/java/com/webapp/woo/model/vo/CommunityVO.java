package com.webapp.woo.model.vo;

import java.sql.Date;

public class CommunityVO {

	private int BoardId;
	private int Category;
	private String Title;
	private String Content;
	private int View;
	private Date WritteDate;
	private String ImgPath;
	private int MemberId;
	
	
	public CommunityVO(int boardId, int category, String title, int view, Date writteDate, int memberId) {
		super();
		BoardId = boardId;
		Category = category;
		Title = title;
		View = view;
		WritteDate = writteDate;
		MemberId = memberId;
	}

	public CommunityVO(int boardId, int memberId) {
		super();
		BoardId = boardId;
		MemberId = memberId;
	}

	public CommunityVO(int boardId, int category, String title, String content, int view, Date writteDate,
			String imgPath, int memberId) {
		super();
		BoardId = boardId;
		Category = category;
		Title = title;
		Content = content;
		View = view;
		WritteDate = writteDate;
		ImgPath = imgPath;
		MemberId = memberId;
	}

	@Override
	public String toString() {
		return "CommunityVO [BoardId=" + BoardId + ", Category=" + Category + ", Title=" + Title + ", Content="
				+ Content + ", View=" + View + ", WritteDate=" + WritteDate + ", ImgPath=" + ImgPath + ", MemberId="
				+ MemberId + "]";
	}

	public int getCategory() {
		return Category;
	}

	public void setCategory(int category) {
		Category = category;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public int getView() {
		return View;
	}

	public void setView(int view) {
		View = view;
	}

	public String getImgPath() {
		return ImgPath;
	}

	public void setImgPath(String imgPath) {
		ImgPath = imgPath;
	}

	public int getMemberId() {
		return MemberId;
	}

	public void setMemberId(int memberId) {
		MemberId = memberId;
	}
	
	
}
