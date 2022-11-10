package com.godoro.spring.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import com.godoro.spring.entities.Cart;
import com.godoro.spring.entities.CartProduct;
import com.godoro.spring.service.CartProductService;
import com.godoro.spring.service.CartService;

@RestController
public class CartController {

	@Autowired
	private CartService cartService;
	
	@Autowired
	private CartProductService cartProductService;

	CartProduct cartProduct = new CartProduct();
	
	
	@GetMapping("/shopping/cart/create")
	@ResponseBody
	public String createCart() {
		Cart cart = new Cart();
		cart.setCustomerName("Kişi 1");
		cart.setStatus(false);
		cart.setTotalAmount(cartProduct.getSalesPrice());
		
		cartService.save(cart);
		return "Sepet Yaratıldı : " +cart.getCartId();
	}
	
	
	@PutMapping("/shopping/cart/add/{cartid}")
	public String postProduct(@PathVariable("cartid") long cartId) {
		String url = "http://localhost:8082/shopping/api/cart/add/" + cartId;
		RestTemplate restTemplate = new RestTemplate();
		Cart cart = restTemplate.getForObject(url, Cart.class);
		CartProduct cp = new CartProduct(5,1,1,5,1,cart);
		cart.setTotalAmount(cp.getSalesPrice());
		cartService.save(cart);
		return "Ürün Eklendi : ";
	}
	
	@DeleteMapping("/shopping/cart/{cartid}/remove/{productid}")
	public String deleteProduct(@PathVariable("cartid")long cartId, @PathVariable("productid")  long cartProductId) {

		cartProductService.deleteById(cartProductId);
		return "deneme";
	}
	
	@GetMapping("/shopping/cart/checkout/{cartid}")
	@ResponseBody
	public String createCart(@PathVariable("cartid") long cartId) {
		String url = "http://localhost:8082/shopping/api/cart/checkout/" + cartId;
		RestTemplate restTemplate = new RestTemplate();
		Cart cart = restTemplate.getForObject(url, Cart.class);
		cart.setStatus(true);
//		cartService.save(cart);
		return "Sepet Kapatıldı ";
	}
	

}
