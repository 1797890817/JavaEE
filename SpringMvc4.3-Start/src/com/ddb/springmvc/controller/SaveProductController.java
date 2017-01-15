package com.ddb.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.ddb.springmvc.domain.Product;
import com.ddb.springmvc.form.ProductForm;

public class SaveProductController implements Controller {
	private static final Logger logger = Logger.getLogger(SaveProductController.class);

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("SaveProductController 被调用！");
		ProductForm productForm = new ProductForm();
		productForm.setName(request.getParameter("name"));
		productForm.setDescription(request.getParameter("description"));
		productForm.setPrice(request.getParameter("price"));
		
		
		Product product = new Product();
		product.setName(productForm.getName());
		product.setDescription(productForm.getDescription());
		
		try {
			product.setPrice(Double.parseDouble(productForm.getPrice()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//省略Ｐｒｏｄｕｃｔ数据保存到数据库代码
		
		return new ModelAndView("ProductDetails","product",product);
	}

}
