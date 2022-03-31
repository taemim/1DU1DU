package com.onedu.mvc.taste.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.cart.model.service.CartService;

@WebServlet("/taste")
public class TasteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		/* 1. 파라미터 꺼내기 */
		request.getParameter("userName");
		
		/* 2. 비즈니스 로직 호출 */
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		path = "/WEB-INF/views/common/success.jsp";
		request.setAttribute("successCode", "deleteCart");
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
}
