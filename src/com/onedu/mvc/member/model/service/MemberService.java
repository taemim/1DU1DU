package com.onedu.mvc.member.model.service;

import org.apache.ibatis.session.SqlSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.onedu.mvc.member.model.dao.MemberDAO;
import  com.onedu.mvc.member.model.dto.MemberDTO;
import static  com.onedu.mvc.common.mybatis.Template.getSqlSession;


import java.sql.Connection;


public class MemberService {

	
	
	/* 의존 관계에 있는 객체가 불변을 유지할 수 있도록 final 필드로 선언한다. */
	private final MemberDAO memberDAO;
	
	
	/* 생성자를 이용하여 객체를 생성하여 필드에 값을 넣는다. */
	public MemberService() {
		memberDAO = new MemberDAO();
	}
	
	
	/* 회원 가입용 메소드 */
	public int registMember(MemberDTO requestMember) {
		
		SqlSession session = getSqlSession();
		
		int result = memberDAO.insertMember(session, requestMember);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 로그인 처리용 메소드 */
	public MemberDTO loginCheck(MemberDTO requestMember) {
		
		SqlSession session = getSqlSession();
		MemberDTO loginMember = null;
		
		String encPwd = memberDAO.selectEncryptedPwd(session, requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		/* 로그인 요청한 원문 비밀번호화 저장되어있는 암호화된 비밀번호가 일치하는지 확인한다. */
		if(passwordEncoder.matches(requestMember.getUserPwd(), encPwd)) {
			/* 비밀번호가 일치하는 경우에만 회원 정보를 조회해온다. */
			loginMember = memberDAO.selectLoginMember(session, requestMember);
		}
		
		session.close();
		
		return loginMember;
		
	}
	
	/* 아이디 중복 확인용 메소드 */
	public int memberIdCheck(String userId) {
		SqlSession session = getSqlSession();
		
		int result = memberDAO.memberIdCheck(session, userId);
		
		session.close();
	
		return result;
	}

	/* 회원 정보 수정용 메소드 */
	public MemberDTO modifyMember(MemberDTO requestMember) {
		
		SqlSession session = getSqlSession();
		MemberDTO changedMemberInfo = null;
		
		int result = memberDAO.updateMember(session, requestMember);
		if(result > 0) {
			session.commit();
			changedMemberInfo = memberDAO.selectChangedMemberInfo(session, requestMember.getGradeNo());
		} else {
			session.rollback();
		}
		
		session.close();
		
		return changedMemberInfo;
	}

	/* 비밀번호 수정용 메소드 */
	public int modifyPassword(MemberDTO requestMember, String userPwd) {
		
		SqlSession session = getSqlSession();
		int result = 0;
		
		String encPwd = memberDAO.selectEncryptedPwd(session, requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		/* 비밀번호 수정 요청한 원문 비밀번호와 저장되어있는 암호화된 비밀번호가 일치하는지 확인한다. */
		if(passwordEncoder.matches(requestMember.getUserPwd(), encPwd)) {
			/* 비밀번호가 일치하는 경우에만 새로 입력 된 비밀번호로 수정한다. */
			requestMember.setUserPwd(userPwd);
			result = memberDAO.updateMemberPassword(session, requestMember);
		}
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 회원 탈퇴용 메소드 */
	public int removeMember(int no) {
		
		SqlSession session = getSqlSession();
		
		int result = memberDAO.deleteMember(session, no);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	
	
	/* 아이디 찾기용 메소드 */
	public String memberFindId(MemberDTO requestMember) {
		
		SqlSession session = getSqlSession();
		
		String userId = memberDAO.selectFindId(session, requestMember);
		
		session.close();
		
		return userId;
		
		
	}


	
	
	
	
	
	


}
