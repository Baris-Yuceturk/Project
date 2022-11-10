package com.godoro.spring.Resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.godoro.spring.Entities.Category;

import com.godoro.spring.service.CategoryService;


@RestController
public class CategoryResource {

	@Autowired
	private CategoryService categoryService;
	
	@GetMapping("inventory/api/categories")
	public Iterable<Category> getCategories() {
		Iterable<Category> categorytList = categoryService.findAll();
		return categorytList;
	}

	
}
