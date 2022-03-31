package com.onedu.mvc.board.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.board.model.dao.ReviewDAO;
import com.onedu.mvc.board.model.dto.ReviewDTO;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

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

	/* 마이페이지 review 조회용 메소드 */
	public ReviewDTO selectReviewDetail(int no) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 조회수 증가용 +1 */
		ReviewDTO reviewDetail = null;
		int result = reviewDAO.increaseReviewCnt(sqlSession, no);
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
//		ReviewDTO reviewDetail = reviewDAO.selectReviewDetail(sqlSession, no);
		if(result > 0) {
			reviewDetail = reviewDAO.selectReviewDetail(sqlSession, no);
			
			/* 3. 트랜잭션 처리 */
			if(reviewDetail != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		}
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return reviewDetail;
	}
	
	/* 마이페이지 review 등록용 메소드 */
	public int insertReview(ReviewDTO newReview) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		int result = reviewDAO.insertReview(sqlSession, newReview);
		
		/* 3. 트랜잭션 처리 */
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return result;
	}

	/* 마이페이지 review 삭제용 메소드 */
	public int deleteReview(int no) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		int result = reviewDAO.deleteReview(sqlSession, no);
		
		/* 3. 트랜잭션 처리 */
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return result;
	}

	/* 마이페이지 review 수정용 메소드 */
	public int updateReview(ReviewDTO updateReview) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		int result = reviewDAO.updateReview(sqlSession, updateReview);
		
		/* 3. 트랜잭션 처리 */
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return result;
	}

}
