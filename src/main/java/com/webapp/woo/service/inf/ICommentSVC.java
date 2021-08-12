package com.webapp.woo.service.inf;

import java.util.List;

import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.Comment_deVO;

public interface ICommentSVC {

	// 회원이 게시글에 댓글을 달 수 있다.
	boolean Writecomment(CommentVO CR, int memberIdex, int boardIndex);
	int Writecomment(CommentVO CR);

	// 회원이 게시글에 단 댓글을 수정 할 수 있다.
	boolean updateOneComment(CommentVO CR);

	// 회원이 게시글에 있는 댓글에 답글을 달 수 있다.
	boolean WriteReply(Comment_deVO CD, int memberIdex, int commentId);

	// 회원이 게시글에 있는 댓글에 자신이 쓴 댓글을 수정할 수 있다.
	boolean UpdateOneReply(Comment_deVO CD);

	// 회원이 자신의 댓글을 삭제 할 수 있다.
	boolean deleteComment(int commentIndex);

	// 회원이 자신의 댓글에 답글에 삭제 할 수 있다.
	boolean deleteComment_de(int commentDeIndex);

	// 특정 게시글에 달린 댓글 전부를 가져온다
	List<CommentVO> CommentListForBoard(int boardIndex);

	// 특정 게시글에 대한 댓글 수...
	int checkCommentCountForBoard(int BoardIndex);

	// 댓글에 달린 대댓글 전부를 가져온다.
	List<Comment_deVO> Comment_de_ListForcomment(int commentIndex);
	
	// 자신이 쓴 댓글을 가져온다
	CommentVO selectOneComment(int commentIndex);
}
