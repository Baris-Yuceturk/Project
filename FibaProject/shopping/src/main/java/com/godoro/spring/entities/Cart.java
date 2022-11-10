package com.godoro.spring.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long cartId;

	private String customerName;
	
	private double totalAmount;
	
	private boolean status;

	@OneToMany(mappedBy = "cart", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	public List<CartProduct> cartProducts;
	
	
	public Cart() {
		super();
	}

	public Cart(long cartId, String customerName, double totalAmount, boolean status, List<CartProduct> cartProducts) {
		super();
		this.cartId = cartId;
		this.customerName = customerName;
		this.totalAmount = totalAmount;
		this.status = status;
		this.cartProducts = cartProducts;
	}

	public long getCartId() {
		return cartId;
	}

	public void setCartId(long cartId) {
		this.cartId = cartId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public List<CartProduct> getCartProducts() {
		return cartProducts;
	}

	public void setCartProducts(List<CartProduct> cartProducts) {
		this.cartProducts = cartProducts;
	}

	
	
}
