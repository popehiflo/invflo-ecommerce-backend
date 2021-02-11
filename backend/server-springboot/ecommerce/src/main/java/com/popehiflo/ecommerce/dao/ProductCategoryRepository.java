package com.popehiflo.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.popehiflo.ecommerce.entity.ProductCategory;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
//	Modifica el path por defecto que nos ofrece
// 		productCategory -> Name of JSON entry
// 		/product-category 	-> This will be the actual reference
@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long> {

}
