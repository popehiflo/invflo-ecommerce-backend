package com.popehiflo.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.popehiflo.ecommerce.entity.Product;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface ProductRepository extends JpaRepository<Product, Long> {

}
