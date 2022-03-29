package com.onedu.mvc.goods.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.service.GoodsService;


@WebServlet("/goods/detail")
public class GoodsDetailServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int goodsNo = Integer.parseInt(request.getParameter("goodsNo"));
		
		GoodsDTO goods = new GoodsService().selectOneGoodsDetail(goodsNo);
		
		String path = "";
		if(goods != null) {
			path = "/WEB-INF/views/goods/goodsDetail.jsp";
			request.setAttribute("goods", goods);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "제품 상세 조회에 실패했습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	
	

}
