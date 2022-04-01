package com.onedu.mvc.board.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.board.model.dao.AskDAO;
import com.onedu.mvc.board.model.dto.AskDTO;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

public class AskService {
	
	private final AskDAO askDAO;
	
	public AskService() {
		askDAO = new AskDAO();
	}

	/* 마이페이지 1:1 문의 전체 조회용 메소드 */
	public List<AskDTO> selectAllAskList(String userId) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		List<AskDTO> askList = askDAO.selectAllAskList(sqlSession, userId);
		
		/* 3. 트랜잭션 처리 - 전체 조회이기 때문에 생략 */
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return askList;
	}

	/* 마이페이지 1:1 문의 등록용 메소드 */
	public int insertAsk(AskDTO newAsk) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		int result = askDAO.insertAsk(sqlSession, newAsk);
		
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

	/* 마이페이지 1:1 문의 삭제용 메소드 */
	public int deleteAsk(int no) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		int result = askDAO.deleteAsk(sqlSession, no);
		
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

	/* 마이페이지 1:1 문의 조회용 메소드 */
	public AskDTO selectAskDetail(int no) {
		
		/* 1. SqlSession 생성 */
		SqlSession sqlSession = getSqlSession();
		
		/* 2. SqlSession과 함께 정보를 전달하여 조회한다. */
		AskDTO askDetail = askDAO.selectAskDetail(sqlSession, no);
		
		/* 3. 트랜잭션 처리 - 조회이기 때문에 생략 */
		
		/* 4. SqlSession 닫기 */
		sqlSession.close();
		
		/* 5. 조회 결과 반환 */
		return askDetail;
	}


}
