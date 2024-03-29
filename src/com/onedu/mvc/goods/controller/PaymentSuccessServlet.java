package com.onedu.mvc.goods.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.onedu.mvc.goods.model.dto.PaymentDTO;
import com.onedu.mvc.goods.model.service.OrderService;



@WebServlet("/payment/complete")
public class PaymentSuccessServlet extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/order/paymentComplete.jsp";
		
		PaymentDTO newPayment = new PaymentDTO();
		newPayment.setPayNo(request.getParameter("payNo"));

		
		OrderService orderService = new OrderService();
		
		newPayment = orderService.selsctPayment(newPayment);

		request.setAttribute("payment", newPayment);
		
		request.getRequestDispatcher(path).forward(request, response);
				
	}

}
