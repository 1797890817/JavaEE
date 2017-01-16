package com.ddb.springmvc.service;

import com.ddb.springmvc.domain.Product;

public interface ProductService {
	Product add(Product product);
	Product get(long id);
}
