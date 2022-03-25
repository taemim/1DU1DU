package com.onedu.mvc.goods.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.goods.model.dto.GoodsDTO;

public class GoodsDAO {

	/* 일반 상품 목록 조회 메소드*/
	public List<GoodsDTO> selectGoodsList(SqlSession session) {
		
		return session.selectList("GoodsDAO.selectGoodsList");
	}
	
	

}
