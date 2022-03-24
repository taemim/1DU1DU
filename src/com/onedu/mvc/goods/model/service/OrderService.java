package com.onedu.mvc.goods.model.service;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.goods.model.dao.OrderDAO;
import com.onedu.mvc.goods.model.dto.OrderDTO;

public class OrderService {
	
	private final OrderDTO orderDTO;
	
	public OrderService() {
		orderDTO = new OrderDTO();
	}
	/* 신규 주문 등록하기 */
	public int insertOrder(OrderDTO newOrder) {
		
		/* Connection 생성 */
		
		SqlSession session = getSqlSession();
		
		int result = OrderDAO.insertOrder(session, newOrder);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
