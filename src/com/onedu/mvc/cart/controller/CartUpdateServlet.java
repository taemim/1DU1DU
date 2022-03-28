package com.onedu.mvc.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.cart.model.dto.CartDTO;
import com.onedu.mvc.cart.model.service.CartService;

@WebServlet("/cart/update")
public class CartUpdateServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 1. 파라미터 꺼내기 */
		int cartNo = Integer.parseInt(request.getParameter("no"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		
		CartDTO updateCart = new CartDTO();
		updateCart.setCartNo(cartNo);
		updateCart.setAmount(amount);
		
		/* 2. 비즈니스 로직 호출 */
		CartService cartService = new CartService();
		int result = cartService.updateCart(updateCart);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(result > 0) {
			
			path ="/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateCart");
			request.setAttribute("cartNo", cartNo);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "수량 수정에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
