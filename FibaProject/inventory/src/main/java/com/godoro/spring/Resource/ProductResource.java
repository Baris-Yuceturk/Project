package com.godoro.spring.Resource;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.godoro.spring.Entities.Product;
import com.godoro.spring.service.ProductService;

@RestController
public class ProductResource {

	@Autowired
	private ProductService productService;

	@GetMapping("inventory/api/product/{id}")
	public Optional<Product> getProduct(@PathVariable("id") long productId) {
		Optional<Product> product = productService.findById(productId);
		return product;

	}
	
	@GetMapping("inventory/api/products/{categoryid}")
	public List<Product> getProductsByCategory(@PathVariable("categoryid") long categoryId) {
		List<Product> product = productService.findByCategoryId(categoryId);
		return product;

	}

}
