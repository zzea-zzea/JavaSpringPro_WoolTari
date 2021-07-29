package com.webapp.woo.service.impl;

import com.webapp.woo.model.vo.CommunityVO;
import com.webapp.woo.service.inf.ICommunitySVC;

public class CommunitySVCImpl implements ICommunitySVC {

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
