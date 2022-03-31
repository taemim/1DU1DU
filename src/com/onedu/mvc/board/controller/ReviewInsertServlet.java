package com.onedu.mvc.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.board.model.dto.ReviewDTO;
import com.onedu.mvc.board.model.service.ReviewService;
import com.onedu.mvc.member.model.dto.MemberDTO;

@WebServlet("/review/insert")
public class ReviewInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/board/mypageReviewInsert.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 1. 파라미터 꺼내기 */
		String revTitle = request.getParameter("revTitle");
		String  revContents = request.getParameter("revContents");
		String gradeAvg = request.getParameter("totPnt");
		String userId = ((MemberDTO) request.getSession().getAttribute("loginMember")).getUserId();
		
		ReviewDTO newReview = new ReviewDTO();
		newReview.setRevTitle(revTitle);
		newReview.setRevContents(revContents);
		newReview.setGradeAvg(gradeAvg);
		newReview.setUserId(userId);
		
		/* 2. 비즈니스 로직 호출 */
		ReviewService reviewService = new ReviewService();
		int result = reviewService.insertReview(newReview);
		
		System.out.println(newReview);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertReview");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "리뷰 등록에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);		
	}

}
