package com.onedu.mvc.goods.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.ImgDTO;

public class GoodsDAO {

	/* 일반 상품 목록 조회 메소드*/
	public List<GoodsDTO> selectGoodsList(SqlSession session) {
		
		return session.selectList("GoodsDAO.selectGoodsList");
	}
	
	/* 일반 상품 등록 메소드 */
	public int insertGoodsDetail(SqlSession session, GoodsDTO goods) {
		
		return session.insert("GoodsDAO.insertGoodsDetail", goods);
	}
	
	/* Img 테이블에 insert */
	public int insertImg(SqlSession session, ImgDTO file) {
		
		return session.insert("GoodsDAO.insertImg", file);
	}
	
	
	

}
