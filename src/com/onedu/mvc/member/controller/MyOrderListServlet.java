package com.onedu.mvc.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.goods.model.service.OrderService;
import com.onedu.mvc.member.model.dto.MemberDTO;
import com.onedu.mvc.member.model.dto.MyorderDTO;
import java.util.*;


@WebServlet("/mypage/myOrder")
public class MyOrderListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		OrderService orderService = new OrderService();
		
		String path = "";
		
		List<MyorderDTO> myOrder = new ArrayList();
		
		
		// 세션 로그인 정보 담기
		HttpSession session = request.getSession();
		if(session.getAttribute("loginMember") != null) {
			MemberDTO loginMember = (MemberDTO)session.getAttribute("loginMember");
			String userId = loginMember.getUserId();
		
			if( userId !=null) {
			
			myOrder = orderService.selectMyOrder(userId);
			
			System.out.println("주문내역 조회 확인 !!! " + myOrder);
		}
		
		}else {
			//비회원일 경우 접근 불가
			path="";
		}
		
		if(myOrder != null) {
			path = "/WEB-INF/views/mypage/mypageOrder.jsp";
			request.setAttribute("myOrder", myOrder);
			
		} else {
			path = "/WEB-INF/views/common/filed.jsp";
			request.setAttribute("message", "주문 조회에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
