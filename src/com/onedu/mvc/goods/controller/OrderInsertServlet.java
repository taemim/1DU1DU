package com.onedu.mvc.goods.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.goods.model.dto.OrderDTO;
import com.onedu.mvc.goods.model.service.OrderService;
import com.onedu.mvc.member.model.dto.MemberDTO;

@WebServlet("/order/insert")
public class OrderInsertServlet extends HttpServlet {

	/* */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		
		MemberDTO user = (MemberDTO) session.getAttribute("loginMember");
		String userId= user.getUserId();
		
		String receiverName =  request.getParameter("buyer_name");
		String receiverPhone =  request.getParameter("buyer_tel");
		String zipCode = request.getParameter("buyer_postcode");
		String address = request.getParameter("buyer_addr");
		String extraAdderess = request.getParameter("buyer_addr2");
		String shipMemo = request.getParameter("shipMemo");
		
		OrderDTO newOrder = new OrderDTO();
		newOrder.setUserId(userId);
		newOrder.setReceiverName(receiverName);
		newOrder.setReceiverPhone(receiverPhone);
		newOrder.setZipCode(zipCode);
		newOrder.setAddress(address);
		newOrder.setExtraAdderess(extraAdderess);
		newOrder.setShipMemo(shipMemo);
		
		System.out.println(extraAdderess);
		System.out.println(newOrder);
		
	    OrderService orderService = new OrderService();
		
		int result1 = orderService.insertOrder(newOrder);
		
		PrintWriter out = response.getWriter();
		
		if(result1 > 0) {
			out.append("y");
			
		} else {
			out.append("n");
		}
		

		out.flush();
		
		out.close();
		
	}

}


