package com.webapp.woo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.webapp.woo.model.dao.impl.CommunityDAOImpl;
import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.Comment_deVO;
import com.webapp.woo.model.vo.CommunityVO;
import com.webapp.woo.service.inf.ICommunitySVC;

public class CommunitySVCImpl implements ICommunitySVC {

	@Autowired
	CommunityDAOImpl CommunityDao;
	// dao 빈을 자동 주입
	
	@Override
	public boolean WriteNewContent(CommunityVO CV) {
		// TODO Auto-generated method stub
		return CommunityDao.WriteNewContent(CV);
	}
	
	@Override
	public int WriteNewContentReturnKey(CommunityVO CV) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CommunityVO selectOneContent(int boardIndex, int memberIndex) {
		String memberId = "" + memberIndex;
		
		if (memberId == null || memberId.isEmpty()) {
		CommunityVO CV = CommunityDao.selectOneContent(boardIndex, memberIndex); 
		
		if( CV != null ) {
			if( CommunityDao.increaseviews(boardIndex) ) {
				CV.setViews(CV.getViews()+1);
				return CV;
			} else {
				System.out.println("SVC: selectOneContent()- 조회수++ 실패.. ");
				return null;
			}
		} else {
			System.out.println("SVC: selectOneContent()- at 조회 실패.. ");
			return null;	
		}
		}else {
			return null;
		}
	}

	@Override
	public boolean Writecomment(CommentVO CR, int memberIndex, int boardIndex) {
		// TODO Auto-generated method stub
		return CommunityDao.Writecomment(CR, memberIndex, boardIndex);
	}

	@Override
	public boolean updateOneComment(CommentVO CR) {
		// TODO Auto-generated method stub
		return CommunityDao.updateOneComment(CR);
	}

	@Override
	public boolean WriteReply(Comment_deVO CD, int memberIndex, int commentId) {
		// TODO Auto-generated method stub
		return CommunityDao.WriteReply(CD, memberIndex, commentId);
	}

	@Override
	public boolean UpdateOneReply(Comment_deVO CD) {
		// TODO Auto-generated method stub
		return CommunityDao.UpdateOneReply(CD);
	}

	@Override
	public boolean updateOneContent(CommunityVO CV) {
		// TODO Auto-generated method stub
		return CommunityDao.updateOneContent(CV);
	}

	@Override
	public List<CommunityVO> CommunityList() {
		// TODO Auto-generated method stub
		return CommunityDao.CommunityList();
	}


	@Override
	public boolean deleteComment(int commentIndex) {
		// TODO Auto-generated method stub
		return CommunityDao.deleteComment(commentIndex);
	}

	@Override
	public boolean deleteComment_de(int commentDeIndex) {
		// TODO Auto-generated method stub
		return CommunityDao.deleteComment_de(commentDeIndex);
	}
	
	@Override
	public List<CommunityVO> searchboardforcate(int cate) {
		// TODO Auto-generated method stub
		return CommunityDao.searchboardforcate(cate);
	}
	
	@Override
	public List<CommunityVO> selectAllBoard(int pg) {
		int blockSize = PAGE_SIZE;
		int offset = (pg - 1) * PAGE_SIZE; // 0, 5, 10, 15, 20,
		List<CommunityVO> atListPg // 0 ~ PAGE_SIZE 개수의 레코드를 조회
				= this.CommunityDao.selectAllBoard(offset, blockSize);
		System.out.println("atSvc, pg = " + pg + ", atList.size() = " + atListPg.size());
		return atListPg;
	}
	
	@Override
	public int checkMaxPageNumber() {
		int totalAtCnt = CommunityDao.checkAllNumberOfBoard();
		// 전체 게시글 수

		// 31개 레코드 => 31 / 10 == 3 나머지가 있어? +1 => 4
		// 30개 레코드 => 30 / 10 == 3 나머지가 없어? +0 => 3
		int maxPg // 최대 페이지 수
				= totalAtCnt / PAGE_SIZE + (totalAtCnt % PAGE_SIZE == 0 ? 0 : 1);
		// 나머지가 있는 경우의
		// 마지막 페이지에서는 1 ~ (PAGE_SIZE-1)개의
		// 레코드들이 존재한다면.. 1개의 페이지를 추가함..
		// 30개 글은 3페이지, 31~39개의 글은 4페이지..

		return maxPg;
	}
	@Override
	public int checkAllNumberOfBoard() {
		// TODO Auto-generated method stub
		return CommunityDao.checkAllNumberOfBoard();
	}
	@Override
	public boolean deleteBoard(int boardIndex) {
		// TODO Auto-generated method stub
		return CommunityDao.deleteBoard(boardIndex);
	}

	@Override
	public boolean increaseviews(int boardIndex) {
		// TODO Auto-generated method stub
		return CommunityDao.increaseviews(boardIndex);
	}


}
