package com.onedu.mvc.cart.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.cart.model.dao.CartDAO;
import com.onedu.mvc.cart.model.dto.CartDTO;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

public class CartService {
	
	private final CartDAO cartDAO;
	
	public CartService() {
		cartDAO = new CartDAO();
	}

	/* 장바구니 전체 조회용 메소드 */
	public List<CartDTO> selectAllCartList() {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		List<CartDTO> cartList = cartDAO.selectAllCartList(sqlSession);
		
		/* 3. 트랜잭션 처리 - 전체 조회이기 때문에 생략 */
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return cartList;
	}

	/* 장바구니 삭제용 메소드 */
	public int deleteCart(String[] noList) {

		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		
		// 선생님 도움 받은 기능 구현
		int result = 0;
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		/* cartDAO에서 여러 번 수행할 수 있기 때문에 반복문으로 결과를 처리한다.
		 * 결과를 int로 받고 싶다면 parsing 처리를 해준다. */
		for(int i = 0; i < noList.length; i++) {
			result += cartDAO.deleteCart(sqlSession, Integer.parseInt(noList[i]));
		}
		
		
		/* 3. 트랜잭션 처리 */
		if(result == noList.length) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return result;
	}

	/* 장바구니 수량 조절용 메소드 */
	public int updateCart(CartDTO updateCart) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		int result = cartDAO.updateCart(sqlSession, updateCart);
		
		/* 3. 트랜잭션 처리 */
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return result;
	}

	/* 장바구니 상품 개별 삭제용 메소드 */
	public int deleteOneCart(int no) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		int result = cartDAO.deleteOneCart(sqlSession, no);
		
		/* 3. 트랜잭션 처리 */
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return result;
	}

	/* 장바구니 추가용 메소드 */
	public int insertCart(CartDTO insertCart) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		int result = cartDAO.insertCart(sqlSession, insertCart);
		
		/* 3. 트랜잭션 처리 */
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return result;
	}

}
