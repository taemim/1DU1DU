package com.onedu.mvc.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.board.model.dto.ReviewDTO;

public class ReviewDAO {

	/* 마이페이지 review 전체 조회용 메소드 */
	public List<ReviewDTO> selectAllReviewList(SqlSession sqlSession) {
		
		return sqlSession.selectList("ReviewDAO.selectAllReviewList");
	}

}
