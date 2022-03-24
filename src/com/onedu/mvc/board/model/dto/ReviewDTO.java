package com.onedu.mvc.board.model.dto;

import java.sql.Date;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.member.model.dto.MemberDTO;

public class ReviewDTO {
	
	private int revNo;
	private int prodNo;
	private GoodsDTO goods;
	private String userId;
	private MemberDTO writer;
	private String revTitle;
	private String revContents;
	private Date writeDate;
	private String ansTitle;
	private String ansContents;
	private Date ansDate;
	private int gradeAvg;
	private int revHits;
	private String revStatus;
	
	public ReviewDTO(int revNo, int prodNo, GoodsDTO goods, String userId, MemberDTO writer, String revTitle,
			String revContents, Date writeDate, String ansTitle, String ansContents, Date ansDate, int gradeAvg,
			int revHits, String revStatus) {
		super();
		this.revNo = revNo;
		this.prodNo = prodNo;
		this.goods = goods;
		this.userId = userId;
		this.writer = writer;
		this.revTitle = revTitle;
		this.revContents = revContents;
		this.writeDate = writeDate;
		this.ansTitle = ansTitle;
		this.ansContents = ansContents;
		this.ansDate = ansDate;
		this.gradeAvg = gradeAvg;
		this.revHits = revHits;
		this.revStatus = revStatus;
	}

	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public GoodsDTO getGoods() {
		return goods;
	}

	public void setGoods(GoodsDTO goods) {
		this.goods = goods;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public MemberDTO getWriter() {
		return writer;
	}

	public void setWriter(MemberDTO writer) {
		this.writer = writer;
	}

	public String getRevTitle() {
		return revTitle;
	}

	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}

	public String getRevContents() {
		return revContents;
	}

	public void setRevContents(String revContents) {
		this.revContents = revContents;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getAnsTitle() {
		return ansTitle;
	}

	public void setAnsTitle(String ansTitle) {
		this.ansTitle = ansTitle;
	}

	public String getAnsContents() {
		return ansContents;
	}

	public void setAnsContents(String ansContents) {
		this.ansContents = ansContents;
	}

	public Date getAnsDate() {
		return ansDate;
	}

	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}

	public int getGradeAvg() {
		return gradeAvg;
	}

	public void setGradeAvg(int gradeAvg) {
		this.gradeAvg = gradeAvg;
	}

	public int getRevHits() {
		return revHits;
	}

	public void setRevHits(int revHits) {
		this.revHits = revHits;
	}

	public String getRevStatus() {
		return revStatus;
	}

	public void setRevStatus(String revStatus) {
		this.revStatus = revStatus;
	}

	@Override
	public String toString() {
		return "ReviewDTO [revNo=" + revNo + ", prodNo=" + prodNo + ", goods=" + goods + ", userId=" + userId
				+ ", writer=" + writer + ", revTitle=" + revTitle + ", revContents=" + revContents + ", writeDate="
				+ writeDate + ", ansTitle=" + ansTitle + ", ansContents=" + ansContents + ", ansDate=" + ansDate
				+ ", gradeAvg=" + gradeAvg + ", revHits=" + revHits + ", revStatus=" + revStatus + "]";
	}
	
}
