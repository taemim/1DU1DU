package com.onedu.mvc.goods.model.dto;

import java.sql.Date;
import java.util.List;

public class GoodsDTO implements java.io.Serializable {
	
	private int goodsNo;
	private int categoryId;
	private int typeId;
	private String goodsName;
	private int price;
	private String goodsExplain;
	private Date enrollDate;
	private String saleCheck;
	private int totalStock;
	private int saleVol;
	private List<ImgDTO> imgList;
	private CategoryDTO category;
	
	public GoodsDTO() {}

	public GoodsDTO(int goodsNo, int categoryId, int typeId, String goodsName, int price, String goodsExplain,
			Date enrollDate, String saleCheck, int totalStock, int saleVol, List<ImgDTO> imgList,
			CategoryDTO category) {
		super();
		this.goodsNo = goodsNo;
		this.categoryId = categoryId;
		this.typeId = typeId;
		this.goodsName = goodsName;
		this.price = price;
		this.goodsExplain = goodsExplain;
		this.enrollDate = enrollDate;
		this.saleCheck = saleCheck;
		this.totalStock = totalStock;
		this.saleVol = saleVol;
		this.imgList = imgList;
		this.category = category;
	}

	public int getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getGoodsExplain() {
		return goodsExplain;
	}

	public void setGoodsExplain(String goodsExplain) {
		this.goodsExplain = goodsExplain;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getSaleCheck() {
		return saleCheck;
	}

	public void setSaleCheck(String saleCheck) {
		this.saleCheck = saleCheck;
	}

	public int getTotalStock() {
		return totalStock;
	}

	public void setTotalStock(int totalStock) {
		this.totalStock = totalStock;
	}

	public int getSaleVol() {
		return saleVol;
	}

	public void setSaleVol(int saleVol) {
		this.saleVol = saleVol;
	}

	public List<ImgDTO> getImgList() {
		return imgList;
	}

	public void setImgList(List<ImgDTO> imgList) {
		this.imgList = imgList;
	}

	public CategoryDTO getCategory() {
		return category;
	}

	public void setCategory(CategoryDTO category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "GoodsDTO [goodsNo=" + goodsNo + ", categoryId=" + categoryId + ", typeId=" + typeId + ", goodsName="
				+ goodsName + ", price=" + price + ", goodsExplain=" + goodsExplain + ", enrollDate=" + enrollDate
				+ ", saleCheck=" + saleCheck + ", totalStock=" + totalStock + ", saleVol=" + saleVol + ", imgList="
				+ imgList + ", category=" + category + "]";
	}

	
	
}
