package com.ddb.springmvc.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ddb.springmvc.domain.Product;
import com.ddb.springmvc.form.ProductForm;
import com.ddb.springmvc.service.ProductService;

@Controller
public class ProductController {
	private static final Logger logger = Logger.getLogger(ProductController.class);

	// 自动注入向后端数据库写数据的组件
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/product_input")
	public String inputProduct() {
		logger.info("inputProduct 被调用！");
		return "ProductForm";
	}

	@RequestMapping(value = "/product_save", method = RequestMethod.POST)
	public String saveProduct(ProductForm productForm, RedirectAttributes redirectAttributes) {
		logger.info("saveProduct 被调用！");

		Product product = new Product();
		product.setName(productForm.getName());
		product.setDescription(productForm.getDescription());

		try {
			product.setPrice(Double.parseDouble(productForm.getPrice()));
		} catch (Exception e) {
			e.printStackTrace();
		}

		// add product
		Product saveProduct = productService.add(product);
		// 使用下面的对象，可以给重定向传值！
		redirectAttributes.addFlashAttribute("message", "The product was successfully added!");
		return "redirect:/product_view/" + saveProduct.getId()+".action";
	}

	//http://localhost:8080/SpringMvc4.3-Start/product_view/2.action
	@RequestMapping(value = "/product_view/{id}") // {}内的id为路径变量
	public String viewProduct(@PathVariable Long id, Model model) {
		Product product = productService.get(id);
		model.addAttribute("product", product);
		return "ProductView";
	}

	//http://localhost:8080/SpringMvc4.3-Start/product_retrieve.action?id=1
	@RequestMapping(value = "/product_retrieve")
	public String sendProduct(@RequestParam Long id, Model model) {
		// 使用@RequestParam获取URL路径上？后面的参数，而serlet中是使用Request对象的getParameter()方法
		Product product = productService.get(id);
		model.addAttribute("product", product);
		return "ProductView";
	}
}
