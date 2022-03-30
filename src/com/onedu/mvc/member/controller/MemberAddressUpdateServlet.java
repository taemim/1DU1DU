package com.onedu.mvc.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.goods.model.service.OrderService;
import com.onedu.mvc.member.model.dto.MemberDTO;
import com.onedu.mvc.member.service.MemberService;


@WebServlet("/member/addressUpdate")
public class MemberAddressUpdateServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDTO member = new MemberDTO();
		member.setUserId(request.getParameter("userId"));
		member.setAddress(request.getParameter("address"));
		member.setAddress2(request.getParameter("extraAddress"));
		member.setPostal(request.getParameter("zipCode"));
		
		/* 주문 폼에서 입력한 주소값으로 회원 정보 수정하기 */
		MemberService memberService = new MemberService();
		
		int result = memberService.updateAddress(member);

		PrintWriter out = response.getWriter();
		
		
		if(result > 0 ) {
			out.append("y");
			
		} else {
			out.append("n");
		}
		

		out.flush();
		
		out.close();
		
		
	}

}
