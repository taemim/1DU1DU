package com.onedu.mvc.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.member.model.dto.MemberDTO;

public class MemberDAO {

	public static int updateAddress(SqlSession session, MemberDTO member) {
		
		return session.update("MemberDAO.updateAddress", member);
	}

}
