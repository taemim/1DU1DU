package com.onedu.mvc.member.model.dto;

import java.sql.Date;

public class MemberDTO implements java.io.Serializable{
	
	
	/* 필드 */
	private String userId;		//회원id
	private String userPwd;		//회원 pwd
	private String userName;	//이름
	private String phone;		//연락처
	private Date birthday;		//생년월일
	private String gender;		//성별
	private String postal;		//우편번호
	private String address;		//주소
	private String address2;	//상세주소
	private String email;		//이메일
	private Date enrollDate;	//가입일자
	private int buyCnt;			//구매횟수
	private String userAct;		//활동여부
	private String userRole;	//구분
	private int gradeNo;		//회원등급번호
	
	
	
	/* 기본 생성자 */
	public MemberDTO() {}



	/* 생성자 */
	public MemberDTO(String userId, String userPwd, String userName, String phone, Date birthday, String gender,
			String postal, String address, String address2, String email, Date enrollDate, int buyCnt, String userAct,
			String userRole, int gradeNo) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.phone = phone;
		this.birthday = birthday;
		this.gender = gender;
		this.postal = postal;
		this.address = address;
		this.address2 = address2;
		this.email = email;
		this.enrollDate = enrollDate;
		this.buyCnt = buyCnt;
		this.userAct = userAct;
		this.userRole = userRole;
		this.gradeNo = gradeNo;
	}


	/* Getter/Setter */
	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getUserPwd() {
		return userPwd;
	}



	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public Date getBirthday() {
		return birthday;
	}



	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getPostal() {
		return postal;
	}



	public void setPostal(String postal) {
		this.postal = postal;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getAddress2() {
		return address2;
	}



	public void setAddress2(String address2) {
		this.address2 = address2;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Date getEnrollDate() {
		return enrollDate;
	}



	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}



	public int getBuyCnt() {
		return buyCnt;
	}



	public void setBuyCnt(int buyCnt) {
		this.buyCnt = buyCnt;
	}



	public String getUserAct() {
		return userAct;
	}



	public void setUserAct(String userAct) {
		this.userAct = userAct;
	}



	public String getUserRole() {
		return userRole;
	}



	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}



	public int getGradeNo() {
		return gradeNo;
	}



	public void setGradeNo(int gradeNo) {
		this.gradeNo = gradeNo;
	}



	
	/* toString Override */
	@Override
	public String toString() {
		return "MemberDTO [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", phone=" + phone
				+ ", birthday=" + birthday + ", gender=" + gender + ", postal=" + postal + ", address=" + address
				+ ", address2=" + address2 + ", email=" + email + ", enrollDate=" + enrollDate + ", buyCnt=" + buyCnt
				+ ", userAct=" + userAct + ", userRole=" + userRole + ", gradeNo=" + gradeNo + "]";
	}
	
}
	
	

