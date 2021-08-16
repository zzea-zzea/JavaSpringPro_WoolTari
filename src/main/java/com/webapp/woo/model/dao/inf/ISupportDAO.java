package com.webapp.woo.model.dao.inf;

import java.util.List;

import com.webapp.woo.model.vo.SupportVO;

public interface ISupportDAO {

   // 회원이 후원한 내역을 전부 가져올 수 있다.
   List<SupportVO> oneUserSupport(int memberIndex);
      
   // 회원이 후원한 내역을 추가할 수 있다.
   boolean insertSupport(SupportVO SV);
   
   boolean deleteSupport(int siId);
}