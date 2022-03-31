package com.onedu.mvc.member.model.dto;

import java.sql.Date;
import java.util.List;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.ImgDTO;
import com.onedu.mvc.goods.model.dto.OptionDTO;
import com.onedu.mvc.goods.model.dto.OrderDTO;
import com.onedu.mvc.goods.model.dto.PaymentDTO;

public class MyorderDTO {

	private java.sql.Date payDate; //결제일자
	private int orderNo; //주문번호
	private int goodsNo; //상품번호
	private String goodsName; //상품이름
	private int amount; //주문수량
	private int price; // 주문금액
	private String status; //처리상태
	private String invoice; //운송장
	
	private ImgDTO goodsImg; //상품이미지
	private OrderDTO order; //주문상세
	private PaymentDTO payment; //결제상세
	private List<GoodsDTO> goodsList; //상품목록
	private List<OptionDTO> optionList; //상품옵션
	public MyorderDTO() {
		super();
	}
	public MyorderDTO(Date payDate, int orderNo, int goodsNo, String goodsName, int amount, int price, String status,
			String invoice, ImgDTO goodsImg, OrderDTO order, PaymentDTO payment, List<GoodsDTO> goodsList,
			List<OptionDTO> optionList) {
		super();
		this.payDate = payDate;
		this.orderNo = orderNo;
		this.goodsNo = goodsNo;
		this.goodsName = goodsName;
		this.amount = amount;
		this.price = price;
		this.status = status;
		this.invoice = invoice;
		this.goodsImg = goodsImg;
		this.order = order;
		this.payment = payment;
		this.goodsList = goodsList;
		this.optionList = optionList;
	}
	public java.sql.Date getPayDate() {
		return payDate;
	}
	public void setPayDate(java.sql.Date payDate) {
		this.payDate = payDate;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getInvoice() {
		return invoice;
	}
	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}
	public ImgDTO getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(ImgDTO goodsImg) {
		this.goodsImg = goodsImg;
	}
	public OrderDTO getOrder() {
		return order;
	}
	public void setOrder(OrderDTO order) {
		this.order = order;
	}
	public PaymentDTO getPayment() {
		return payment;
	}
	public void setPayment(PaymentDTO payment) {
		this.payment = payment;
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
	@Override
	public String toString() {
		return "MyorderDTO [payDate=" + payDate + ", orderNo=" + orderNo + ", goodsNo=" + goodsNo + ", goodsName="
				+ goodsName + ", amount=" + amount + ", price=" + price + ", status=" + status + ", invoice=" + invoice
				+ ", goodsImg=" + goodsImg + ", order=" + order + ", payment=" + payment + ", goodsList=" + goodsList
				+ ", optionList=" + optionList + "]";
	}

	
}
