package com.onedu.mvc.member.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.member.model.dto.MemberDTO;
import com.onedu.mvc.member.model.service.MemberService;


@WebServlet("/member/login")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		request.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(request, response);
		
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		System.out.println("userId : " + userId);
		System.out.println("userPwd : " + userPwd);
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setUserId(userId);
		requestMember.setUserPwd(userPwd);
		
		MemberService memberService = new MemberService();
		
		MemberDTO loginMember = memberService.loginCheck(requestMember);
		System.out.println(loginMember);
		
		if(loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			
			response.sendRedirect(request.getContextPath());
			
		} else {
			request.setAttribute("message", "로그인 실패!");
			request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		}
		
	}

}