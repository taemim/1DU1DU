package com.onedu.mvc.goods.model.dto;

public class ImgDTO implements java.io.Serializable {
	
	private String imgId;
	private int postNo;
	private int prodNo;
	private int revNo;
	private int askNo;
	private String originalName;
	private String editedName;
	private String fileRoot;
	private String thumbnailPath;
	private int fileSize;
	private String status;
	
	public ImgDTO() {}

	public ImgDTO(String imgId, int postNo, int prodNo, int revNo, int askNo, String originalName, String editedName,
			String fileRoot, String thumbnailPath, int fileSize, String status) {
		super();
		this.imgId = imgId;
		this.postNo = postNo;
		this.prodNo = prodNo;
		this.revNo = revNo;
		this.askNo = askNo;
		this.originalName = originalName;
		this.editedName = editedName;
		this.fileRoot = fileRoot;
		this.thumbnailPath = thumbnailPath;
		this.fileSize = fileSize;
		this.status = status;
	}

	public String getImgId() {
		return imgId;
	}

	public void setImgId(String imgId) {
		this.imgId = imgId;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public int getAskNo() {
		return askNo;
	}

	public void setAskNo(int askNo) {
		this.askNo = askNo;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getEditedName() {
		return editedName;
	}

	public void setEditedName(String editedName) {
		this.editedName = editedName;
	}

	public String getFileRoot() {
		return fileRoot;
	}

	public void setFileRoot(String fileRoot) {
		this.fileRoot = fileRoot;
	}

	public String getThumbnailPath() {
		return thumbnailPath;
	}

	public void setThumbnailPath(String thumbnailPath) {
		this.thumbnailPath = thumbnailPath;
	}

	public int getFileSize() {
		return fileSize;
	}

	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ImgDTO [imgId=" + imgId + ", postNo=" + postNo + ", prodNo=" + prodNo + ", revNo=" + revNo + ", askNo="
				+ askNo + ", originalName=" + originalName + ", editedName=" + editedName + ", fileRoot=" + fileRoot
				+ ", thumbnailPath=" + thumbnailPath + ", fileSize=" + fileSize + ", status=" + status + "]";
	}

	
	

}
