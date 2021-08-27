package com.webapp.woo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webapp.woo.model.dao.inf.ILocationDAO;
import com.webapp.woo.model.vo.LocationVO;
import com.webapp.woo.service.inf.ILocationSVC;
@Service
public class LocationSVCImpl  implements ILocationSVC {

	@Autowired
	ILocationDAO LocationDAO;
	
	@Override
	public List<LocationVO> selectAllLocationList(String local_si) {
		return LocationDAO.selectAllLocationList(local_si);
	}

	@Override
	public List<LocationVO> AllLocationList() {
		// TODO Auto-generated method stub
		return LocationDAO.AllLocationList();
	}

}
