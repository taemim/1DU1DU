package com.onedu.mvc.goods.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.OptionDTO;
import com.onedu.mvc.goods.model.service.GoodsService;
import com.onedu.mvc.member.model.dto.MemberDTO;


@WebServlet("/goods/order")
public class OrderServlet extends HttpServlet {

	/* 결제하기 버튼 클릭 시 get요청이 들어오므로 주문정보를 입력하는 form으로 포워드 해주는 역할 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/order/goodsOrderForm.jsp";
		
		MemberDTO loginUser = new MemberDTO();
		loginUser.setUserId("USER02");
		loginUser.setUserName("홍길동");
		loginUser.setPhone("010-7179-2881");
		loginUser.setAddress("서울시 강남구 역삼2동");
		loginUser.setAddress2("202호");
		loginUser.setPostal("23456");
		loginUser.setEmail("dmab14@gmail.com");
		
		//로그인 유저 정보를 세션에 담기
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", loginUser);
				
		GoodsDTO goods = new GoodsDTO();

		OptionDTO option1 = new OptionDTO(1, 3, "200g", 0, 1, "용량");
		OptionDTO option2 = new OptionDTO(1, 3, "400g", 0, 1, "용량");
		List<OptionDTO> optionList = new ArrayList<>();
		optionList.add(option1);
		optionList.add(option2);
				
		/* 상품을 선택 */
		goods.setGoodsNo(1);
		goods.setGoodsName("주문테스트용상품1");
		goods.setPrice(1000);
		goods.setOptionList(optionList);
		goods.setAmount(2);
		

		request.setAttribute("goods", goods);
		
		request.getRequestDispatcher(path).forward(request, response);

	}
	
}
