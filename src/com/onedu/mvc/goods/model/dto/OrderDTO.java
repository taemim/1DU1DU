package com.onedu.mvc.goods.model.dto;

import java.sql.Date;
import java.util.List;

public class OrderDTO {

	private int orderNo;
	private String userId;
	private List<GoodsDTO> goods;
	private java.sql.Date orderDate;
	private String receiverName;
	private String receivePhone;
	private String zipCode;
	private String address;
	private String extraAdderess;
	private String shipMemo;
	private String Status;

	public OrderDTO() {
		super();
	}

	public OrderDTO(int orderNo, String userId, List<GoodsDTO> goods, Date orderDate, String receiverName,
			String receivePhone, String zipCOde, String address, String extraAdderess, String shipMemo, String status) {
		super();
		this.orderNo = orderNo;
		this.userId = userId;
		this.goods = goods;
		this.orderDate = orderDate;
		this.receiverName = receiverName;
		this.receivePhone = receivePhone;
		this.zipCode = zipCOde;
		this.address = address;
		this.extraAdderess = extraAdderess;
		this.shipMemo = shipMemo;
		Status = status;
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

	public String getReceivePhone() {
		return receivePhone;
	}

	public void setReceivePhone(String receivePhone) {
		this.receivePhone = receivePhone;
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

	public String getExtraAdderess() {
		return extraAdderess;
	}

	public void setExtraAdderess(String extraAdderess) {
		this.extraAdderess = extraAdderess;
	}

	public String getShipMemo() {
		return shipMemo;
	}

	public void setShipMemo(String shipMemo) {
		this.shipMemo = shipMemo;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	@Override
	public String toString() {
		return "OrderDTO [orderNo=" + orderNo + ", userId=" + userId + ", goods=" + goods + ", orderDate=" + orderDate
				+ ", receiverName=" + receiverName + ", receivePhone=" + receivePhone + ", zipCOde=" + zipCode
				+ ", address=" + address + ", extraAdderess=" + extraAdderess + ", shipMemo=" + shipMemo + ", Status="
				+ Status + "]";
	}

}