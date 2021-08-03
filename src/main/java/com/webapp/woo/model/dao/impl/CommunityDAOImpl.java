package com.webapp.woo.model.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import com.webapp.woo.model.dao.inf.ICommunityDAO;
import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.Comment_deVO;
import com.webapp.woo.model.vo.CommunityVO;

@Repository
public abstract class CommunityDAOImpl implements ICommunityDAO {

	private JdbcTemplate jtem;

	private SimpleJdbcInsert simIn; // = new Sim; // 심플 insert 클래스

	// 생성자로 자동주입 o auto DI
	@Autowired
	public CommunityDAOImpl(JdbcTemplate jtem) {
		this.jtem = jtem;
		this.simIn = new SimpleJdbcInsert(jtem.getDataSource());
		this.simIn.withTableName("board"); // articles TBL
		this.simIn.usingGeneratedKeyColumns("board_index"); // PK, AI
	}

	private class BoardRowMapper implements RowMapper<CommunityVO> {

		@Override
		public CommunityVO mapRow(ResultSet rs, int rowNum) throws SQLException {

			return new CommunityVO(rs.getInt("board_index"), rs.getInt("cate"), rs.getString("title"),
					rs.getString("content"), rs.getInt("views"), rs.getTimestamp("write_date"),
					rs.getString("img_path"), rs.getInt("member_index"));
		}

	}

	@Override
	public boolean WriteNewContent(CommunityVO CV) {
		try {
			int r = this.jtem.update(
					"insert into board(cate, title, content, views, write_date, img_path, member_index) "
							+ " values(?,?,?,?,now(),?,?)",
					new Object[] { CV.getCate(), CV.getTitle(), CV.getContent(), CV.getViews(), CV.getImg_path(),
							CV.getMember_index() },
					new int[] { Types.INTEGER, Types.INTEGER, Types.VARCHAR, Types.VARCHAR, Types.INTEGER,
							Types.VARCHAR, Types.INTEGER });
			return r == 1;
		} catch (DataAccessException dae) {
			System.out.println("dao: WriteNewContent(vo) 실패.. " + CV.getTitle());
			return false;
		}
	}

	@Override
	public CommunityVO selectOneContent(int board_index, int member_index) {
		try {
			return jtem.queryForObject("select * from board where board_index = ?",
					BeanPropertyRowMapper.newInstance(CommunityVO.class), board_index);
		} catch (EmptyResultDataAccessException e) {
			System.out.println("dao: ERROR 0개 게시글 조회에러!");
			return null;
		} catch (DataAccessException dae) {
			// dae.printStackTrace();
			System.out.println("dao: ERROR 게시글 조회 db에러!");
			return null;
		}
	}

	@Override
	public boolean Writecomment(CommentVO CR, int member_index, int board_index) {
		try {
			int r = this.jtem.update(
					"insert into comment(content, create_date, depth, member_index, board_index) "
							+ " values(?, now(), ?," + member_index + "," + board_index + ")",
					new Object[] { CR.getContent(), CR.getDepth() }, new int[] { Types.VARCHAR, Types.INTEGER });
			return r == 1;
		} catch (DataAccessException dae) {
			System.out.println("dao: Writecomment(vo) 실패.. ");
			return false;
		}
	}

	@Override
	public boolean updateOneComment(CommentVO CR) {
		try {
			int r = jtem.update("update comment set content=? write_date = now() where Comment_index = ?",
					CR.getContent(), CR.getComment_index());
			return r == 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean WriteReply(Comment_deVO CD, int member_index, int commentId) {
		try {
			int r = this.jtem.update(
					"insert into comment(content, create_date, depth, member_index, comment_index) "
							+ " values(?, now(), ?," + member_index + "," + commentId + ")",
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
	public boolean updateOneContent(CommunityVO CV) {
		try {
			int r = jtem.update("update board set title=?, content=? write_date = now() where Board_index = ?",
					CV.getTitle(), CV.getContent(), CV.getBoard_index());
			return r == 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteBoard(int board_index) {
		try {
			int r = jtem.update("delete from board where board_index = " + board_index);
			return r == 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteComment(int comment_index) {
		try {
			int r = jtem.update("delete from board where comment_index = " + comment_index);
			return r == 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteComment_de(int comment_de_index) {
		try {
			int r = jtem.update("delete from board where comment_de_index = " + comment_de_index);
			return r == 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean increaseviews(int board_index) {
		try {
			int r = jtem.update("update board set views = views + 1 where board_index = ?", board_index);
			return r == 1;
		} catch (DataAccessException e) {
			System.out.println("dao: increaseviews() 조회수 증가 에러: " + board_index);
			return false;
		}
	}

	// 페이지네이션: sql 오프셋위치번호, 페이지블록사이즈
	// 정렬: 등록날자 역순으로 고정
	@Override
	public List<CommunityVO> selectAllBoard(int offset, int blockSize) {
		return jtem.query("select * from articles order by created_at desc limit ?, ?",
				BeanPropertyRowMapper.newInstance(CommunityVO.class), offset, blockSize);
	}

	public int checkAllNumberOfBoard() {
		int boCnt = jtem.queryForObject("select count(*) from board", Integer.class);

		return boCnt;
	}

	public List<CommunityVO> CommunityList() {
		return jtem.query("select * from board order by board_index desc", new BoardRowMapper());

	}

	public List<CommunityVO> searchboardforcate(int cate) {
		return jtem.query("select * from board where cate = " + cate, new BoardRowMapper());
	}
}
