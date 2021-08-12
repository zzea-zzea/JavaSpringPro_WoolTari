package com.webapp.woo.model.vo;

import java.sql.Timestamp;

public class CommentVO {

	private int commentIndex;
	private String content;
	private Timestamp createDate;
	private int depth;
	private int memberIndex;
	private int boardIndex;
	
	public int getcommentIndex() {
		return commentIndex;
	}
	public void setcommentIndex(int commentIndex) {
		this.commentIndex = commentIndex;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getcreateDate() {
		return createDate;
	}
	public void setcreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getmemberIndex() {
		return memberIndex;
	}
	public void setmemberIndex(int memberIndex) {
		this.memberIndex = memberIndex;
	}
	public int getboardIndex() {
		return boardIndex;
	}
	public void setboardIndex(int boardIndex) {
		this.boardIndex = boardIndex;
	}
	
	public  CommentVO() {}
	
	public CommentVO(int commentIndex, String content, Timestamp createDate, int depth, int memberIndex,
			int boardIndex) {
		super();
		this.commentIndex = commentIndex;
		this.content = content;
		this.createDate = createDate;
		this.depth = depth;
		this.memberIndex = memberIndex;
		this.boardIndex = boardIndex;
	}
	@Override
	public String toString() {
		return "CommentVO [commentIndex=" + commentIndex + ", content=" + content + ", createDate=" + createDate
				+ ", depth=" + depth + ", memberIndex=" + memberIndex + ", boardIndex=" + boardIndex + "]";
	}
	
	
}
