package com.webapp.woo.model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;
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

import com.webapp.woo.model.dao.inf.ICommentDAO;
import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.Comment_deVO;

@Repository
public class CommentDAOImpl implements ICommentDAO {
   
   @Autowired
   private JdbcTemplate jtem;

   @Override
   public boolean Writecomment(CommentVO CR, int memberIndex, int boardIndex) {
      try {
         int r = this.jtem.update(
               "insert into comment(content, create_date, depth, member_index, board_index) "
                     + " values(?, now(), 1," + memberIndex + "," + boardIndex + ")",
               new Object[] { CR.getContent()}, new int[] { Types.VARCHAR});
         return r == 1;
      } catch (DataAccessException dae) {
         System.out.println("dao: Writecomment(vo) 실패.. ");
         return false;
      }
   }


   @Override
   public int Writecomment(CommentVO CR) {
      KeyHolder kh = new GeneratedKeyHolder();
      PreparedStatementCreator psc = new PreparedStatementCreator() {         
         @Override
         public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
            PreparedStatement pstmt = 
                  con.prepareStatement("insert into comment(content, create_date, member_index, board_index) values(?,now(),?,?)", 
                  new String[] {"comment_index"});
            pstmt.setString(1, CR.getContent());
            pstmt.setInt(2, CR.getmemberIndex());
            pstmt.setInt(3, CR.getboardIndex());
            return pstmt;
         }
      };      
      System.out.println("jtme = " + jtem);
      int r = jtem.update(psc, kh);
      return r == 1 ? kh.getKey().intValue(): 0;
      // 방금 막 생성된 댓글 레코드의 pk가 리턴됨..
   }

   
   @Override
   public boolean updateOneComment(CommentVO CR) {
      try {
         int r = jtem.update("update comment set content=? where comment_index=?",
               CR.getContent(), CR.getcommentIndex());
         return r == 1;
      } catch (DataAccessException e) {
         e.printStackTrace();
         return false;
      }
   }

   @Override
   public boolean WriteReply(Comment_deVO CD, int memberIndex, int commentId) {
      try {
         int r = this.jtem.update(
               "insert into comment(content, create_date, depth, member_index, comment_index) "
                     + " values(?, now(), ?," + memberIndex + "," + commentId + ")",
               new Object[] { CD.getContent(), CD.getDepth() }, new int[] { Types.VARCHAR, Types.INTEGER });
         return r == 1;
      } catch (DataAccessException dae) {
         System.out.println("dao: WriteReply(vo) 실패.. ");
         return false;
      }
   }

   @Override
   public boolean UpdateOneReply(Comment_deVO CD) {
      try {
         int r = jtem.update("update comment_de_index set content=? write_date = now() where Comment_de_index = ?",
               CD.getContent(), CD.getComment_de_index());
         return r == 1;
      } catch (DataAccessException e) {
         e.printStackTrace();
         return false;
      }
   }

   @Override
   public boolean deleteComment(int commentIndex) {
      try {
         int r = jtem.update("delete from wooltari_db.comment where comment_index = " + commentIndex);
         return r == 1;
      } catch (DataAccessException e) {
         e.printStackTrace();
         return false;
      }
   }

   @Override
   public boolean deleteComment_de(int commentDeIndex) {
      try {
         int r = jtem.update("delete from board where comment_de_index = " + commentDeIndex);
         return r == 1;
      } catch (DataAccessException e) {
         e.printStackTrace();
         return false;
      }
   }

   @Override
   public List<CommentVO> CommentListForBoard(int boardIndex) {
      return jtem.query("select * from comment where board_index = ?", 
            BeanPropertyRowMapper.newInstance(CommentVO.class), boardIndex);
   }
   
   @Override
   public List<CommentVO> CommentListForBoard2(int mbId) {
      return jtem.query("select * from comment where member_index = ?", 
            BeanPropertyRowMapper.newInstance(CommentVO.class), mbId);
   }


   @Override
   public int checkCommentCountForBoard(int BoardIndex) {
      return jtem.queryForObject("select count(*) from comment where board_index = ?",
            Integer.class, BoardIndex);
   }

   @Override
   public List<Comment_deVO> Comment_de_ListForcomment(int commentIndex) {
      return jtem.query("select * from comment_de where comment_index = ?", 
            BeanPropertyRowMapper.newInstance(Comment_deVO.class), commentIndex);
   }

   @Override
   public CommentVO selectOneComment(int commentIndex) {
      try {
         return jtem.queryForObject("select * from comment where comment_index = ?", 
            BeanPropertyRowMapper
            .newInstance(CommentVO.class), commentIndex);
      } catch (EmptyResultDataAccessException e) {
         System.out.println("dao: ERROR 0개 댓글 조회에러!");
         return null;
      } catch (DataAccessException dae) {
         //dae.printStackTrace();
         System.out.println("dao: ERROR 댓글 조회 db에러!");
         return null;
      }   
   }

}