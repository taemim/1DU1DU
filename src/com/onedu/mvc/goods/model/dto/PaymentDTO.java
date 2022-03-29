package com.onedu.mvc.goods.model.dto;

import java.sql.Date;

public class PaymentDTO {
 
	private String payNo;
	private int orderNo;
	private int amount;
	private java.sql.Date payTime;
	private java.sql.Timestamp paySuccessTime;
	
	public PaymentDTO(String payNo, int orderNo, int amount, Date payTime, java.sql.Timestamp paySuccessTime) {
		super();      
		this.payNo = payNo;
		this.orderNo = orderNo;
		this.amount = amount;
		this.payTime = payTime;
		this.paySuccessTime = paySuccessTime;
	}
	public PaymentDTO() {
		super();
	}
	public String getPayNo() {
		return payNo;
	}
	public void setPayNo(String payNo) {
		this.payNo = payNo;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public java.sql.Date getPayTime() {
		return payTime;
	}
	public void setPayTime(java.sql.Date payTime) {
		this.payTime = payTime;
	}
	public java.sql.Timestamp getPaySuccessTime() {
		return paySuccessTime;
	}
	public void setPaySuccessTime(java.sql.Timestamp paySuccessTime) {
		this.paySuccessTime = paySuccessTime;
	}
	@Override
	public String toString() {
		return "PaymentDTO [payNo=" + payNo + ", orderNo=" + orderNo + ", amount=" + amount + ", payTime=" + payTime
				+ ", paySuccessTime=" + paySuccessTime + "]";
	}

	
}