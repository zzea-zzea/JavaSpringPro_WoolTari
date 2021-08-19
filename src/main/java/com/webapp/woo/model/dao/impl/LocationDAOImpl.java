package com.webapp.woo.model.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.webapp.woo.model.dao.inf.ILocationDAO;
import com.webapp.woo.model.vo.CommentVO;
import com.webapp.woo.model.vo.Comment_deVO;
import com.webapp.woo.model.vo.LocationVO;
import com.webapp.woo.model.vo.SupportVO;
@Repository
public class LocationDAOImpl implements ILocationDAO {

	@Autowired
	private JdbcTemplate jtem;

	@Override
	public List<LocationVO> selectAllLocationList(String local_si) {
		return jtem.query("select * from center_location where local_si = ?", BeanPropertyRowMapper.newInstance(LocationVO.class), local_si);
	}

	@Override
	public List<LocationVO> AllLocationList() {
		return jtem.query("select * from wooltari_db.center_location", BeanPropertyRowMapper.newInstance(LocationVO.class));
	}

}
