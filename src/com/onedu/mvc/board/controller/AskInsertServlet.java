package com.onedu.mvc.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.board.model.dto.AskDTO;
import com.onedu.mvc.board.model.service.AskService;

@WebServlet("/ask/insert")
public class AskInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/board/mypageAskInsert.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 1. 파라미터 꺼내기 */
		String askType = request.getParameter("askType");
		int prodNo = Integer.parseInt(request.getParameter("prodNo"));
//		String userName = ((MemberDTO) request.getSession().getAttribute(""))
		String userId = request.getParameter("userId");
		String askTitle = request.getParameter("askTitle");
		String askContents = request.getParameter("askContents");
		
		AskDTO newAsk = new AskDTO();
		newAsk.setAskType(askType);
		newAsk.setProdNo(prodNo);
//		newAsk.setWriter(userName);
		newAsk.setUserId(userId);
		newAsk.setAskTitle(askTitle);
		newAsk.setAskContents(askContents);
		
		/* 2. 비즈니스 로직 호출 */		
		AskService askService = new AskService();
		int result = askService.insertAsk(newAsk);
		
		System.out.println(result);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path ="";
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertAsk");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "1:1 문의 등록에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);		
	}

}
