package com.onedu.mvc.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.member.model.dto.MemberDTO;
import com.onedu.mvc.member.model.service.MemberService;

@WebServlet("/mypage/my-modify")
public class MemberModifyServlet extends HttpServlet {
	
	/* 정보 수정 버튼 클릭 시 get요청이 들어오기 때문에 정보수정 하는 form으로 포워딩 해주는 역할 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/mypage/my-modify.jsp").forward(request, response);
		
	}

	/* 정보 수정 폼을 작성 후 post 요청을 할 경우 처리하는 역할 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		
		
		 String userId =
		 ((MemberDTO)request.getSession().getAttribute("loginMember")).getUserId();
		 
		String phone = request.getParameter("phone").replace("-", "");
		String email = request.getParameter("email");
		
		String postal = request.getParameter("postal");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		
		
		
		
		
		MemberDTO requestMember = new MemberDTO();

		requestMember.setUserId(userId);
		requestMember.setPhone(phone);
		requestMember.setEmail(email);
		requestMember.setPostal(postal);
		requestMember.setAddress(address);
		requestMember.setAddress2(address2);
		
		System.out.println("memberController requestMember : " + requestMember);
		
		MemberDTO changedMemberInfo = new MemberService().modifyMember(requestMember);
		
		System.out.println("memberController changedMemberInfo : " + changedMemberInfo);
		
		String page = "";
		
		if(changedMemberInfo != null) {
			request.getSession().setAttribute("loginMember", changedMemberInfo);
			page = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateMember");
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 정보 수정 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);

	}

}
