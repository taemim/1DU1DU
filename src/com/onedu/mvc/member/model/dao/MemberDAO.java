package com.onedu.mvc.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.onedu.mvc.member.model.dto.MemberDTO;

public class MemberDAO {
	
	
	
	/* MEMBER TABLE 신규 회원 insert용 메소드 */
	public int insertMember(SqlSession session, MemberDTO requestMember) {
		
		return session.insert("MemberDAO.insertMember", requestMember);
	}
	
	/* 암호화 처리 된 비밀번호 조회용 메소드(로그인 확인용) */
	public String selectEncryptedPwd(SqlSession session, MemberDTO requestMember) {
		
		return session.selectOne("MemberDAO.selectEncryptedPwd", requestMember);
	}
	
	/* 아이디 찾기용 메소드 */
	public String selectFindId(SqlSession session, MemberDTO requestMember) {
		
		return session.selectOne("MemberDAO.selectFindId", requestMember);
	}
	
	
	/* 패스워드 일치 시 회원 정보 조회용 메소드 */
	public MemberDTO selectLoginMember(SqlSession session, MemberDTO requestMember) {
		
		return session.selectOne("MemberDAO.selectLoginMember", requestMember);
	}
	
	/* 아이디 중복 확인용 메소드 */
	public int memberIdCheck(SqlSession session, String memberId) {
		return session.selectOne("MemberDAO.memberIdCheck", memberId);
	}

	/* 회원 정보 수정용 메소드 */
	public int updateMember(SqlSession session, MemberDTO requestMember) {
		return session.update("MemberDAO.updateMember", requestMember);
	}

	/* 회원 정보 수정 후 조회용 메소드 */
	public MemberDTO selectChangedMemberInfo(SqlSession session, String phone) {
		return session.selectOne("MemberDAO.selectChangedMemberInfo", phone);
	}
	
	/* 비밀번호 수정용 메소드 */
	public int updateMemberPassword(SqlSession session, MemberDTO requestMember) {
		return session.update("MemberDAO.updateMemberPassword", requestMember);
	}

	/* 회원 탈퇴용 메소드 */
	public int deleteMember(SqlSession session, int no) {
		return session.update("MemberDAO.deleteMember", no);
	}



	

}
