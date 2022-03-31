package com.onedu.mvc.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.member.model.dto.MemberDTO;
import com.onedu.mvc.member.model.dto.MyorderDTO;
import com.onedu.mvc.member.model.service.MemberService;


@WebServlet("/mypage/orderList")
public class MyOrderListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "";
		
		// 세션 로그인 정보 담기
		HttpSession session = request.getSession();
		MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");

		MyorderDTO myOrder = new MyorderDTO();
		
		MemberService memberService = new MemberService();
		
		myOrder = memberService.selectMyOrder(loginMember);
		
		System.out.println("주문내역 조회 확인 !!! " + myOrder);
		
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
