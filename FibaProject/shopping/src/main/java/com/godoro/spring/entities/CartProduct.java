package com.godoro.spring.entities;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class CartProduct {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long CartProductId;

	private int productId;
	
	private int salesQuantity;
	
	private double salesPrice;
	
	private double lineAmount;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "cart_id")
	private Cart cart;

	public long getCartProductId() {
		return CartProductId;
	}

	public void setCartProductId(long cartProductId) {
		CartProductId = cartProductId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getSalesQuantity() {
		return salesQuantity;
	}

	public void setSalesQuantity(int salesQuantity) {
		this.salesQuantity = salesQuantity;
	}

	public double getSalesPrice() {
		return salesPrice;
	}

	public void setSalesPrice(double salesPrice) {
		this.salesPrice = salesPrice;
	}

	public double getLineAmount() {
		return lineAmount;
	}

	public void setLineAmount(double lineAmount) {
		this.lineAmount = lineAmount;
	}

	public Cart getCart() {
		return cart;
	}

	public CartProduct(long cartProductId, int productId, int salesQuantity, double salesPrice, double lineAmount,
			Cart cart) {
		super();
		CartProductId = cartProductId;
		this.productId = productId;
		this.salesQuantity = salesQuantity;
		this.salesPrice = salesPrice;
		this.lineAmount = lineAmount;
		this.cart = cart;
	}

	public CartProduct() {
		super();
	}

	
	
	
	
	
}
