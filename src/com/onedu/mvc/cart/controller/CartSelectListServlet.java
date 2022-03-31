package com.onedu.mvc.cart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.cart.model.dto.CartDTO;
import com.onedu.mvc.cart.model.service.CartService;

@WebServlet("/cart/list")
public class CartSelectListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. 파라미터 꺼내기 - 전체 조회이기 때문에 생략 */
		
		/* 2. 비즈니스 로직 호출 */
		List<CartDTO> cartList = new CartService().selectAllCartList();
		
		System.out.println(cartList);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(cartList != null) {
			
			path = "/WEB-INF/views/cart/cart.jsp";
			request.setAttribute("cartList", cartList);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "장바구니 조회에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
