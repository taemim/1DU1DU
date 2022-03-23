package com.onedu.mvc.board.model.dto;

import java.sql.Date;

public class AskDTO {

	private int askNo;
	private int prodNo;
	private String userId;
	private String askTitle;
	private String askType;
	private String askContents;
	private Date askDate;
	private String ansTitle;
	private String ansContents;
	private Date ansDate;
	private String askStatus;
	
	public AskDTO() {}

	public AskDTO(int askNo, int prodNo, String userId, String askTitle, String askType, String askContents,
			Date askDate, String ansTitle, String ansContents, Date ansDate, String askStatus) {
		super();
		this.askNo = askNo;
		this.prodNo = prodNo;
		this.userId = userId;
		this.askTitle = askTitle;
		this.askType = askType;
		this.askContents = askContents;
		this.askDate = askDate;
		this.ansTitle = ansTitle;
		this.ansContents = ansContents;
		this.ansDate = ansDate;
		this.askStatus = askStatus;
	}

	public int getAskNo() {
		return askNo;
	}

	public void setAskNo(int askNo) {
		this.askNo = askNo;
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

	public String getAskTitle() {
		return askTitle;
	}

	public void setAskTitle(String askTitle) {
		this.askTitle = askTitle;
	}

	public String getAskType() {
		return askType;
	}

	public void setAskType(String askType) {
		this.askType = askType;
	}

	public String getAskContents() {
		return askContents;
	}

	public void setAskContents(String askContents) {
		this.askContents = askContents;
	}

	public Date getAskDate() {
		return askDate;
	}

	public void setAskDate(Date askDate) {
		this.askDate = askDate;
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

	public String getAskStatus() {
		return askStatus;
	}

	public void setAskStatus(String askStatus) {
		this.askStatus = askStatus;
	}

	@Override
	public String toString() {
		return "AskDTO [askNo=" + askNo + ", prodNo=" + prodNo + ", userId=" + userId + ", askTitle=" + askTitle
				+ ", askType=" + askType + ", askContents=" + askContents + ", askDate=" + askDate + ", ansTitle="
				+ ansTitle + ", ansContents=" + ansContents + ", ansDate=" + ansDate + ", askStatus=" + askStatus + "]";
	}
	
}
