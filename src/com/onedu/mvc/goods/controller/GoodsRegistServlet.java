package com.onedu.mvc.goods.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.onedu.mvc.goods.model.dto.GoodsDTO;
import com.onedu.mvc.goods.model.dto.ImgDTO;
import com.onedu.mvc.goods.model.dto.OptionDTO;
import com.onedu.mvc.goods.model.service.GoodsService;

import net.coobird.thumbnailator.Thumbnails;


@WebServlet("/goods/regist")
public class GoodsRegistServlet extends HttpServlet {
	
           
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/goods/goodsRegistForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}
		
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			String rootLocation = getServletContext().getRealPath("/");
			int maxFileSize = 1280 * 1280 * 10;
			String encodingType = "UTF-8";
			
			System.out.println("파일 저장 ROOT 경로 : " + rootLocation);
			System.out.println("최대 업로드 파일 용량 : " + maxFileSize);
			System.out.println("인코딩 방식 : " + encodingType);
			
			String fileUploadDirectory = rootLocation + "/resources/upload/original/";
			String thumbnailDirectory = rootLocation + "/resources/upload/thumbnail/";
			
			File directory = new File(fileUploadDirectory);
			File directory2 = new File(thumbnailDirectory);
			
			if(!directory.exists() || !directory2.exists()) {
				System.out.println("폴더 생성 : " + directory.mkdirs());
				System.out.println("폴더 생성 : " + directory2.mkdirs());
			}
			
			Map<String, String> parameter = new HashMap<>();
			List<Map<String, String>> fileList = new ArrayList<>();
			
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setRepository(new File(fileUploadDirectory));
			fileItemFactory.setSizeThreshold(maxFileSize);
			
			ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
			
			try {
				List<FileItem> fileItems = fileUpload.parseRequest(request);
				
				for(FileItem item : fileItems) {
					System.out.println(item);
				}
				
				for(int i = 0; i < fileItems.size(); i++) {
					FileItem item = fileItems.get(i);
					
					if(!item.isFormField()) {
						
						if(item.getSize() > 0) {
							
							String fieldName = item.getFieldName();
							String originFileName = item.getName();
							
							int dot = originFileName.lastIndexOf(".");
							String ext = originFileName.substring(dot);
							
							String randomFileName = UUID.randomUUID().toString().replace("-", "") + ext;
							
							File storeFile = new File(fileUploadDirectory + "/" + randomFileName);
							
							item.write(storeFile);
							
							Map<String, String> fileMap = new HashMap<>();
							fileMap.put("filedName", fieldName);
							fileMap.put("originFileName", randomFileName);
							fileMap.put("savedFileName", randomFileName);
							fileMap.put("savePath", "/resources/upload/original/");
							
							int width = 0;
							int height = 0;
							if("goods".equals(fieldName)) {
								fileMap.put("fileType", "THUMBNAIL");
								
								width = 417;
								height = 417;
							} else {
								fileMap.put("fileType", "BODY");
								
								width = 900;
								height = 900;
							}
							
							Thumbnails.of(fileUploadDirectory + randomFileName) 
							        .size(width, height)
							        .toFile(thumbnailDirectory + "Thumbnail_" + randomFileName);
							
							fileMap.put("thumbnailPath", "/resources/upload/thumbnail/thumbnail_" + randomFileName);
							
							fileList.add(fileMap);
							
						}
						
			} else {
				parameter.put(item.getFieldName(), new String(item.getString().getBytes("ISO-8859-1"), "UTF-8"));

				
				}
			}
			
			System.out.println("parameter : " + parameter);
			System.out.println("fileList : " + fileList);
			
			GoodsDTO goods = new GoodsDTO();
			goods.setCategoryId(Integer.parseInt(parameter.get("categoryId")));
			goods.setGoodsName(parameter.get("goodsName"));
			goods.setGoodsNameEn(parameter.get("goodsNameEn"));
			goods.setGoodsExplain(parameter.get("goodsExplain"));
			goods.setPrice(Integer.parseInt(parameter.get("price")));
			goods.setTotalStock(Integer.parseInt(parameter.get("totalStock")));
			goods.setGoodsExplainDetail(parameter.get("goodsExplainDetail"));
			
			goods.setOptionList(new ArrayList<OptionDTO>());
			List<OptionDTO> optionlist = goods.getOptionList();
			for(int i = 0; i < fileList.size(); i++) {
				Map<String, String> file = fileList.get(i);
				
				OptionDTO tempOptionInfo = new OptionDTO();
				tempOptionInfo.setOptionName(parameter.get(""));
				tempOptionInfo.setOptionName2(parameter.get(""));
				tempOptionInfo.setExtra_pay(Integer.parseInt(parameter.get("")));
				
				optionlist.add(tempOptionInfo);
				
			}
			
			goods.setImgList(new ArrayList<ImgDTO>());
			List<ImgDTO> imglist = goods.getImgList();
			for(int i = 0; i < fileList.size(); i++) {
				Map<String, String> file = fileList.get(i);
				
				ImgDTO tempFileInfo = new ImgDTO();
				tempFileInfo.setOriginalName(file.get("originFileName"));
				tempFileInfo.setEditedName(file.get("savedFileName"));
				tempFileInfo.setFileRoot(file.get("savePath"));
				tempFileInfo.setThumbnailPath(file.get("thumbnailPath"));
				
				imglist.add(tempFileInfo);
			}
			
			System.out.println("goods detail : " + goods);
			
			int result = new GoodsService().insertGoodsDetail(goods);
			
			String path = "";
			if(result > 0) {
				path = "/WEB-INF/views/common/success.jsp";
				request.setAttribute("successCode", "insertImg");
			} else {
				path = "/WEB-INF/views/common/failed.jsp";
				request.setAttribute("message", "상품 등록에 실패했습니다.");
			}
			
			request.getRequestDispatcher(path).forward(request, response);

	} catch (Exception e) {
		
		int cnt = 0;
		for(int i = 0; i < fileList.size(); i++) {
			Map<String, String> file = fileList.get(i);
			
			File deleteFile = new File(fileUploadDirectory + "/" + file.get("savedFileName"));
			boolean isDeleted = deleteFile.delete();
			
			if(isDeleted) {
				cnt++;
			}
		}
		
		if(cnt == fileList.size()) {
			System.out.println("업로드에 실패한 모든 사진 삭제 완료!");
			e.printStackTrace();
		} else {
			e.printStackTrace();
		}
		
	

			
			}
		}
	}
}
		

