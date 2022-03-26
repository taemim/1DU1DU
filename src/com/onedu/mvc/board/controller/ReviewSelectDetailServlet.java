package com.onedu.mvc.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.board.model.dto.ReviewDTO;
import com.onedu.mvc.board.model.service.ReviewService;

@WebServlet("/review/detail")
public class ReviewSelectDetailServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. 파라미터 꺼내기 */
		int no = Integer.parseInt(request.getParameter("no"));
		
		/* 2. 비즈니스 로직 호출 */
		ReviewService reviewService = new ReviewService();
		ReviewDTO reviewDetail = reviewService.selectReviewDetail(no);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(reviewDetail != null) {
			
			path = "/WEB-INF/views/board/mypageReviewDetail.jsp";
			request.setAttribute("reviewDetail", reviewDetail);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "리뷰 조회에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
