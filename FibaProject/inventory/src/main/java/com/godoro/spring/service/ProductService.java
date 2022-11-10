package com.godoro.spring.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.godoro.spring.Entities.Product;

public interface ProductService extends CrudRepository<Product, Long> {

	@Query("select p from Product p where p.category.categoryId = :categoryId")
	List<Product> findByCategoryId(long categoryId);
	

}
