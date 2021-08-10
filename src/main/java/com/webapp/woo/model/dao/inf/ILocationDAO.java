package com.webapp.woo.model.dao.inf;

import java.util.List;

import com.webapp.woo.model.vo.LocationVO;

public interface ILocationDAO {

	LocationVO selectOneLocation(int c_index);

	List<LocationVO> selectAllLocationList(String local_si);

}
