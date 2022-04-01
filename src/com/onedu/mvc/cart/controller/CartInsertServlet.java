package com.onedu.mvc.cart.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.cart.model.dto.CartDTO;
import com.onedu.mvc.cart.model.service.CartService;
import com.onedu.mvc.goods.model.dto.OptionDTO;
import com.onedu.mvc.member.model.dto.MemberDTO;

@WebServlet("/cart/insert")
public class CartInsertServlet extends HttpServlet {

	/* post 방식으로 보내는 폼이므로 doGet이 필요가 없다. */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		String path = "/WEB-INF/views/cart/cart.jsp";
//		
//		request.getRequestDispatcher(path).forward(request, response);
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 1. 파라미터 꺼내기 */
		int prodNo = Integer.parseInt(request.getParameter("goodsNo"));
		int amount = Integer.parseInt(request.getParameter("amount"));
//		String option1 = request.getParameter("option1");
//		String option2 = request.getParameter("option2");
//		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		
		/* 태미님이 알려주신 코드
		 * => session이 문제인 것인지 이렇게 넘기면 insert를 수행하고 select 해 오는 것이 userId로 구분이 잘 된다. */
		HttpSession session = request.getSession();
        MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");
        String userId = loginMember.getUserId();
		
		System.out.println("!!!!!!!!!!!! userId : " + userId);
		
		CartDTO newCart = new CartDTO();
		newCart.setProdNo(prodNo);
		newCart.setAmount(amount);
//		newCart.setAmount(1);
		newCart.setUserId(userId);
		
		System.out.println("!!!!!!!!!!!!!!!!!!확인용 : " + newCart);
		
		/* 태미님이 알려주신 코드
		 * => 옵션이 2개이므로 리스트에 담아서 null이 아닌 정상 수행일 경우에만 결과가 넘어가도록 한다. */
		CartService cartService = new CartService();
		
		List<OptionDTO> optionList = new ArrayList<>();
		String op1 = request.getParameter("option1");
		String op2 = request.getParameter("option2");
		
		if(op1 != null) {
			
			OptionDTO option1 = cartService.selectOption(op1);
			optionList.add(option1);
			
			System.out.println("!!!!!!!!출력용 option1 : " + option1);
		}
		
		if(op2 != null) {
			
			OptionDTO option2 = cartService.selectOption(op2);
			optionList.add(option2);
			
			System.out.println("!!!!!!!!출력용 option2 : " + option2);
		}
		
		if(optionList != null) {
			newCart.setOptionList(optionList);
		}
		
		/* 2. 비즈니스 로직 호출 */
		int result = cartService.insertCart(newCart);
		
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
