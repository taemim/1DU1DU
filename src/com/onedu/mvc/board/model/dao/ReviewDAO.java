
package com.onedu.mvc.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.board.model.dto.ReviewDTO;

public class ReviewDAO {

	/* 마이페이지 review 전체 조회용 메소드 */
	public List<ReviewDTO> selectAllReviewList(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("ReviewDAO.selectAllReviewList", userId);
	}
	
	/* 마이페이지 review 조회수 증가용 메소드 */
	public int increaseReviewCnt(SqlSession sqlSession, int no) {
		
		return sqlSession.update("ReviewDAO.increaseReviewCnt", no);
	}

	/* 마이페이지 review 조회용 메소드 */
	public ReviewDTO selectReviewDetail(SqlSession sqlSession, int no) {
		
		return sqlSession.selectOne("ReviewDAO.selectReviewDetail", no);
	}

	/* 마이페이지 review 등록용 메소드 */
	public int insertReview(SqlSession sqlSession, ReviewDTO newReview) {
		
		return sqlSession.insert("ReviewDAO.insertReview", newReview);
	}
	
	/* 마이페이지 review 삭제용 메소드 */
	public int deleteReview(SqlSession sqlSession, int no) {
		
		return sqlSession.update("ReviewDAO.deleteReview", no);
	}

	/* 마이페이지 review 수정용 메소드 */
	public int updateReview(SqlSession sqlSession, ReviewDTO updateReview) {
		
		return sqlSession.update("ReviewDAO.updateReview", updateReview);
	}

}
