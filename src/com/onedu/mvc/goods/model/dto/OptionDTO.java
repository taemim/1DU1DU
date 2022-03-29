package com.onedu.mvc.goods.model.dto;

public class OptionDTO {
	
	private int goodsNo;  //상품번호
	private int optionNo; //옵션번호
	private String optionName; // 옵션명
	private int extra_pay; //추가금액
	private int optionNo2; //상위옵션 참조
	private String optionName2; //상위옵션명

	public OptionDTO() {
		super();
	}

	public OptionDTO(int goodsNo, int optionNo, String optionName, int extra_pay, int optionNo2, String optionName2) {
		super();
		this.goodsNo = goodsNo;
		this.optionNo = optionNo;
		this.optionName = optionName;
		this.extra_pay = extra_pay;
		this.optionNo2 = optionNo2;
		this.optionName2 = optionName2;
	}


	public int getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
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

	public String getOptionName2() {
		return optionName2;
	}

	public void setOptionName2(String optionName2) {
		this.optionName2 = optionName2;
	}

	@Override
	public String toString() {
		return "OptionDTO [goodsNo=" + goodsNo + ", optionNo=" + optionNo + ", optionName=" + optionName + ", extra_pay=" + extra_pay
				+ ", optionNo2=" + optionNo2 + ", optionName2=" + optionName2 + "]";
	}
