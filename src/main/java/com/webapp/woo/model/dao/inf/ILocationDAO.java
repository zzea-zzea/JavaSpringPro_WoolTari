package com.webapp.woo.model.dao.inf;

import java.util.List;

import com.webapp.woo.model.vo.LocationVO;

public interface ILocationDAO {

	List<LocationVO> selectAllLocationList(String local_si);

	List<LocationVO> AllLocationList();
}
