package com.ddb.springmvc.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ddb.springmvc.domain.Product;
import com.ddb.springmvc.form.ProductForm;

@Controller
public class ProductController {
	private static final Logger logger = Logger.getLogger(ProductController.class);

	@RequestMapping(value="/product_input")
	public String inputProduct() {
		logger.info("inputProduct 被调用！");
		return "ProductForm";
	}
	
	@RequestMapping(value="/product_save")
	public String saveProduct(ProductForm productForm,Model model) {
		logger.info("saveProduct 被调用！");
		
		Product product = new Product();
		product.setName(productForm.getName());
		product.setDescription(productForm.getDescription());
		
		try {
			product.setPrice(Double.parseDouble(productForm.getPrice()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//add product
		model.addAttribute("product", product);
		return "ProductDetails";
	}

}
