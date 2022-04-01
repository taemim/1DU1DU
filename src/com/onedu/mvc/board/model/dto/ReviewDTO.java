package com.onedu.mvc.board.model.dto;

import java.sql.Date;
import java.util.List;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.ImgDTO;

public class ReviewDTO implements java.io.Serializable {
	
	private int revNo;
	private int prodNo;
	private String userId;
	private String revTitle;
	private String revContents;
	private Date writeDate;
	private String ansTitle;
	private String ansContents;
	private Date ansDate;
	private String gradeAvg;
	private int revHits;
	private String revStatus;
	private GoodsDTO goods;
	private List<ImgDTO> imgList;
	
	public ReviewDTO() {}

	public ReviewDTO(int revNo, int prodNo, String userId, String revTitle, String revContents, Date writeDate,
			String ansTitle, String ansContents, Date ansDate, String gradeAvg, int revHits, String revStatus,
			GoodsDTO goods, List<ImgDTO> imgList) {
		super();
		this.revNo = revNo;
		this.prodNo = prodNo;
		this.userId = userId;
		this.revTitle = revTitle;
		this.revContents = revContents;
		this.writeDate = writeDate;
		this.ansTitle = ansTitle;
		this.ansContents = ansContents;
		this.ansDate = ansDate;
		this.gradeAvg = gradeAvg;
		this.revHits = revHits;
		this.revStatus = revStatus;
		this.goods = goods;
		this.imgList = imgList;
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public String getGradeAvg() {
		return gradeAvg;
	}

	public void setGradeAvg(String gradeAvg) {
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

	public GoodsDTO getGoods() {
		return goods;
	}

	public void setGoods(GoodsDTO goods) {
		this.goods = goods;
	}

	public List<ImgDTO> getImgList() {
		return imgList;
	}

	public void setImgList(List<ImgDTO> imgList) {
		this.imgList = imgList;
	}

	@Override
	public String toString() {
		return "ReviewDTO [revNo=" + revNo + ", prodNo=" + prodNo + ", userId=" + userId + ", revTitle=" + revTitle
				+ ", revContents=" + revContents + ", writeDate=" + writeDate + ", ansTitle=" + ansTitle
				+ ", ansContents=" + ansContents + ", ansDate=" + ansDate + ", gradeAvg=" + gradeAvg + ", revHits="
				+ revHits + ", revStatus=" + revStatus + ", goods=" + goods + ", imgList=" + imgList + "]";
	}
	
}
