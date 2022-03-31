package com.onedu.mvc.goods.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.OptionDTO;
import com.onedu.mvc.goods.model.dto.OrderDTO;
import com.onedu.mvc.goods.model.dto.PaymentDTO;
import com.onedu.mvc.goods.model.service.OrderService;
import com.onedu.mvc.member.model.dto.MemberDTO;

@WebServlet("/order/insert")
public class OrderInsertServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 세션 로그인 정보 담기
		HttpSession session = request.getSession();
		MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");

		// 주문 입력폼 정보 담기
		OrderDTO newOrder = new OrderDTO();
		newOrder.setUserId(loginMember.getUserId());
		newOrder.setReceiverName(request.getParameter("buyer_tel"));
		newOrder.setReceiverPhone(request.getParameter("buyer_tel"));
		newOrder.setZipCode(request.getParameter("buyer_postcode"));
		newOrder.setAddress(request.getParameter("buyer_addr"));
		newOrder.setExtraAddress(request.getParameter("buyer_addr2"));
		newOrder.setShipMemo(request.getParameter("shipMemo"));

		System.out.println("유저확인 : " + newOrder.getUserId());

		// 결제 정보 담기
		PaymentDTO newPayment = new PaymentDTO();

		newPayment.setPayNo(request.getParameter("imp_uid"));
		newPayment.setAmount(Integer.parseInt(request.getParameter("price")));

		// 옵션 정보 담기
		OptionDTO option = new OptionDTO();
		 
		List<OptionDTO> optionList = new ArrayList<>(); 
		 
		String[] op = request.getParameterValues("optionNo");
		System.out.println("op확인!!!!!!!!!!" + op[0]);
		
		  if(op != null) {
			  
			  for (int i = 0; i < op.length ; i++) {
				  System.out.println("option 배열 확인하기 " + op[i]);
				  option.setOptionNo(Integer.parseInt(op[i]));
				  
				  optionList.add(option); 
			  }
		  }
		  
		// 주문 상품 정보 담기
		GoodsDTO goods = new GoodsDTO();
		  
		
		goods.setGoodsNo(Integer.parseInt(request.getParameter("goodsNo")));
		goods.setAmount(Integer.parseInt(request.getParameter("amount")));
		goods.setPrice(Integer.parseInt(request.getParameter("price")));


		System.out.println(" !!! 상품목록 확인 !!!! :" + goods);

		OrderService orderService = new OrderService();

		int result = orderService.insertOrder(newOrder, newPayment, goods);

		PrintWriter out = response.getWriter();

		if (result > 0) {
			out.append("y");

		} else {
			out.append("n");
		}

		out.flush();

		out.close();

	}

}
