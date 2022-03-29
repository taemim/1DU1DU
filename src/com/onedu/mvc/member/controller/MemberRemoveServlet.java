package com.onedu.mvc.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.member.model.dto.MemberDTO;
import com.onedu.mvc.member.model.service.MemberService;


@WebServlet("/member/remove")
public class MemberRemoveServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDTO loginMember = (MemberDTO)request.getSession().getAttribute("loginMember");

		int no = loginMember.getGradeNo();
		
		int result = new MemberService().removeMember(no);
		
		String page = "";
		
		if(result > 0) {
			request.getSession().invalidate();
			page = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteMember");
			
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 탈퇴에 실패했습니다.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);

	}


}
