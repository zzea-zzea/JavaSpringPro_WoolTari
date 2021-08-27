package com.webapp.woo.model.dao.impl;

import java.sql.Types;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
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

   @Override
   public boolean insertSupport(SupportVO SV) {
      try {
         int r = this.jtem.update(
               "insert into support(support_index, support_date, price, price_type, depositor_name, support_center_type, member_index) values(null, now(), ?, 1, ?, ?, ?)",
               new Object[] { SV.getPrice(), SV.getDepositorName(), SV.getSupportCenterType(), SV.getMemberIndex()}, new int[] { Types.VARCHAR, Types.VARCHAR, Types.INTEGER, Types.INTEGER});
         return r == 1;
      } catch (DataAccessException dae) {
         System.out.println("후원 추가내역 실패 ");
         return false;
      }
   }

   @Override
   public boolean deleteSupport(int siId) {
      try {
         int r = jtem.update("delete from support where support_index = ?", siId);
         return r == 1;
      } catch (DataAccessException e) {
         System.out.println(
               "dao: deleteCommunity 삭제 실패: " + siId);
         return false;
      }   
   }

@Override
public List<SupportVO> allSupport() {
	// TODO Auto-generated method stub
	return null;
}

}