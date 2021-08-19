package com.webapp.woo.model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;


import com.webapp.woo.model.dao.inf.ICommunityDAO;
import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.CommunityVO;
import com.webapp.woo.model.vo.MemberVO;

@Repository  // DAO 빈 자동등록
public class CommunityDAOImpl implements ICommunityDAO {
   public static final String SQL_COMMUNITY_INSERT 
   = "insert into board(cate,title,content,img_path,member_index,write_date) "
         + " values(?,?,?,?,?,now())"; 
   public static final String SQL_COMMUNITY_SELECT_ONE 
   = "select * from board where board_index = ?";
   public static final String SQL_COMMUNITY_UPDATE
   = "update board set title=?, content=?, img_path=? where board_index=?";
   public static final String SQL_COMMUNITY_INCREASE_READCOUNT
   = "update board set views = views + 1 "
         + "where board_index = ?"; // updated_at 고칠까?
   public static final String SQL_COMMUNITY_SELECT_ALL_PG
   = "select * from board order by board_index desc limit ?, ?";
   public static final String SQL_COMMUNITY_COUNT_SEARCH_ALL_PG = 
         "SELECT count(*) FROM wooltari_db.board where "
         + "cate like concat('%',?,'%')";
   public static final String SQL_COMMUNITY_CHECK_ALL_COUNT
   = "select count(*) from board"; // 게시글 총레코드 수
   public static final String SQL_COMMUNITY_DELETE_ONE =
         "delete from board where board_index = ?";
   public static final String SQL_COMMUNITY_SEARCH_ALL_PG =
         "SELECT * FROM wooltari_db.board where "
         + "cate like concat('%',?,'%')";
            
   
   @Autowired
   private JdbcTemplate jtem; // 자동주입 x
   
   @Override
   public int insertNewCommunityReturnKey2(CommunityVO at) {
      System.out.println("insertNewCommunityReturnKey2().. psc-kh 방식");
      KeyHolder kh = new GeneratedKeyHolder();
      PreparedStatementCreator psc = new PreparedStatementCreator() {         
         @Override
         public PreparedStatement createPreparedStatement( Connection con) throws SQLException {
      PreparedStatement pstmt =  con.prepareStatement(SQL_COMMUNITY_INSERT,new String[] {"board_index"}); // pk id..
      pstmt.setInt(1, at.getCate()); pstmt.setString(2, at.getTitle());
      pstmt.setString(3, at.getContent()); pstmt.setString(4, at.getImg_path());
      pstmt.setInt(5, at.getMember_index()); // <<FK>>
            return pstmt;
         }
      };
      int r = jtem.update(psc, kh); // pstmt생성객체, 키홀더객체..
      if( r == 1 ) {
         Number pk = kh.getKey();
         return pk.intValue(); // articles.id <<PK>> ai.. 
      } else 
    	  return 0;            
   
   }

   @Override
   public CommunityVO selectOneCommunity(int atId) {
      try {
         return jtem.queryForObject(SQL_COMMUNITY_SELECT_ONE, 
            BeanPropertyRowMapper
            .newInstance(CommunityVO.class), atId);
      } catch (EmptyResultDataAccessException e) {
         System.out.println("dao: ERROR 0개 게시글 조회에러!");
         return null;
      } catch (DataAccessException dae) {
         //dae.printStackTrace();
         System.out.println("dao: ERROR 게시글 조회 db에러!");
         return null;
      }   
   }
   

   @Override
   public boolean updateCommunity(CommunityVO at) {
      try {
         int r = jtem.update(SQL_COMMUNITY_UPDATE, at.getTitle(), 
               at.getContent(), at.getImg_path(), at.getBoard_index());
         return r == 1;
      } catch (DataAccessException e) {
         e.printStackTrace();
         return false;
      }
   }

   @Override
   public boolean increaseReadCount(int atId) {
      try {
         int r = jtem.update(SQL_COMMUNITY_INCREASE_READCOUNT, atId);
         return r == 1;
      } catch (DataAccessException e) {
         System.out.println(
               "dao: increaseReadCount() 조회수 증가 에러: " + atId);
         return false;
      }   
   }

   @Override
   public List<CommunityVO> selectAllCommunitysForMember(int mbId) {
      
      return jtem.query("select * from board where member_index = ?", 
            BeanPropertyRowMapper.newInstance(CommunityVO.class)
            , mbId);
   }

   @Override
   public List<CommunityVO> selectAllCommunitys(int offset, int blockSize) {
      return jtem.query(SQL_COMMUNITY_SELECT_ALL_PG, 
            BeanPropertyRowMapper.newInstance(CommunityVO.class)
            , offset, blockSize);
   }

   @Override
   public int checkAllNumberOfCommunitys() {
      int atCnt = jtem.queryForObject(
            SQL_COMMUNITY_CHECK_ALL_COUNT, Integer.class);
         // 값타입의 매핑 - 1행 1열짜리 select 결과는 값타입의 매핑..
         // String.class, Integer.class, Double.class..
      return atCnt;
   }

   @Override
   public List<CommunityVO> searchCommunitys(String keyword, int offset, int limit, String orderBy) {
      String sql = SQL_COMMUNITY_SEARCH_ALL_PG 
            + orderBy + " limit ?, ?";
      return jtem.query(sql, 
            BeanPropertyRowMapper.newInstance(CommunityVO.class),
            keyword, keyword, keyword, offset, limit);
   }

   @Override
   public int checkAllNumberOfCommunitysForSearch(String k, String target) {
      // target all 고정...
      return jtem.queryForObject(SQL_COMMUNITY_COUNT_SEARCH_ALL_PG,
            Integer.class, 
            k, k, k);
   }


   @Override
   public boolean deleteCommunity(int atId) {
      try {
         int r = jtem.update(SQL_COMMUNITY_DELETE_ONE, atId);
         return r == 1;
      } catch (DataAccessException e) {
         System.out.println(
               "dao: deleteCommunity 삭제 실패: " + atId);
         return false;
      }   
   }

   @Override
   public List<CommunityVO> searchCommunity(String k, int offset, int searchPageSize, String orderBy) {
      String sql = SQL_COMMUNITY_SEARCH_ALL_PG 
            + orderBy + " limit ?, ?";
      return jtem.query(sql, 
            BeanPropertyRowMapper.newInstance(CommunityVO.class),
            k, offset, searchPageSize);
   }

   @Override
   public List<CommunityVO> CommunityListForBoard(int mbId) {
      return jtem.query("select * from board where member_index = ?", 
            BeanPropertyRowMapper.newInstance(CommunityVO.class), mbId);
   }

@Override
public List<CommunityVO> selectAllCommunitys() {
	 return jtem.query("select * from wooltari_db.board", BeanPropertyRowMapper.newInstance(CommunityVO.class));
}

   

   

}