package com.onedu.mvc.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.member.model.service.MemberService;


@WebServlet("/member/idCheck")
public class MemberIdCheckServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("memberId");
		
		MemberService memberService = new MemberService();
		int result = memberService.memberIdCheck(userId);
		
		PrintWriter out = response.getWriter();
		
		if(result > 0) {
			out.print("fail");
		} else {
			out.print("success");
		}
	}

}
