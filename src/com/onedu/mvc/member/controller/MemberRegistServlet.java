package com.onedu.mvc.member.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.member.model.dto.MemberDTO;
import com.onedu.mvc.member.model.service.MemberService;


@WebServlet("/member/enroll")
public class MemberRegistServlet extends HttpServlet {
	
	/* 회원가입 버튼 클릭 시 get요청이 들어오기 때문에 회원가입 하는 form으로 포워딩 해주는 역할 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/member/enroll.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/* 회원 가입 폼을 작성 후 post 요청을 할 경우 처리하는 역할 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone").replace("-", "");
		String gender = request.getParameter("gender");
		Date birthday = Date.valueOf(request.getParameter("birthday"));
		String postal = request.getParameter("postal");
		String address = request.getParameter("address"); 
		String address2 = request.getParameter("address2");
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setUserId(userId);
		requestMember.setUserPwd(userPwd);
		requestMember.setUserName(userName);
		requestMember.setEmail(email);
		requestMember.setPhone(phone);
		requestMember.setGender(gender);
		requestMember.setBirthday(birthday);
		requestMember.setPostal(postal);
		requestMember.setAddress(address);
		requestMember.setAddress2(address2);
		
		System.out.println("memberController requestMember : " + requestMember);
		
		int result = new MemberService().registMember(requestMember);
		
		System.out.println("memberController result : " + result);
		
		String page = "";
		
		if(result > 0) {
			
			page = "/WEB-INF/views/common/success.jsp";
			
			request.setAttribute("successCode", "insertMember");
			
		} else {
			
			page = "/WEB-INF/views/common/failed.jsp";
			
			request.setAttribute("message", "회원 가입 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);

		
	}

}
