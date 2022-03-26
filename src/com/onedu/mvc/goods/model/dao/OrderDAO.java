package com.onedu.mvc.goods.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.goods.model.dto.OrderDTO;

public class OrderDAO {

	public static int insertOrder(SqlSession session, OrderDTO newOrder) {
		
		return session.insert("OrderDAO.insertOrder", newOrder);
	}


}
