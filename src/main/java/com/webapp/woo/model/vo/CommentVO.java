package com.webapp.woo.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class CommentVO {

	private int comment_index;
	private String content;
	private Timestamp create_date;
	private int depth;
	private int member_index;
	private int board_index;
	public int getComment_index() {
		return comment_index;
	}
	public void setComment_index(int comment_index) {
		this.comment_index = comment_index;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
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
	public int getBoard_index() {
		return board_index;
	}
	public void setBoard_index(int board_index) {
		this.board_index = board_index;
	}
	
	
	public CommentVO(int comment_index, String content, Timestamp create_date, int depth, int member_index,
			int board_index) {
		super();
		this.comment_index = comment_index;
		this.content = content;
		this.create_date = create_date;
		this.depth = depth;
		this.member_index = member_index;
		this.board_index = board_index;
	}
	@Override
	public String toString() {
		return "CommentVO [comment_index=" + comment_index + ", content=" + content + ", create_date=" + create_date
				+ ", depth=" + depth + ", member_index=" + member_index + ", board_index=" + board_index + "]";
	}
	
	
}
