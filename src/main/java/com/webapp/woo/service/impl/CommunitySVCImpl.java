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
	public List<CommunityVO> selectAllCommunitys(int pg) {
		int blockSize = PAGE_SIZE; 
		int offset = (pg-1) * PAGE_SIZE; // 0, 5, 10, 15, 20,  
		List<CommunityVO> ctListPg // 0 ~ PAGE_SIZE 개수의 레코드를 조회 
			= this.ctDao.selectAllCommunitys(offset, blockSize);
		System.out.println("ctDao, pg = " + pg 
				+ ", ctListPg.size() = " + ctListPg.size());
		return ctListPg;
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

	@Override
	public int checkMaxPageNumber() {
		int totalAtCnt = ctDao.checkAllNumberOfCommunitys(); 
		// 전체 게시글 수
		
		// 31개 레코드 => 31 / 10 == 3 나머지가 있어? +1 => 4
		// 30개 레코드 => 30 / 10 == 3 나머지가 없어? +0 => 3
		int maxPg // 최대 페이지 수
			= totalAtCnt / PAGE_SIZE 
				+ (totalAtCnt % PAGE_SIZE == 0 ? 0: 1);
		// 나머지가 있는 경우의 
		// 마지막 페이지에서는 1 ~ (PAGE_SIZE-1)개의 
		// 레코드들이 존재한다면.. 1개의 페이지를 추가함..
		// 30개 글은 3페이지, 31~39개의 글은 4페이지..
		
		return maxPg;
	}


}