package com.onedu.mvc.taste.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/taste/taste")
public class TestMainServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		/*
		 * request.getRequestDispatcher("/WEB-INF/views/testPage/testMain.jsp").forward(
		 * request, response);
		 */
		
		request.getRequestDispatcher("/WEB-INF/views/taste/taste.jsp").forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("userName");
		
		HttpSession session = request.getSession();
		session.setAttribute("nickName", userName);
		

	}
	
}
