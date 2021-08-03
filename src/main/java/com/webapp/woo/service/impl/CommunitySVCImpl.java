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
	public CommunityVO selectOneContent(int board_index, int member_index) {
		String memberId = "" + member_index;
		
		if (memberId == null || memberId.isEmpty()) {
		CommunityVO CV = CommunityDao.selectOneContent(board_index, member_index); 
		
		if( CV != null ) {
			if( CommunityDao.increaseviews(board_index) ) {
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
	public boolean Writecomment(CommentVO CR, int member_index, int board_index) {
		// TODO Auto-generated method stub
		return CommunityDao.Writecomment(CR, member_index, board_index);
	}

	@Override
	public boolean updateOneComment(CommentVO CR) {
		// TODO Auto-generated method stub
		return CommunityDao.updateOneComment(CR);
	}

	@Override
	public boolean WriteReply(Comment_deVO CD, int member_index, int commentId) {
		// TODO Auto-generated method stub
		return CommunityDao.WriteReply(CD, member_index, commentId);
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
	public boolean deleteComment(int comment_index) {
		// TODO Auto-generated method stub
		return CommunityDao.deleteComment(comment_index);
	}

	@Override
	public boolean deleteComment_de(int comment_de_index) {
		// TODO Auto-generated method stub
		return CommunityDao.deleteComment_de(comment_de_index);
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
	public boolean deleteBoard(int board_index) {
		// TODO Auto-generated method stub
		return CommunityDao.deleteBoard(board_index);
	}

	@Override
	public boolean increaseviews(int board_index) {
		// TODO Auto-generated method stub
		return CommunityDao.increaseviews(board_index);
	}




}
