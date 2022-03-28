package com.onedu.mvc.goods.model.dto;

import java.util.List;

public class MyorderDTO {

	private String orderNo; //주문번호
	private OrderDTO order; //주문상세
	private ImgDTO goodsImg; //상품이미지
	private String goodsNo; //상품번호
	private List<GoodsDTO> goodsList; //상품목록
	private List<OptionDTO> opton; //상품옵션
	
	
	public MyorderDTO() {
		super();
	}


	public MyorderDTO(String orderNo, OrderDTO order, ImgDTO goodsImg, String goodsNo, List<GoodsDTO> goodsList,
			List<OptionDTO> opton) {
		super();
		this.orderNo = orderNo;
		this.order = order;
		this.goodsImg = goodsImg;
		this.goodsNo = goodsNo;
		this.goodsList = goodsList;
		this.opton = opton;
	}


	public String getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}


	public OrderDTO getOrder() {
		return order;
	}


	public void setOrder(OrderDTO order) {
		this.order = order;
	}


	public ImgDTO getGoodsImg() {
		return goodsImg;
	}


	public void setGoodsImg(ImgDTO goodsImg) {
		this.goodsImg = goodsImg;
	}


	public String getGoodsNo() {
		return goodsNo;
	}


	public void setGoodsNo(String goodsNo) {
		this.goodsNo = goodsNo;
	}


	public List<GoodsDTO> getGoodsList() {
		return goodsList;
	}


	public void setGoodsList(List<GoodsDTO> goodsList) {
		this.goodsList = goodsList;
	}


	public List<OptionDTO> getOpton() {
		return opton;
	}


	public void setOpton(List<OptionDTO> opton) {
		this.opton = opton;
	}


	@Override
	public String toString() {
		return "MyorderDTO [orderNo=" + orderNo + ", order=" + order + ", goodsImg=" + goodsImg + ", goodsNo=" + goodsNo
				+ ", goodsList=" + goodsList + ", opton=" + opton + "]";
	}
	
	
}
