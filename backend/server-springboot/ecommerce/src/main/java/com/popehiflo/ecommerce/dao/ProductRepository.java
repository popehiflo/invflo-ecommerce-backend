package com.popehiflo.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.popehiflo.ecommerce.entity.Product;
import org.springframework.web.bind.annotation.CrossOrigin;

//Por defecto Spring DATA REST solo retorna la primera pagina con 20 items
@CrossOrigin
public interface ProductRepository extends JpaRepository<Product, Long> {

}
