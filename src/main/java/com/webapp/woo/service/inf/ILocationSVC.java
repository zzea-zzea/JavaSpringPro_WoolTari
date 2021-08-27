
package com.webapp.woo.service.inf;

import java.util.List;

import com.webapp.woo.model.vo.LocationVO;

public interface ILocationSVC {

	List<LocationVO> selectAllLocationList(String local_si);

	List<LocationVO> AllLocationList();
	
}

