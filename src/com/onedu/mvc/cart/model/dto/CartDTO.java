package com.onedu.mvc.cart.model.dto;

import java.util.List;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.ImgDTO;
import com.onedu.mvc.member.model.dto.MemberDTO;

public class CartDTO implements java.io.Serializable {

	private int cartNo;
	private int prodNo;
	private String userId;
	private int amount;
	private GoodsDTO goods;
	private MemberDTO user;
	private List<ImgDTO> imgList;
	
	public CartDTO() {}

	public CartDTO(int cartNo, int prodNo, String userId, int amount, GoodsDTO goods, MemberDTO user,
			List<ImgDTO> imgList) {
		super();
		this.cartNo = cartNo;
		this.prodNo = prodNo;
		this.userId = userId;
		this.amount = amount;
		this.goods = goods;
		this.user = user;
		this.imgList = imgList;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public GoodsDTO getGoods() {
		return goods;
	}

	public void setGoods(GoodsDTO goods) {
		this.goods = goods;
	}

	public MemberDTO getUser() {
		return user;
	}

	public void setUser(MemberDTO user) {
		this.user = user;
	}

	public List<ImgDTO> getImgList() {
		return imgList;
	}

	public void setImgList(List<ImgDTO> imgList) {
		this.imgList = imgList;
	}

	@Override
	public String toString() {
		return "CartDTO [cartNo=" + cartNo + ", prodNo=" + prodNo + ", userId=" + userId + ", amount=" + amount
				+ ", goods=" + goods + ", user=" + user + ", imgList=" + imgList + "]";
	}
	
}
