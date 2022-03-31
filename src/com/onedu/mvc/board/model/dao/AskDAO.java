package com.onedu.mvc.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.board.model.dto.AskDTO;

public class AskDAO {

	/* 마이페이지 1:1 문의 전체 조회용 메소드 */
	public List<AskDTO> selectAllAskList(SqlSession sqlSession) {
		
		return sqlSession.selectList("AskDAO.selectAllAskList");
	}

	/* 마이페이지 1:1 문의 등록용 메소드 */
	public int insertAsk(SqlSession sqlSession, AskDTO newAsk) {
		
		return sqlSession.insert("AskDAO.insertAsk", newAsk);
	}

	/* 마이페이지 1:1 문의 삭제용 메소드 */
	public int deleteAsk(SqlSession sqlSession, int no) {
		
		return sqlSession.update("AskDAO.deleteAsk", no);
	}

	/* 마이페이지 1:1 문의 조회용 메소드 */
	public AskDTO selectAskDetail(SqlSession sqlSession, int no) {
		
		return sqlSession.selectOne("AskDAO.selectAskDetail", no);
	}

}
