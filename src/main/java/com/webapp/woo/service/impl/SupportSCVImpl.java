package com.webapp.woo.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webapp.woo.model.dao.inf.ISupportDAO;
import com.webapp.woo.model.vo.SupportVO;
import com.webapp.woo.service.inf.ISupportSVC;
@Service
public class SupportSCVImpl implements ISupportSVC {

   @Autowired
   ISupportDAO isDAO;
   
   @Override
   public List<SupportVO> oneUserSupport(int memberIndex) {
      // TODO Auto-generated method stub
      return isDAO.oneUserSupport(memberIndex);
   }

   @Override
   public boolean insertSupport(SupportVO SV) {
      // TODO Auto-generated method stub
      return isDAO.insertSupport(SV);
   }

   @Override
   public boolean deleteSupport(int siId) {
      // TODO Auto-generated method stub
      return isDAO.deleteSupport(siId);
   }

@Override
public List<SupportVO> allSupport() {
	// TODO Auto-generated method stub
	return null;
}

}