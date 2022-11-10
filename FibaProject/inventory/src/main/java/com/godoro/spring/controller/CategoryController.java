package com.godoro.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.godoro.spring.Entities.Category;
import com.godoro.spring.Entities.Product;
import com.godoro.spring.service.CategoryService;

@RestController
public class CategoryController {

	@Autowired	
	private CategoryService categoryService;
	
	@GetMapping("inventory/categories")
	@ResponseBody
	public String listProducts() {
		String url = "http://localhost:8081/inventory/api/categories";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Category> response = restTemplate.getForEntity(url, Category.class);
		Category categories =response.getBody();
		
	return "Kategoriler:  " ;
	}
	
}
