package com.webapp.woo.model.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.webapp.woo.model.dao.inf.ILocationDAO;
import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.Comment_deVO;
import com.webapp.woo.model.vo.LocationVO;

public class LocationDAOImpl implements ILocationDAO {

	@Autowired
	private JdbcTemplate jtem;

	@Override
	public List<LocationVO> selectAllLocationList(String local_si) {
		return jtem.query("select * from center_location where local_si = ?", BeanPropertyRowMapper.newInstance(LocationVO.class), local_si);
	}

	@Override
	public LocationVO selectOneLocation(int c_index) {
		try {
			return jtem.queryForObject("select * from center_location where c_index = ?", BeanPropertyRowMapper.newInstance(LocationVO.class), c_index);
		} catch (EmptyResultDataAccessException e) {
			System.out.println("dao: ERROR 0개 시설 조회에러!");
			return null;
		} catch (DataAccessException dae) {
			System.out.println("dao: ERROR 시설 조회 db에러!");
			return null;
		}
	}

}
