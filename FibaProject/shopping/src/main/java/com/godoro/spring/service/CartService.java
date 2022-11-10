package com.godoro.spring.service;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import com.godoro.spring.entities.Cart;

public interface CartService extends CrudRepository <Cart, Long> {


}
