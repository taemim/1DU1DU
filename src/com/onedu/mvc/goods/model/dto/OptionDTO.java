package com.onedu.mvc.goods.model.dto;

public class OptionDTO {
	
	private int optionNo;
	private String optionName;
	private int extra_pay;
	private int optionNo2; //상위옵션 참조
	public OptionDTO() {
		super();
	}
	public OptionDTO(int optionNo, String optionName, int extra_pay, int optionNo2) {
		super();
		this.optionNo = optionNo;
		this.optionName = optionName;
		this.extra_pay = extra_pay;
		this.optionNo2 = optionNo2;
	}
	public int getOptionNo() {
		return optionNo;
	}
	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public int getExtra_pay() {
		return extra_pay;
	}
	public void setExtra_pay(int extra_pay) {
		this.extra_pay = extra_pay;
	}
	public int getOptionNo2() {
		return optionNo2;
	}
	public void setOptionNo2(int optionNo2) {
		this.optionNo2 = optionNo2;
	}
	@Override
	public String toString() {
		return (optionNo2 == 1 ? "용량 | " : "분쇄도 | ") + optionName;
	}
	

}
