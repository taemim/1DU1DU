package com.onedu.mvc.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onedu.mvc.board.model.dto.ReviewDTO;
import com.onedu.mvc.board.model.service.ReviewService;

@WebServlet("/review/update")
public class ReviewUpdateServlet extends HttpServlet {

	/* 수정 할 수 있는 페이지로 포워딩 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. 파라미터 꺼내기 */
		int no = Integer.parseInt(request.getParameter("no"));
		
		/* 2. 비즈니스 로직 호출 */
		ReviewService reviewService = new ReviewService();
		ReviewDTO review = reviewService.selectReviewDetail(no);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(review != null) {
			
			path = "/WEB-INF/views/board/mypageReviewUpdate.jsp";
			request.setAttribute("review", review);
			
		} else {
			
			path ="/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "작성한 리뷰 조회하기에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	/* update 구현 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 1. 파라미터 꺼내기 */
		int no = Integer.parseInt(request.getParameter("no"));
		String revTitle = request.getParameter("revTitle");
		String  revContents = request.getParameter("revContents");
		
		ReviewDTO updateReview = new ReviewDTO();
		updateReview.setRevNo(no);
		updateReview.setRevTitle(revTitle);
		updateReview.setRevContents(revContents);
		
		/* 2. 비즈니스 로직 호출 */
		ReviewService reviewService = new ReviewService();
		int result = reviewService.updateReview(updateReview);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateReview");
			request.setAttribute("no", no);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "리뷰 수정에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);		
	}

}
