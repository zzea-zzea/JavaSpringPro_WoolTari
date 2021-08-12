package com.webapp.woo.model.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.webapp.woo.model.dao.inf.IMemberDAO;
import com.webapp.woo.model.vo.MemberVO;

@Repository
public class MemberDAOImpl implements IMemberDAO {
	private class MemberRowMapper implements RowMapper<MemberVO> {

		@Override
		public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			return new MemberVO(
					rs.getInt("member_index"),
					rs.getString("id"),
					rs.getString("pw"),
					rs.getString("name"), 
					rs.getString("phone"), 
					rs.getString("brith"), 
					rs.getString("nick_name"), 
					rs.getInt("gender"),
					rs.getString("email"),
					rs.getInt("is_member"),
					rs.getString("num_member"),
					rs.getString("buisness"));
		}
		
	}

	// SQL 상수 정의부
	
	public static final String SQL_INSERT_MEMBER_CRYPTO // 암호화 aes,hex
    = "insert into member values(null,?,hex(aes_encrypt(?, ?)),?,?,?,?,?,?,?,?,? ";
	
	public static final String SQL_MEMBER_DUPCHECK = "select count(id) from member where id = ?"; // 1 or 0
	
	public static final String SQL_MEMBER_NICKCHECK = "select count(nick_name) from member where nick_name = ?"; // 1 or 0

	private static final String SQL_SELECT_ALL_MEMBERS = "select * from member order by joined_at desc";

	private static final String SQL_SELECT_ONE_MEMBER_MEMBER_INDEX = "select * from member where member_index = ?";

	private static final String SQL_SELECT_ONE_MEMBER_PW = "select * from member where pw = ?";
	
	private static final String SQL_SELECT_ONE_MEMBER_ID = "select * from member where id = ?";

	private static final String SQL_SELECT_ONE_MEMBER_EMAIL = "select * from member where email = ?";

	private static final String SQL_SELECT_IDFIND = "select id from member where name = ? AND email = ?";
	
	private static final String SQL_SELECT_PWFIND = "select pw from member where id = ? AND email = ?";
	
	private static final String SQL_UPDATE_PW ="update member set pw=hex(aes_encrypt(?, ?)) where id = ? AND email = ?";
	
	private static final String SQL_UPDATE_MEMBER = "update member set name=?, age=?, email=?," // 암호화 pw
			+ " pw=hex(aes_encrypt(?, ?)), updated_at = now() where id = ?";

	private static final String SQL_DECRYPT_PW =
			"select member_index, email , id, "
			+ "cast(aes_decrypt(unhex(pw),?) as char(32) " 
			+ "character set utf8) as pw "
			+ "from member where id = ?";
	


	@Autowired
	private JdbcTemplate jtem;

	
	// 가입할수있다
	@Override
	public boolean insertNewMember(MemberVO mb) {
		try {
			int r = jtem.update( "insert into member values(null,?,pw=hex(aes_encrypt(?, ?)),?,?,?,?,?,?,?,?,? ",mb.getId(),mb.getPw(),mb.getId(), 
					mb.getName(), mb.getPhone(), mb.getBrith(),
					mb.getNickName(), mb.getGender(), mb.getEmail(), mb.getIsMember(),mb.getNumMember(), mb.getBuisness());
			return r == 1; 
			} catch (DataAccessException dae) {
				//dae.printStackTrace();
				System.out.println("ERROR: 회원 암호화 가입 실패: " + mb);
				return false;
			}
	}

	// 로그인명 중복체크
	@Override
	public boolean idchackMember(String id) {
		int r = jtem.queryForObject(SQL_MEMBER_DUPCHECK, 
				Integer.class, id);

		System.out.println(">> DAO : isDuplicatedMember() r : " + r);
		return r >= 1;
	}

	// 별명 중복체크
	@Override
	public boolean nickchackMember(String nickName) {
		int r = jtem.queryForObject(SQL_MEMBER_NICKCHECK, 
				Integer.class, nickName);

		System.out.println(">> DAO : isDuplicatedMember() r : " + r);
		return r >= 1;
	}


	// 아이디찾기
	@Override
	public MemberVO findidMember(String name, String email) {
		try {
			return jtem.queryForObject(SQL_SELECT_IDFIND,
					BeanPropertyRowMapper.newInstance(MemberVO.class), name, email);
		} catch (EmptyResultDataAccessException dae) {
				System.out.println(
					"ERROR: DB에 id이 일치하는 레코드 없음! - " + name + email);
				return null;
			} catch (DataAccessException dae) {
				// DataAccessException spring DAO에서는 최상위 예외 객체..
				//dae.printStackTrace();
				System.out.println(
						"ERROR: DB DAO 에러 - " + name + email);
				return null;
			}
		}

	// 비밀번호찾기
	@Override
	public MemberVO findpwMember(String id, String email) {
		try {
			return jtem.queryForObject(SQL_SELECT_PWFIND,
					BeanPropertyRowMapper.newInstance(MemberVO.class), id, email);
		} catch (EmptyResultDataAccessException dae) {
				System.out.println(
					"ERROR: DB에 pw이 일치하는 레코드 없음! - " + id + email);
				return null;
			} catch (DataAccessException dae) {
				// DataAccessException spring DAO에서는 최상위 예외 객체..
				//dae.printStackTrace();
				System.out.println(
						"ERROR: DB DAO 에러 - " + id + email);
				return null;
			}
	}

	// 비밀번호 변경
	@Override
	public boolean updateMemberPw(MemberVO mb) {
		try {
			int r = jtem.update(SQL_UPDATE_PW,mb.getPw(),mb.getId(), mb.getName(),mb.getEmail());
			return r == 1; 
			} catch (DataAccessException dae) {
			
				System.out.println("ERROR: 회원 비밀번호 변경 실패: " + mb);
				return false;
			}
	}

	@Override
	public MemberVO selectOneMember(int MemberIndex) {
		try {
			MemberVO mb = jtem.queryForObject(SQL_SELECT_ONE_MEMBER_MEMBER_INDEX, new RowMapper<MemberVO>() {

				@Override
				public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					return new MemberVO(rs.getInt("member_index"), rs.getString("id"), rs.getString("pw"),
							"WOOLTARI_" + rs.getString("name"), rs.getString("phone"), rs.getString("brith"),
							rs.getString("nick_name"), rs.getInt("gender"), rs.getString("email"), rs.getInt("is_member"),
							rs.getString("num_member"), rs.getString("buisness"));

				}

			}, MemberIndex);
			return mb;
		} catch (EmptyResultDataAccessException dae) {

			System.out.println(">> DAO 에러: 회원조회 실패 - id 일치 record 없음");
			return null;
		}
	}

	// 회원id로 조회함수
	@Override
	public MemberVO selectOneMember(String id) {
		try {
			return jtem.queryForObject(SQL_SELECT_ONE_MEMBER_ID, BeanPropertyRowMapper.newInstance(MemberVO.class),
					id);
		} catch (EmptyResultDataAccessException dae) {
			System.out.println("ERROR: DB에 login이 일치하는 레코드 없음! - " + id);
			return null;
		} catch (DataAccessException dae) {

			System.out.println("ERROR: DB DAO 에러 - " + id);
			return null;
		}
	}

	// 회원 email로 조회함수
	public MemberVO selectOneMemberEmail(String email) {
		try {
			return jtem.queryForObject(SQL_SELECT_ONE_MEMBER_EMAIL, BeanPropertyRowMapper.newInstance(MemberVO.class),
					email);
		} catch (EmptyResultDataAccessException dae) {
			System.out.println("ERROR: DB에 Name이 일치하는 레코드 없음! - " + email);
			return null;
		} catch (DataAccessException dae) {

			System.out.println("ERROR: DB DAO 에러 - " + email);
			return null;
		}
	}

	// 암호화 함수
	@Override
	public String decryptPassword(String id) {
		Map<String, Object> rMap = jtem.queryForMap(SQL_DECRYPT_PW, 
				new Object[] { id, id }, // args 배열..
				new int[] { Types.VARCHAR, Types.VARCHAR }); // SQL 파람 타입 명시..

		int MemberIndex = (int) rMap.get("member_Index");
		String email = (String) rMap.get("email");
		String loginDB = (String) rMap.get("id");
		String pw = (String) rMap.get("pw");
		System.out.println("memberIndex = " + MemberIndex);
		System.out.println("email = " + email);
		System.out.println("loginDB = " + loginDB);
		System.out.println("pw = " + pw);
		return pw;
	}

	@Override
	public String decryptPassword(int mbId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<MemberVO> takeAllMember() {
		// TODO Auto-generated method stub
		return jtem.query("select * from member",new MemberRowMapper());
	}

}
