package com.onedu.mvc.goods.model.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.OrderDTO;
import com.onedu.mvc.goods.model.dto.PaymentDTO;

public class OrderDAO {

	public static int insertOrder(SqlSession session, OrderDTO newOrder) {
		
		return session.insert("OrderDAO.insertOrder", newOrder);
	}

	public static int insertPayment(SqlSession session, PaymentDTO newPayment) {
		return session.insert("OrderDAO.insertPayment", newPayment);
	}

	public static int insertGoodsList(SqlSession session, GoodsDTO goods) {
		return session.insert("OrderDAO.insertGoodsList", goods);
	}

	public static PaymentDTO selectPaymentResult(SqlSession session, PaymentDTO newPayment) {
		
		return session.selectOne("OrderDAO.selectPayment", newPayment);
	}


}
