package com.onedu.mvc.member.service;

import static com.onedu.mvc.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.member.model.dao.MemberDAO;
import com.onedu.mvc.member.model.dto.MemberDTO;

public class MemberService {

	public int updateAddress(MemberDTO member) {
		
		
		SqlSession session = getSqlSession();
		
		int result = MemberDAO.updateAddress(session, member);


		if(result > 0 ) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;

	}
}
