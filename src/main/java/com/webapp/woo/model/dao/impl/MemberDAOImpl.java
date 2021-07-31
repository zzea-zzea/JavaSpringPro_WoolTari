package com.webapp.woo.model.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.webapp.woo.model.dao.inf.IMemberDAO;
import com.webapp.woo.model.vo.MemberVO;

public class MemberDAOImpl implements IMemberDAO {
	
	// SQL 상수 정의부
	
		public static final String SQL_INSERT_MEMBER_CRYPTO // 암호화 aes,hex 
			= "insert into members values(null, "
					+ "?,?,?,?, " + 
					" hex(aes_encrypt(?, ?)), now(), now())";
		
		public static final String SQL_MEMBER_DUPCHECK  
			= "select count(id) from members where login = ?"; // 1 or 0
		
		private static final String SQL_SELECT_ALL_MEMBERS 
			= "select * from members order by joined_at desc";
		
		private static final String SQL_SELECT_ONE_MEMBER_ID
			= "select * from members where id = ?";
		
		private static final String SQL_SELECT_ONE_MEMBER_LOGIN
			= "select * from members where login = ?";
		
	
		private static final String SQL_UPDATE_MEMBER 
		= "update members set name=?, age=?, email=?," // 암호화 pw
		+ " pw=hex(aes_encrypt(?, ?)), updated_at = now() where id = ?";	
		
		
		private static final String SQL_DECRYPT_PW
			= "select id, email , login, "
				+ "cast(aes_decrypt(unhex(pw),?) as char(32) "
				+ "character set utf8) as pw "
				+ "from members where login = ?";
	
	
	
	@Autowired
	private JdbcTemplate jtem; 
	
	// 가입할수있다
	@Override
	public boolean insertNewMember(MemberVO mb) {
		
		return false;
	}

	// 로그인명 중복체크
	@Override
	public boolean idchackMember(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	// 별명 중복체크
	@Override
	public boolean nickchackMember(String nickName) {
		// TODO Auto-generated method stub
		return false;
	}

	// 로그인
	@Override
	public int loginProcess(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 아이디찾기
	@Override
	public boolean findidMember(String name, String email) {
		// TODO Auto-generated method stub
		return false;
	}

	// 비밀번호찾기
	@Override
	public boolean findpwMember(String name, String email) {
		// TODO Auto-generated method stub
		return false;
	}

	// 비밀번호 변경
	@Override
	public boolean updateOneMember(MemberVO mb) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberVO selectOneMember(int MemberIndex) {
		try {
			MemberVO mb =				
			jtem.queryForObject(SQL_SELECT_ONE_MEMBER_ID, 
				new RowMapper<MemberVO>() {
	
					@Override
					public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						return new MemberVO(rs.getInt("MemberIndex"),
								"WOOLTARI_"+rs.getString("Id"), 
								rs.getString("Pw"), 
								rs.getString("Name"), 
								rs.getString("Phone"), 
								rs.getString("Brith"),
								rs.getString("NickName"),
								rs.getInt("Gender"), 
								rs.getString("Email"), 
								rs.getInt("IsMember"),
								rs.getString("NumMember"), 
								rs.getString("Buisness"));
								
					}
				
			}, MemberIndex);
			return mb;			
		} catch (EmptyResultDataAccessException dae) {
	
			System.out.println(
				">> DAO 에러: 회원조회 실패 - id 일치 record 없음");
			return null;
		}
	}

	@Override
	public MemberVO selectOneMember(String id) {
		try {
			return jtem.queryForObject(SQL_SELECT_ONE_MEMBER_LOGIN,
					BeanPropertyRowMapper.newInstance(MemberVO.class), id);
			} catch (EmptyResultDataAccessException dae) {
				System.out.println(
					"ERROR: DB에 login이 일치하는 레코드 없음! - " + id);
				return null;
			} catch (DataAccessException dae) {
				// DataAccessException spring DAO에서는 최상위 예외 객체..
				//dae.printStackTrace();
				System.out.println(
						"ERROR: DB DAO 에러 - " + id);
				return null;
			}
	}

	@Override
	public String decryptPassword(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
