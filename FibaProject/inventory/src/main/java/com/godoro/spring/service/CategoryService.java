package com.godoro.spring.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.godoro.spring.Entities.Category;


public interface CategoryService extends CrudRepository<Category, Long> {

	@Query("select c from Category as c")
	List<Category> findAll();

}
