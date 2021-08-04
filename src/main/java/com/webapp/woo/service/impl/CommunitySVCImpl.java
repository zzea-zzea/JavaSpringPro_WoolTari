package com.webapp.woo.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webapp.woo.model.dao.inf.ICommunityDAO;
import com.webapp.woo.model.vo.CommunityVO;
import com.webapp.woo.service.inf.ICommunitySVC;

@Service
public class CommunitySVCImpl implements ICommunitySVC {

	@Autowired
	ICommunityDAO ctDao;

	@Override
	public int insertNewCommunityReturnKey2(CommunityVO at) {
		// TODO Auto-generated method stub
		return ctDao.insertNewCommunityReturnKey2(at);
	}

	@Override
	public CommunityVO selectOneCommunity(int atId) {
		CommunityVO ct = ctDao.selectOneCommunity(atId);
		if (ct != null) {
			if (ctDao.increaseReadCount(atId)) {
				ct.setViews(ct.getViews() + 1);
				return ct;
		} else {
			System.out.println("SVC: selectOneCommunity()- 조회수++ 실패.. ");
			return null;
//			return at;
		}
	} else {
		System.out.println("SVC: selectOneCommunity()- at 조회 실패.. ");
		return null;	
	}
}

	@Override
	public int updateCommunity(CommunityVO at) {
		boolean r = ctDao.updateCommunity(at);
		
		return r == true ? 1:3;
	}

	@Override
	public boolean increaseReadCount(int atId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteCommunity(int atId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<CommunityVO> selectAllCommunitysForMember(int mbId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CommunityVO> selectAllArticles(int offset, int blockSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int checkAllNumberOfCommunitys() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CommunityVO> searchCommunitys(String keyword, int offset, int limit, String orderBy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int checkAllNumberOfCommunitysForSearch(String k, String target) {
		// TODO Auto-generated method stub
		return 0;
	}

}