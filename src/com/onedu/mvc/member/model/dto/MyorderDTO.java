package com.onedu.mvc.member.model.dto;

import java.util.List;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.ImgDTO;
import com.onedu.mvc.goods.model.dto.OptionDTO;
import com.onedu.mvc.goods.model.dto.OrderDTO;

public class MyorderDTO {

	private String orderNo; //주문번호
	private OrderDTO order; //주문상세
	private ImgDTO goodsImg; //상품이미지
	private String goodsNo; //상품번호
	private List<GoodsDTO> goodsList; //상품목록
	private List<OptionDTO> optionList; //상품옵션
	private String invoice;
	
	public MyorderDTO() {
		super();
	}

	public MyorderDTO(String orderNo, OrderDTO order, ImgDTO goodsImg, String goodsNo, List<GoodsDTO> goodsList,
			List<OptionDTO> optionList, String invoice) {
		super();
		this.orderNo = orderNo;
		this.order = order;
		this.goodsImg = goodsImg;
		this.goodsNo = goodsNo;
		this.goodsList = goodsList;
		this.optionList = optionList;
		this.invoice = invoice;
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

	public List<OptionDTO> getOptionList() {
		return optionList;
	}

	public void setOptionList(List<OptionDTO> optionList) {
		this.optionList = optionList;
	}

	public String getInvoice() {
		return invoice;
	}

	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}

	@Override
	public String toString() {
		return "MyorderDTO [orderNo=" + orderNo + ", order=" + order + ", goodsImg=" + goodsImg + ", goodsNo=" + goodsNo
				+ ", goodsList=" + goodsList + ", optionList=" + optionList + ", invoice=" + invoice + "]";
	}



	
}
