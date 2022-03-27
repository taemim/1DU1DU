package com.onedu.mvc.goods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.service.GoodsService;


@WebServlet("/goods/list")
public class GoodsListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GoodsService goodsService = new GoodsService();
		
		List<GoodsDTO> goodsList = goodsService.selectGoodsList();
		
		for(GoodsDTO goods : goodsList) {
			System.out.println(goods);
		}
		
		String path = "";
		if(goodsList != null) {
			path = "/WEB-INF/views/goods/goodsList.jsp";
			request.setAttribute("goodsList", goodsList);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "상품 목록 조회 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
