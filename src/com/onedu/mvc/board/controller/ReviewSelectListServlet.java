package com.onedu.mvc.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onedu.mvc.board.model.dto.ReviewDTO;
import com.onedu.mvc.board.model.service.ReviewService;
import com.onedu.mvc.member.model.dto.MemberDTO;

@WebServlet("/review/list")
public class ReviewSelectListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. 파라미터 꺼내기 - 전체 조회이기 때문에 생략 */
		HttpSession session = request.getSession();
        MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");
        String userId = loginMember.getUserId();
		
		/* 2. 비즈니스 로직 호출 */
		List<ReviewDTO> reviewList = new ReviewService().selectAllReviewList(userId);
		
		System.out.println(reviewList);
		
		/* 3. 조회 결과 성공 여부에 따른 뷰 결정 */
		String path = "";
		if(reviewList != null) {
			
			path = "/WEB-INF/views/board/mypageReviewList.jsp";
			request.setAttribute("reviewList", reviewList);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "리뷰 조회에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);		
	}

}
