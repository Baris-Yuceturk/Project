package com.godoro.spring.Entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long categoryId;

	@OneToMany(mappedBy = "category", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Product> products;

	private String categoryName;

	public long getCategoryId() {
		return categoryId;
	}

	public Category() {
		super();
	}

	public Category(long categoryId, String categoryName) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

}
