package com.onedu.mvc.cart.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.cart.model.dto.CartDTO;

public class CartDAO {

	/* 장바구니 전체 조회용 메소드 */
	public List<CartDTO> selectAllCartList(SqlSession sqlSession) {
		
		return sqlSession.selectList("CartDAO.selectAllCartList");
	}
	
//	/* 장바구니 추가용 메소드 */
//	public int insertCart(SqlSession sqlSession, CartDTO newCart) {
//		
//		return sqlSession.insert("CartDAO.insertCart", newCart);
//	}
	
	/* 장바구니 삭제용 메소드 */
	public int deleteCart(SqlSession sqlSession, int no) {
		
		return sqlSession.delete("CartDAO.deleteCart", no);
	}

	/* 장바구니 수량 조절용 메소드 */
	public int updateCart(SqlSession sqlSession, CartDTO updateCart) {
		
		return sqlSession.update("CartDAO.updateCart", updateCart);
	}
	
	/* 장바구니 상품 개별 삭제용 메소드 */
	public int deleteOneCart(SqlSession sqlSession, int no) {
		
		return sqlSession.delete("CartDAO.deleteOneCart", no);
	}
	
	
}
