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
import com.onedu.mvc.goods.model.dto.ImgDTO;
import com.onedu.mvc.goods.model.dto.OptionDTO;
import com.onedu.mvc.goods.model.service.OrderService;
import com.onedu.mvc.member.model.dto.MemberDTO;


@WebServlet("/goods/order")
public class OrderServlet extends HttpServlet {

	/* 결제하기 버튼 클릭 시 get요청이 들어오므로 주문정보를 입력하는 form으로 포워드 해주는 역할 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		OrderService orderService = new OrderService();
		
		String path = "/WEB-INF/views/order/goodsOrderForm.jsp";
//		
//		//로그인 유저 정보를 세션에 담기
//		HttpSession session = request.getSession();
//		session = request.getSession();
//		
//		MemberDTO loginMember = new MemberDTO();
//		loginMember = (MemberDTO) session.getAttribute("loginMember");
//		
//		if(loginMember == null) {
//			System.out.println("로그인이 필요합니다.");
//		}
//		
//		System.out.println("로그인 회원 확인 !!!!" + loginMember);

		List<OptionDTO> optionList = new ArrayList<>();
		
		String op1 = request.getParameter("option1");
		String op2 = request.getParameter("option2");
		
		if(op1 != null) {
		
			OptionDTO option1 = orderService.selectOption(op1);
			optionList.add(option1);
			System.out.println(option1);
			
		}
		if(op2 != null) {
			OptionDTO option2 = orderService.selectOption(op2);
			optionList.add(option2);
			System.out.println(option2);
		}
		
		GoodsDTO goods = new GoodsDTO();
		
		
		String price = request.getParameter("price");
		price = price.replace(",", "");
		price = price.replace("원", "");
		
		System.out.println("price !!!" + price);
		/* 상품을 선택 */
		goods.setGoodsNo(Integer.parseInt(request.getParameter("goodsNo")));
		goods.setGoodsName(request.getParameter("goodsName"));
		goods.setPrice(Integer.parseInt(price));
		goods.setAmount(Integer.parseInt(request.getParameter("amount")));
		
		if(optionList != null) {
			goods.setOptionList(optionList);			
		}

		ImgDTO img = orderService.selectImg(goods);		
		
		List<ImgDTO> imgList = new ArrayList<>();
		imgList.add(img);
		
		goods.setImgList(imgList);

		request.setAttribute("goods", goods);

		request.getRequestDispatcher(path).forward(request, response);

	}
	
}
