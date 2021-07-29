package com.webapp.woo.model.dao.inf;

import com.webapp.woo.model.vo.CommunityVO;

public interface ICommunityDAO {
	// 회원이 게시글을 만들 수 있다.
	boolean WriteNewContent(int memberId);
	
	// 회원이 게시글을 볼 수 있다.
	CommunityVO selectOneContent(int memberId, int boardId);
	
	// 회원이 게시글에 댓글을 달 수 있다.
	boolean Writecomment(int boardId, int memberId);
	
	// 회원이 게시글에 단 댓글을 수정하거나 삭제 할 수 있다.
	boolean updateOneComment(int boardId, int memberId);
	
	// 회원이 게시글에 있는 댓글에 답글을 달 수 있다.
	boolean WriteReply(int boardId, int commentId, int memberId);
	
	// 회원이 게시글에 있는 댓글에 자신이 쓴 댓글을 수정하거나 삭제할 수 있다.
	boolean UpdateOneReply(int boardId, int commentId, int memberId);
	
	// 회원이 자신의 게시글을 수정하거나 삭제 할 수 있다.
	boolean updateOneContent(CommunityVO CV, int memberId);
	
	// 회원이 공지사항의 글을 볼 수 있다.
	CommunityVO selectOneNotice(int memberId, int noticeId);
}
