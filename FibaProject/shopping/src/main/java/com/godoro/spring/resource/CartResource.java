package com.godoro.spring.resource;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.godoro.spring.entities.Cart;
import com.godoro.spring.service.CartService;

@RestController
public class CartResource {
	@Autowired
	private CartService cartService;
	
	@GetMapping("/shopping/api/cart/add/{cartid}")
	public Optional<Cart> getCart(@PathVariable("cartid") long cartId) {
		Optional<Cart> cart = cartService.findById(cartId);
		return cart;

	}
	
	@GetMapping("/shopping/api/cart/checkout/{cartid}")
	public Optional<Cart> getCartOut(@PathVariable("cartid") long cartId) {
		Optional<Cart> cart = cartService.findById(cartId);
		return cart;
	}
	
}
