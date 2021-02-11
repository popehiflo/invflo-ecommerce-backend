import { Component, OnInit } from '@angular/core';
import { ProductService } from '../../services/product.service';
import { Product } from '../../commons/product';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  products: Product[];

  // Inyecta el service
  constructor(private productService: ProductService) { }

  ngOnInit(): void {

    this.listProducts();

  }

  listProducts(): void {
    this.productService.getProductList().subscribe(
      data => {
        this.products = data;
      }
    )
  }

}
