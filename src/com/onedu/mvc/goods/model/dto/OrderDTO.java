package com.onedu.mvc.goods.model.dto;

import java.sql.Date;
import java.util.List;

public class OrderDTO {

	private int orderNo;
	private String userId;
	private List<GoodsDTO> goods;
	private java.sql.Date orderDate;
	private String receiverName;
	private String receiverPhone;
	private String zipCode;
	private String address;
	private String extraAddress;
	private String shipMemo;
	private String status;
	private PaymentDTO payment;

	public OrderDTO() {
		super();
	}

	public OrderDTO(int orderNo, String userId, List<GoodsDTO> goods, Date orderDate, String receiverName,
			String receivePhone, String zipCOde, String address, String extraAddress, String shipMemo, String status) {
		super();
		this.orderNo = orderNo;
		this.userId = userId;
		this.goods = goods;
		this.orderDate = orderDate;
		this.receiverName = receiverName;
		this.receiverPhone = receivePhone;
		this.zipCode = zipCOde;
		this.address = address;
		this.extraAddress = extraAddress;
		this.shipMemo = shipMemo;
		this.status = status;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public List<GoodsDTO> getGoods() {
		return goods;
	}

	public void setGoods(List<GoodsDTO> goods) {
		this.goods = goods;
	}

	public java.sql.Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(java.sql.Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getReceiverName() {
		return receiverName;
	}

	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	public String getReceiverPhone() {
		return receiverPhone;
	}

	public void setReceiverPhone(String receivePhone) {
		this.receiverPhone = receivePhone;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getExtraAddress() {
		return extraAddress;
	}

	public void setExtraAddress(String extraAdderess) {
		this.extraAddress = extraAdderess;
	}

	public String getShipMemo() {
		return shipMemo;
	}

	public void setShipMemo(String shipMemo) {
		this.shipMemo = shipMemo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		status = status;
	}

	@Override
	public String toString() {
		return "OrderDTO [orderNo=" + orderNo + ", userId=" + userId + ", goods=" + goods + ", orderDate=" + orderDate
				+ ", receiverName=" + receiverName + ", receivePhone=" + receiverPhone + ", zipCode=" + zipCode
				+ ", address=" + address + ", extraAddress=" + extraAddress + ", shipMemo=" + shipMemo + ", Status="
				+ status + "]";
	}

}