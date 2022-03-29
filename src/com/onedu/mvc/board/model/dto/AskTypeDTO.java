package com.onedu.mvc.board.model.dto;

public class AskTypeDTO implements java.io.Serializable {

	private int askCode;
	private String askName;
	
	public AskTypeDTO () {}

	public AskTypeDTO(int askCode, String askName) {
		super();
		this.askCode = askCode;
		this.askName = askName;
	}

	public int getAskCode() {
		return askCode;
	}

	public void setAskCode(int askCode) {
		this.askCode = askCode;
	}

	public String getAskName() {
		return askName;
	}

	public void setAskName(String askName) {
		this.askName = askName;
	}

	@Override
	public String toString() {
		return "AskTypeDTO [askCode=" + askCode + ", askName=" + askName + "]";
	}
	
}
