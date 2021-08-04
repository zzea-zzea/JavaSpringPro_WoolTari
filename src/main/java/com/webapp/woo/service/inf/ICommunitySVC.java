package com.webapp.woo.service.inf;

import java.util.List;

import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.Comment_deVO;
import com.webapp.woo.model.vo.CommunityVO;

public interface ICommunitySVC {
	int PAGE_SIZE = 15;

	// 회원이 게시글을 만들 수 있다.
	boolean WriteNewContent(CommunityVO CV);
	int WriteNewContentReturnKey(CommunityVO CV);

	// 회원이 게시글을 볼 수 있다.
	CommunityVO selectOneContent(int boardIndex, int memberIndex);

	// 회원이 게시글에 댓글을 달 수 있다.
	boolean Writecomment(CommentVO CR, int memberIdex, int boardIndex);

	// 회원이 게시글에 단 댓글을 수정 할 수 있다.
	boolean updateOneComment(CommentVO CR);

	// 회원이 게시글에 있는 댓글에 답글을 달 수 있다.
	boolean WriteReply(Comment_deVO CD, int memberIdex, int commentId);

	// 회원이 게시글에 있는 댓글에 자신이 쓴 댓글을 수정할 수 있다.
	boolean UpdateOneReply(Comment_deVO CD);

	// 회원이 자신의 게시글을 수정하거나 삭제 할 수 있다.
	boolean updateOneContent(CommunityVO CV);

	// 회원이 자신의 게시글을 삭제 할 수 있다.
	boolean deleteBoard(int boardIndex);

	// 회원이 자신의 댓글을 삭제 할 수 있다.
	boolean deleteComment(int commentIndex);

	// 회원이 자신의 댓글에 답글에 삭제 할 수 있다.
	boolean deleteComment_de(int commentDeIndex);

	// 조회수 증가
	boolean increaseviews(int boardIndex);

	// 게시글 페이지
	List<CommunityVO> selectAllBoard(int pg);

	// 최대 페이지 수 (전체 페이지 수)
	int checkMaxPageNumber();

	// 전체 게시글 레코드 수
	int checkAllNumberOfBoard();

	// 게시글 전부를 가져올 수 있다.
	List<CommunityVO> CommunityList();

	// 게시글을 카테고리로 검색 할 수 있다.
	List<CommunityVO> searchboardforcate(int cate);
}
