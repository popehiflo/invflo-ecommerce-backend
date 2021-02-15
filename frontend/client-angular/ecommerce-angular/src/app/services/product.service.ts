import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Product } from '../commons/product';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  // Por defecto Spring DATA REST solo retorna la primera pagina con 20 items
  // Debemos enviar el tamanio de pagina para 100 items (?size=100)
  // http://localhost:8080/api/products?size=100
  private baseUrl = 'http://localhost:8080/api/products';

  constructor(private httpClient: HttpClient) { }

  // Returns an Observable
  /* Map the JSON data from Spring Data REST to Product array */
  getProductList(): Observable<Product[]> {
    return this.httpClient.get<GetResponse>(this.baseUrl).pipe(
      map(response => response._embedded.products)
    );
  }

}

// interface para mapear o desenvolver el JSON _embedded
interface GetResponse{
  _embedded: {
    products: Product[];
  }
}
