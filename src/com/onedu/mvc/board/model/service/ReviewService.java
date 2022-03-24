package com.onedu.mvc.board.model.service;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.board.model.dao.ReviewDAO;
import com.onedu.mvc.board.model.dto.AskDTO;
import com.onedu.mvc.board.model.dto.ReviewDTO;

public class ReviewService {

	private final ReviewDAO reviewDAO;
	
	public ReviewService() {
		reviewDAO = new ReviewDAO();
	}

	/* 마이페이지 review 전체 조회용 메소드 */
	public List<ReviewDTO> selectAllReviewList() {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		List<ReviewDTO> reviewList = reviewDAO.selectAllReviewList(sqlSession);
		
		/* 3. 트랜잭션 처리 - 전체 조회이기 때문에 생략 */
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return reviewList;
	}
	
	
}
