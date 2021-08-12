package com.webapp.woo.service.inf;

import java.util.List;

import com.webapp.woo.model.vo.SupportVO;

public interface ISupportSVC {

	// 회원이 후원한 내역을 전부 가져올 수 있다.
	List<SupportVO> oneUserSupport(int memberIndex);
}
