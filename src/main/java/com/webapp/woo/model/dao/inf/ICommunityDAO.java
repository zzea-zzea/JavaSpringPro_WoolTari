package com.webapp.woo.model.dao.inf;

import java.util.Date;
import java.util.List;


import com.webapp.woo.model.vo.CommunityVO;

public interface ICommunityDAO {
   
//   - 회원이 신규 게시글을 등록 할 수 있다.(세션, dao, 다수 파일업로드-사진/첨부)
   int insertNewCommunityReturnKey2(CommunityVO at); 
   
   
   //- 회원이 특정 게시글을 상세보기 할 수 있다. (조회수 증가 동반?)
//   artilce_show.my?atId=x ; get, proc, dao
   CommunityVO selectOneCommunity(int atId);   
   
   
   //- 회원 자신이 쓴 특정 게시글을 편집/갱신 할 수 있다. (권한/롤/세션...)
//   article_edit_form.my?atId=y; 소유자인증체크/세션, dao proc
//   article_update.my ; post, doa, proc, session
   boolean updateCommunity(CommunityVO at);
   boolean increaseReadCount(int atId); //조회수 +1 증가 
   
   //- 회원이 자신이 쓴 글을 삭제 할 수 있다.
//   artilce_remove.my?atId=z ; confirm, dao, proc, session..
   boolean deleteCommunity(int atId);   
   
//   회원이 쓴 모든 게시글 가져오기?? (mypage..)
   List<CommunityVO> selectAllCommunitysForMember(int mbId); // <<FK>>
   List<CommunityVO> selectAllCommunitys(); // <<FK>>
   
   List<CommunityVO> CommunityListForBoard(int mbId); // <<FK>>
   
//   비/회원은 전체 게시글을 리스트 조회할 수 있다. (페이지네이션, 정렬, 태깅-해시태그)
   List<CommunityVO> selectAllCommunitys(int offset, int blockSize); // pg가 기준점, 범위로 분리
   
   // 전체 게시글 레코드 수 
      int checkAllNumberOfCommunitys();

      
   // 검색..............
   //- 비/회원은 특정 키워드나 조건으로 게시글을 다수개 검색할 수 있다.
//      article_search_form.my; 키워드.. 검색 폼 준비 get form..
//      article_search.my; post dao pn order..
   List<CommunityVO> searchCommunitys(String keyword, int offset, int limit
         , String orderBy);
   // 검색 일치 레코드 총수...
   int checkAllNumberOfCommunitysForSearch(String k, String target);


   List<CommunityVO> searchCommunity(String k, int offset, int searchPageSize, String orderBy);
   
 //회원을 비활성화시킨다
   boolean activationCommunitys(int atId);
   
      
}