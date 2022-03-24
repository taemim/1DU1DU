package com.onedu.mvc.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.board.model.service.AskService;

@WebServlet("/ask/delete")
public class AskDeleteServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. 파라미터 꺼내기 */
		int no = Integer.parseInt(request.getParameter("no"));
		
		/* 2. 비즈니스 로직 호출 */		
		int result = new AskService().deleteAsk(no);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteAsk");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "1:1 문의 삭제에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
