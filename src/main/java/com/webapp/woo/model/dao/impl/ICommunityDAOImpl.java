package com.webapp.woo.model.dao.impl;

import com.webapp.woo.model.dao.inf.ICommunityDAO;
import com.webapp.woo.model.vo.CommunityVO;

public class ICommunityDAOImpl implements ICommunityDAO {

	@Override
	public boolean WriteNewContent(int memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public CommunityVO selectOneContent(int memberId, int boardId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean Writecomment(int boardId, int memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateOneComment(int boardId, int memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean WriteReply(int boardId, int commentId, int memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean UpdateOneReply(int boardId, int commentId, int memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateOneContent(CommunityVO CV, int memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public CommunityVO selectOneNotice(int memberId, int noticeId) {
		// TODO Auto-generated method stub
		return null;
	}

}
