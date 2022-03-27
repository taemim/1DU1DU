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
import com.onedu.mvc.member.model.dto.MemberDTO;


@WebServlet("/goods/order")
public class OrderServlet extends HttpServlet {

	/* 결제하기 버튼 클릭 시 get요청이 들어오므로 주문정보를 입력하는 form으로 포워드 해주는 역할 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDTO loginUser = new MemberDTO();
		loginUser.setUserId("user02");
		loginUser.setUserName("홍길동");
		loginUser.setPhone("010-7179-2881");
		loginUser.setAddress("서울시 강남구 역삼2동");
		loginUser.setAddress2("202호");
		loginUser.setPostal("23456");
		loginUser.setEmail("dmab14@gmail.com");
		
		//로그인 유저 정보를 세션에 담기
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", loginUser);
		
		String path = "/WEB-INF/views/order/goodsOrderForm.jsp";
				
		GoodsDTO goods1 = new GoodsDTO();
		GoodsDTO goods2 = new GoodsDTO();
		
		OptionDTO option = new OptionDTO(3,"200g", 0, 1);
		List<OptionDTO> optionList = new ArrayList<>();
		optionList.add(option);
				
		/* 상품 여러 개를 선택 */
		goods1.setGoodsNo(1);
		goods1.setGoodsName("주문테스트용상품1");
		goods1.setPrice(1000);
		goods1.setOption(optionList);
		goods1.setAmount(2);
		
		goods2.setGoodsNo(2);
		goods2.setGoodsName("주문테스트용상품2");
		goods2.setPrice(1000);
		goods2.setOption(optionList);
		goods2.setAmount(3);
		
		List<GoodsDTO> goodsList= new ArrayList<>();
		goodsList.add(goods1);
		goodsList.add(goods2);

		session.setAttribute("goodsList", goodsList);
		
		request.getRequestDispatcher(path).forward(request, response);

	}
	
}
