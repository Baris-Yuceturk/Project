package com.godoro.spring.resource;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.godoro.spring.entities.CartProduct;
import com.godoro.spring.service.CartProductService;

@RestController
public class CartProductResource {

	@Autowired
	private CartProductService cartProductService;

	@GetMapping("/shopping/api/cart/{cartid}/remove/{productid}")
	public Optional<CartProduct> getCartProduct(@PathVariable("cartid")long cartId, @PathVariable("productid")  long cartProductId) {
		Optional<CartProduct> cartProduct = cartProductService.findById(cartProductId);
		return cartProduct;

	}
	
	
	
}
