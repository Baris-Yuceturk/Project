package com.godoro.spring.Entities;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long productId;

	private String productName;
	private double salesPrice;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Category category;

	public Product() {
		super();
	}

	public Product(long productId, String productName, double salesPrice) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.salesPrice = salesPrice;

	}

	@GeneratedValue
	public long getProductId() {
		return productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getSalesPrice() {
		return salesPrice;
	}

	public void setSalesPrice(double salesPrice) {
		this.salesPrice = salesPrice;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

}
