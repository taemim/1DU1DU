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

@WebServlet("/member/findId")
public class MemberFindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	request.getRequestDispatcher("/WEB-INF/views/member/find-id.jsp").forward(request, response);
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setEmail(email);
		requestMember.setPhone(phone);
		
	
		MemberService memberService = new MemberService();
		
		String findId = memberService.memberFindId(requestMember);
		
		
		if(findId != null) {
			request.setAttribute("message", "회원님의 아이디는" + findId + "입니다.");
			
		} else {
			request.setAttribute("message", "입력하신 정보와 일치하는 아이디가 없습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		}
	}

}
