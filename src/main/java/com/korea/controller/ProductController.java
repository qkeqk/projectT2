package com.korea.controller;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.korea.k2.product.ProductService;
import com.korea.k2.product.ProductVO;

@Controller
public class ProductController {
	String path ="";
	String timeStr ="";
		
	@Autowired
	private  ProductService service;
	
	@Autowired // 서블릿 주입하기
	private ServletContext servletContext;
	
	@PostConstruct 
	public void init() {
		path = servletContext.getRealPath("/product/files/");
	}
	
    @RequestMapping("/productFormOK.do")
	String  memberOk( Model model, ProductVO vo  ) throws Exception {
    	
		long time = System.currentTimeMillis();
		SimpleDateFormat daytime =new SimpleDateFormat("HHmmss");
		timeStr=daytime.format(time);
    	
    	System.out.println("path:"+path);
    	
       	String fileName ="";
		MultipartFile updateFile =vo.getProductImg();
		fileName=updateFile.getOriginalFilename();
		File f=new File(path+fileName);
		if( !updateFile.isEmpty()) {
			if (f.exists()) {
			  String onlyFileName =fileName.substring(0,fileName.lastIndexOf(".")); 
			  String extension =fileName.substring(fileName.lastIndexOf(".")); 
			  fileName=onlyFileName+"_"+timeStr+extension;
			}
			updateFile.transferTo(new File(path+fileName));		  
		} else {
			 fileName= "space.png"; // 첨부파일이 없어면 ...
		}	
		
		vo.setProductImgStr(fileName);
    	service.insert(vo);
		return "productList.do";	
		
	}
  
    @RequestMapping("/productList.do")
	String  productList( Model model, ProductVO vo  ) throws Exception { 
     	model.addAttribute("li", service.selectAll(vo));
		return "/product/product_list.jsp";		
	}
    
    @RequestMapping("/productOne.do")
	String  productOne( Model model, ProductVO vo  ) throws Exception { 
     	model.addAttribute("p", service.selectOne(vo));
		return "/product/productEdit.jsp";		
	}
    
    @RequestMapping("/productDelete.do")
	String  productDelete( Model model, ProductVO vo  ) throws Exception { 
     	 service.delete(vo);
		return "/productList.do";		
	}
    
		
}
