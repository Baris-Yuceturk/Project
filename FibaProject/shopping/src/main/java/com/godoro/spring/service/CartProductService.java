package com.godoro.spring.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.godoro.spring.entities.CartProduct;


public interface CartProductService extends CrudRepository <CartProduct, Long> {
	@Query ("select c from CartProduct c where c.cart.cartId = :cartId")
	List<CartProduct> findProductByCart (long cartId);
	
}
