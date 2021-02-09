## RELEASE 1.0

### Spring Data REST will expose ALL these endpoints for free  
| HTTP Method  | PATH           |Description                |
| -------------|----------------|-------------------------- |
| POST         | /products      |Create a new product       |
| GET          | /products      |Read a list of products    |
| GET          | /products/{id} |Read a single product      |
| PUT          | /products/{id} |Update an existing product |
| DELETE       | /products/{id} |Delete an existing product |   

Pero yo no quiero esto, quiero que la REST API sea de solo lectura por el momento (release 1.0),  
podria crear mi propio @RestController y definir manualmente metodos de acceso (@GetMapping)  
pero eso seria perder las ventajas de usar Spring Data REST que nos ofrece la paginacion, ordenacion, etc.  
Entonces solo debemos deshabilitar los metodos que permiten escribir: POST, PUT y DELETE.  
MyDataRestConfig se encarga de eso.

Muestra Links (APIs) disponibles:   
    http://localhost:8080/api   

Muestra una Lista de los productos:   
    http://localhost:8080/api/products   

Muestra una Lista de los productos:  
    http://localhost:8080/api/product-category  