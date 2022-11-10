package com.godoro.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.godoro.spring.Entities.Product;

@Controller
public class ProductController {

	
	@GetMapping("inventory/product/{id}")
	@ResponseBody
	public String getProduct(@PathVariable("id") long productId) {
		String url = "http://localhost:8081/inventory/api/product/" + productId;
		RestTemplate restTemplate = new RestTemplate();
		Product product = restTemplate.getForObject(url, Product.class);
		System.out.println("ürün:  " + product.getProductName());
		return "Aranan Ürün: " + product.getProductName() + " " + product.getSalesPrice();
	}
	
	@GetMapping("inventory/products/{categoryid}")
	@ResponseBody
	public String getProductsByCategory(@PathVariable("categoryid") long categoryId) {
		String url = "http://localhost:8081/inventory/api/products/" + categoryId;
		RestTemplate restTemplate = new RestTemplate();
		Product product = restTemplate.getForObject(url, Product.class);
		System.out.println("ürün:  " + product.getProductName());
		return "Kategorideki Ürün:  " + product.getProductName() + " " + product.getSalesPrice();
	}

	

}
