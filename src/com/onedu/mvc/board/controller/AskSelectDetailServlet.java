package com.onedu.mvc.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.board.model.dto.AskDTO;
import com.onedu.mvc.board.model.service.AskService;

@WebServlet("/ask/detail")
public class AskSelectDetailServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. 파라미터 꺼내기 */
		int no = Integer.parseInt(request.getParameter("no"));
		
		/* 2. 비즈니스 로직 호출 */	
		AskService askService = new AskService();
		AskDTO askDetail = askService.selectAskDetail(no);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(askDetail != null) {
			
			path = "/WEB-INF/views/board/mypageAskDetail.jsp";
			request.setAttribute("askDetail", askDetail);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "1:1 문의 조회에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
}
