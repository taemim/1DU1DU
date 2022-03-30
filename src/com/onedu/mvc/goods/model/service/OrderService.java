package com.onedu.mvc.goods.model.service;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.goods.model.dao.OrderDAO;
import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.ImgDTO;
import com.onedu.mvc.goods.model.dto.OptionDTO;
import com.onedu.mvc.goods.model.dto.OrderDTO;
import com.onedu.mvc.goods.model.dto.PaymentDTO;

public class OrderService {
	
	/* DB에 주문테이블 insert 하기  */
	public int insertOrder(OrderDTO newOrder, PaymentDTO newPayment, GoodsDTO goods ) {
		int result;
				
		SqlSession session = getSqlSession();
		
		int result1 = OrderDAO.insertOrder(session, newOrder);
		int result2 = OrderDAO.insertPayment(session, newPayment);
		int result3 = OrderDAO.insertGoodsList(session, goods);
		
		if(goods.getOptionList() !=null) {
			
			result3 = OrderDAO.insertOrderOp(session, goods);
			
		}
		
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
			result = 0;
		}
		
		session.close();
		
		return result;
	}

	public PaymentDTO selsctPayment(PaymentDTO newPayment) {

		SqlSession session = getSqlSession();
		
		PaymentDTO payment= OrderDAO.selectPaymentResult(session, newPayment);
		
		
		session.close();
		
		return payment;
	}

	public ImgDTO selectImg(GoodsDTO goods) {

		SqlSession session = getSqlSession();
		
		ImgDTO img = OrderDAO.selectImg(session, goods);
		
		session.close();
		
		return img;
	}

	public OptionDTO selectOption(String op) {
		
		SqlSession session = getSqlSession();
		
		OptionDTO option = OrderDAO.selectOption(session, op);
		
		session.close();
		
		return option;
	}
}
