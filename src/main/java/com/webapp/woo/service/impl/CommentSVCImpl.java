package com.webapp.woo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webapp.woo.model.dao.inf.ICommentDAO;
import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.Comment_deVO;
import com.webapp.woo.service.inf.ICommentSVC;

@Service
public class CommentSVCImpl implements ICommentSVC {

	@Autowired
	ICommentDAO CommetDAO;
	
	@Override
	public boolean Writecomment(CommentVO CR, int memberIndex, int boardIndex) {
		// TODO Auto-generated method stub
		return CommetDAO.Writecomment(CR, memberIndex, boardIndex);
	}

	@Override
	public boolean updateOneComment(CommentVO CR) {
		// TODO Auto-generated method stub
		return CommetDAO.updateOneComment(CR);
	}

	@Override
	public boolean WriteReply(Comment_deVO CD, int memberIndex, int commentId) {
		// TODO Auto-generated method stub
		return CommetDAO.WriteReply(CD, memberIndex, commentId);
	}

	@Override
	public boolean UpdateOneReply(Comment_deVO CD) {
		// TODO Auto-generated method stub
		return CommetDAO.UpdateOneReply(CD);
	}

	@Override
	public boolean deleteComment(int commentIndex) {
		// TODO Auto-generated method stub
		return CommetDAO.deleteComment(commentIndex);
	}

	@Override
	public boolean deleteComment_de(int commentDeIndex) {
		// TODO Auto-generated method stub
		return CommetDAO.deleteComment_de(commentDeIndex);
	}

	@Override
	public List<CommentVO> CommentListForBoard(int boardIndex) {
		// TODO Auto-generated method stub
		return CommetDAO.CommentListForBoard(boardIndex);
	}

	@Override
	public int checkCommentCountForBoard(int BoardIndex) {
		// TODO Auto-generated method stub
		return CommetDAO.checkCommentCountForBoard(BoardIndex);
	}

	@Override
	public List<Comment_deVO> Comment_de_ListForcomment(int commentIndex) {
		// TODO Auto-generated method stub
		return CommetDAO.Comment_de_ListForcomment(commentIndex);
	}

	@Override
	public CommentVO selectOneComment(int commentIndex) {
		// TODO Auto-generated method stub
		return CommetDAO.selectOneComment(commentIndex);
	}

}
