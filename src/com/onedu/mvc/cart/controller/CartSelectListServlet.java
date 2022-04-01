package com.onedu.mvc.cart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.cart.model.dto.CartDTO;
import com.onedu.mvc.cart.model.service.CartService;
import com.onedu.mvc.member.model.dto.MemberDTO;

@WebServlet("/cart/list")
public class CartSelectListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. 파라미터 꺼내기 */
		/* 태미님이 알려주신 코드
		 * => user의 정보로 조회해 오는 것이기 때문에 user의 정보를 넘겨줘야 한다. */
		HttpSession session = request.getSession();
        MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");
        String path = "";
        
        if(loginMember != null) {
			
        	String userId = loginMember.getUserId();
		
        
		
		/* 2. 비즈니스 로직 호출 */
        List<CartDTO> cartList = new CartService().selectAllCartList(userId);
		
		System.out.println(cartList);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		if(cartList != null) {
			
			path = "/WEB-INF/views/cart/cart.jsp";
			request.setAttribute("cartList", cartList);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "장바구니 조회에 실패하였습니다.");
		}
		
        } else {
        	path = "/WEB-INF/views/member/login.jsp";
        }
        request.getRequestDispatcher(path).forward(request, response);
	}

}
