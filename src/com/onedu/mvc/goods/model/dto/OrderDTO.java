package com.onedu.mvc.goods.model.dto;

import java.sql.Date;

public class OrderDTO {

	private String orderNo;
	private String userId;
	private java.sql.Date orderDate;
	private String receiver;
	private String phone;
	private String postal;
	private String address;
	private String extraAdderess;
	private String shipMemo;
	private String Status;
	

	public OrderDTO() {
		super();
	}

	public OrderDTO(String orderNo, String userId, Date orderDate, String receiver, String phone, String postal,
			String address, String extraAdderess, String shipMemo, String status) {
		super();
		this.orderNo = orderNo;
		this.userId = userId;
		this.orderDate = orderDate;
		this.receiver = receiver;
		this.phone = phone;
		this.postal = postal;
		this.address = address;
		this.extraAdderess = extraAdderess;
		this.shipMemo = shipMemo;
		Status = status;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public java.sql.Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(java.sql.Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPostal() {
		return postal;
	}

	public void setPostal(String postal) {
		this.postal = postal;
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
		return "OrderDTO [orderNo=" + orderNo + ", userId=" + userId + ", orderDate=" + orderDate + ", receiver="
				+ receiver + ", phone=" + phone + ", postal=" + postal + ", address=" + address + ", extraAdderess="
				+ extraAdderess + ", shipMemo=" + shipMemo + ", Status=" + Status + ", getOrderNo()=" + getOrderNo()
				+ ", getUserId()=" + getUserId() + ", getOrderDate()=" + getOrderDate() + ", getReceiver()="
				+ getReceiver() + ", getPhone()=" + getPhone() + ", getPostal()=" + getPostal() + ", getAddress()="
				+ getAddress() + ", getExtraAdderess()=" + getExtraAdderess() + ", getShipMemo()=" + getShipMemo()
				+ ", getStatus()=" + getStatus() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	
}