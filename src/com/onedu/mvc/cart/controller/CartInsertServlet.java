package com.onedu.mvc.cart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.cart.model.dto.CartDTO;
import com.onedu.mvc.cart.model.service.CartService;
import com.onedu.mvc.member.model.dto.MemberDTO;

@WebServlet("/cart/insert")
public class CartInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/cart/cart.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 1. 파라미터 꺼내기 */
		int prodNo = Integer.parseInt(request.getParameter("goodsNo"));
//		int amount = Integer.parseInt(request.getParameter("amount"));
//		String option1 = request.getParameter("option1");
//		String option2 = request.getParameter("option2");
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		
		CartDTO insertCart = new CartDTO();
		insertCart.setProdNo(prodNo);
//		insertCart.setAmount(amount);
		insertCart.setAmount(1);
		insertCart.setUserId(userId);
		
		System.out.println(insertCart);
		
		/* 2. 비즈니스 로직 호출 */
		CartService cartService = new CartService();
		int result = cartService.insertCart(insertCart);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertCart");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "장바구니 담기에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
