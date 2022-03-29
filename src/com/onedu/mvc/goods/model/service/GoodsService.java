package com.onedu.mvc.goods.model.service;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.goods.model.dao.GoodsDAO;
import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.OptionDTO;

public class GoodsService {
	
	private final GoodsDAO goodsDAO;
	
	public GoodsService() {
		goodsDAO = new GoodsDAO();
	}

	/* 일반 상품 목록 조회용 메소드 */
	public List<GoodsDTO> selectGoodsList() {
		
		SqlSession session = getSqlSession();
		
		List<GoodsDTO> goodsList = goodsDAO.selectGoodsList(session);
		
		session.close();
		
		return goodsList;
	}
	
	/* 일반 상품 상세 페이지 조회용 메소드 */
	public GoodsDTO selectOneGoodsDetail(int goodsNo) {
		
		SqlSession session = getSqlSession();
		
		GoodsDTO goods = goodsDAO.selectOneGoodsDetail(session, goodsNo);;
		goods.setOptionList(goodsDAO.selectOptionList(session, goodsNo));
		session.close();
		
		return goods;
	}
	
	
	

}
