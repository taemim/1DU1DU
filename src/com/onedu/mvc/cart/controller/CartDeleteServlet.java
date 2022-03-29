package com.onedu.mvc.cart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.cart.model.service.CartService;

@WebServlet("/cart/delete")
public class CartDeleteServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 1. 파라미터 꺼내기 */
		/* getParameter로 인자를 꺼내면 첫 번째 것만 넘어 오게 되어 있어, 마지막 상품을 선택해서 삭제하고 싶어도 첫 번째 것이 자동으로 삭제된다.
		 * => 배열로 처리해서 선택된 상품이 삭제되게 만들자.
		 * => getParameterValues 이용 */
		/* cart.jsp에서 65번째 행
		 * <input type="checkbox" class="individual_cart_checkbox check_input_size" checked="checked" class="chkbox" value="${ prod.cartNo }" name="no"> */
		String[] noList = request.getParameterValues("no");
		
		/* 2. 비즈니스 로직 호출 */	
		int result = new CartService().deleteCart(noList);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteCart");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("massage", "상품 삭제에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
