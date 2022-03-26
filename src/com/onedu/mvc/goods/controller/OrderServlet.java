package com.onedu.mvc.goods.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.OrderDTO;
import com.onedu.mvc.goods.model.service.OrderService;
import com.onedu.mvc.member.model.dto.MemberDTO;


@WebServlet("/goods/order")
public class OrderServlet extends HttpServlet {

	/* 결제하기 버튼 클릭 시 get요청이 들어오므로 주문정보를 입력하는 form으로 포워드 해주는 역할 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDTO loginMember = new MemberDTO();
		loginMember.setUserId("user02");
		loginMember.setUserName("홍길동");
		
		
		HttpSession session =request.getSession();
		session.setAttribute("loginMember", loginMember);
		
		String path = "/WEB-INF/views/order/goodsOrderForm.jsp";

				
		GoodsDTO goods1 = new GoodsDTO();
		GoodsDTO goods2 = new GoodsDTO();
		
		Map<String, String> option = new HashMap<>();
		option.put("용량", "200g");
		
		/* 상품 한개를 선택 */
		goods1.setGoodsNo(123);
		goods1.setGoodsName("주문테스트용상품1");
		goods1.setPrice(1000);
		goods1.setOption(option);
		goods1.setAmount(2);
		
		goods2.setGoodsNo(124);
		goods2.setGoodsName("주문테스트용상품2");
		goods2.setPrice(1000);
		goods2.setOption(option);
		goods2.setAmount(3);
		
		List<GoodsDTO> goodsList= new ArrayList<>();
		goodsList.add(goods1);
		goodsList.add(goods2);
		

		request.setAttribute("goodsList", goodsList);
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}


}
