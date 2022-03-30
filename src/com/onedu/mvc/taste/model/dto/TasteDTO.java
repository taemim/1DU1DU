package com.onedu.mvc.taste.model.dto;

import java.sql.Date;

public class TasteDTO implements java.io.Serializable {

	private String userId;		//회원id
	private String manuWay;		//커피 내리는 방식
	private String taste;		//평소 커피 취향
	private String style;		//스타일
	private String frag;		//원두향
	private String caffeine;	//카페인
	private String grindLv;		//분쇄도

	public TasteDTO() {}
	
	public TasteDTO(String userId, String manuWay, String taste, String style, String frag, String caffeine,
			String grindLv) {
		super();
		this.userId = userId;
		this.manuWay = manuWay;
		this.taste = taste;
		this.style = style;
		this.frag = frag;
		this.caffeine = caffeine;
		this.grindLv = grindLv;
	}



	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getManuWay() {
		return manuWay;
	}
	public void setManuWay(String manuWay) {
		this.manuWay = manuWay;
	}
	public String getTaste() {
		return taste;
	}
	public void setTaste(String taste) {
		this.taste = taste;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getFrag() {
		return frag;
	}
	public void setFrag(String frag) {
		this.frag = frag;
	}
	public String getCaffeine() {
		return caffeine;
	}
	public void setCaffeine(String caffeine) {
		this.caffeine = caffeine;
	}
	public String getGrindLv() {
		return grindLv;
	}
	public void setGrindLv(String grindLv) {
		this.grindLv = grindLv;
	}
	
	
	@Override
	public String toString() {
		return "TasteDTO [userId=" + userId + ", manuWay=" + manuWay + ", taste=" + taste + ", style=" + style
				+ ", frag=" + frag + ", caffeine=" + caffeine + ", grindLv=" + grindLv + "]";
	}

	
}