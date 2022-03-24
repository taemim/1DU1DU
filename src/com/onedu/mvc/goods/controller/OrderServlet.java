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
		
		/* 상품 한개를 선택 */
		goods1.setGoodsNo(123);
		goods1.setGoodsName("주문테스트용상품");
		goods1.setPrice(1000);
		goods1.setOption("핸드드립");
		goods1.setAmount(2);
		
		goods2.setGoodsNo(124);
		goods2.setGoodsName("주문테스트용상품2");
		goods2.setPrice(1000);
		goods2.setOption("모카포트");
		goods2.setAmount(3);
		
		List<GoodsDTO> goodsList= new ArrayList<>();
		goodsList.add(goods1);
		goodsList.add(goods2);
		

		request.setAttribute("goodsList", goodsList);
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	/* 주문서 폼을 작성 후 post 요청을 할 경우 처리하는 역할 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("application/json; charset=UTF-8");
		HttpSession session = request.getSession();
		
		String userId = (String) session.getAttribute("userId");
		String receiverName = (String) request.getParameter("receiverName");
		String receivePhone = (String) request.getParameter("receiverPhone");
		String zipCode = (String) request.getParameter("zipCode");
		String address = (String) request.getParameter("address");
		String extraAdderess = (String) request.getParameter("extraAddress");
		String shipMemo = (String) request.getParameter("shipMemo");
		
		OrderDTO newOrder = new OrderDTO();
		newOrder.setUserId("userName");
		newOrder.setReceiverName("receiverName");
		newOrder.setReceivePhone(receivePhone);
		newOrder.setZipCode(zipCode);
		newOrder.setAddress(address);
		newOrder.setExtraAdderess(extraAdderess);
		newOrder.setShipMemo(shipMemo);
		
		
		OrderService orderService = new OrderService();
		int result = orderService.insertOrder(newOrder);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertOrder");
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "주문 등록에 실패하셨습니다.");
		}

		request.getRequestDispatcher(path).forward(request, response);
		

		
		
	}
}
