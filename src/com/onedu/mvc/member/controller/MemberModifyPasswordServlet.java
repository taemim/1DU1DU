package com.onedu.mvc.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.member.model.dto.MemberDTO;
import com.onedu.mvc.member.model.service.MemberService;


@WebServlet("/member/modifyPassword")
public class MemberModifyPasswordServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/member/modifyPasswordForm.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberDTO loginUser = (MemberDTO) request.getSession().getAttribute("loginMember");
		String userId = loginUser.getUserId();
		String checkPwd = request.getParameter("checkPwd"); 
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setUserId(userId);
		requestMember.setUserPwd(checkPwd);
		
		
		
		String userPwd = request.getParameter("userPwd"); 

		int result = new MemberService().modifyPassword(requestMember, userPwd);

		String page = "";
		
		if(result > 0) {
			page = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateMemberPassword");
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 비밀번호 정보 수정 실패!");
			request.setAttribute("failedCode", "modifyPwd");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
