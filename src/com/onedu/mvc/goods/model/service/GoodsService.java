package com.onedu.mvc.goods.model.service;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.commons.io.monitor.FileAlterationListener;
import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.goods.model.dao.GoodsDAO;
import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.ImgDTO;

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

	public int insertGoodsDetail(GoodsDTO goods) {
		
		SqlSession session = getSqlSession();
		
		int result = 0;
		
		int goodsResult = goodsDAO.insertGoodsDetail(session, goods);
				
		System.out.println("goodsResult : " + goods);
		
		List<ImgDTO> fileList = goods.getImgList();
		
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setProdNo(goods.getGoodsNo());
		}
		
		int imgResult = 0;
		for(int i = 0; i < fileList.size(); i++) {
			imgResult += goodsDAO.insertImg(session, fileList.get(i));
		}
		
		if(goodsResult > 0 && imgResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
