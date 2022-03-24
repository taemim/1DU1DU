package com.onedu.mvc.goods.model.dto;

public class GoodsListDTO {

	private int goodsNo;
	private GoodsDTO goodsDTO;
	private int amount;
	private int price;
	
	
	public GoodsListDTO() {
		super();
	}
	public GoodsListDTO(int goodsNo, GoodsDTO goodsDTO, int amount, int price) {
		super();
		this.goodsNo = goodsNo;
		this.goodsDTO = goodsDTO;
		this.amount = amount;
		this.price = price;
	}
	public int getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}
	public GoodsDTO getGoodsDTO() {
		return goodsDTO;
	}
	public void setGoodsDTO(GoodsDTO goodsDTO) {
		this.goodsDTO = goodsDTO;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "GoodsListDTO [GoodsNo=" + goodsNo + ", goodsDTO=" + goodsDTO + ", amount=" + amount + ", price=" + price
				+ "]";
	}
	
	
	
}
