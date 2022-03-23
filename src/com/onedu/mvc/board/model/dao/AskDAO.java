package com.onedu.mvc.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.board.model.dto.AskDTO;

public class AskDAO {

	public List<AskDTO> selectAllAskList(SqlSession sqlSession) {
		
		return sqlSession.selectList("AskDAO.selectAllAskList");
	}

}
