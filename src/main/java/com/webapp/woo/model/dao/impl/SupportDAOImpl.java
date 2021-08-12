package com.webapp.woo.model.dao.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.webapp.woo.model.dao.inf.ISupportDAO;
import com.webapp.woo.model.vo.CommunityVO;
import com.webapp.woo.model.vo.SupportVO;
@Repository
public class SupportDAOImpl implements ISupportDAO {

	@Autowired
	private JdbcTemplate jtem; // 자동주입 x
	
	@Override
	public List<SupportVO> oneUserSupport(int memberIndex) {
		// TODO Auto-generated method stub
		return jtem.query("select * from wooltari_db.support where member_index = ?", 
				BeanPropertyRowMapper.newInstance(SupportVO.class), memberIndex);
	}

}
