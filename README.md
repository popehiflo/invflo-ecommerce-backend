# InvFlo: eCommerce 🛒
**Proyecto Web Full Stack**  
_Aplicación ecommerce con sus correspondientes "acciones" usuales._  
Lista de Productos  
Descripción/Vista de cada Producto   
Agregar/Quitar productos del Carrito de compras  
Seguimiento del Carrito de compras  
Inicio/Cierre de Sesión  
Lista Ordenes de Compra de Usuarios  
...
## Descripción 💬
API REST que permite el CRUD o ABM de los diferentes Enums, Entidades aquí listadas:
- [Address](src/main/java/io/github/popehiflo/shopease/persistence/entity/Address.java): Dirección de entrega.
- [Carts](src/main/java/io/github/popehiflo/shopease/persistence/entity/Cart.java): Carrito de productos.
- [CartItems](src/main/java/io/github/popehiflo/shopease/persistence/entity/Doctor.java): Items en el carrito de productos.
- [Categories](src/main/java/io/github/popehiflo/shopease/persistence/entity/Category.java): Categorías de productos.
- [Customers](src/main/java/io/github/popehiflo/shopease/persistence/entity/Customer.java): Categorías de productos.
- [Documents](src/main/java/io/github/popehiflo/shopease/persistence/entity/DocumentType.java): Tipos de Documentos.
- [Images](src/main/java/io/github/popehiflo/shopease/persistence/entity/Image.java): Imágenes de Productos.
- [Invoices](src/main/java/io/github/popehiflo/shopease/persistence/entity/Invoice.java): Facturas.
- [Orders](src/main/java/io/github/popehiflo/shopease/persistence/entity/Order.java): Ordenes de compras.
- [OrderItems](src/main/java/io/github/popehiflo/shopease/persistence/entity/Invoice.java): Items en las órdenes de compra.
- [OrderStatus](src/main/java/io/github/popehiflo/shopease/persistence/enums/Invoice.java): Estados en las órdenes de compra.
- [Products](src/main/java/io/github/popehiflo/shopease/persistence/entity/Product.java): Productos.
- [Profiles](src/main/java/io/github/popehiflo/shopease/persistence/entity/Profile.java): Perfiles de Usuario.
- [Reviews](src/main/java/io/github/popehiflo/shopease/persistence/entity/Review.java): Reseñas de producto.
- [Users](src/main/java/io/github/popehiflo/shopease/persistence/entity/User.java): Usuarios.
- [UserRoles](src/main/java/io/github/popehiflo/shopease/persistence/enums/UserRole.java): Roles para Usuarios.  

The frontend and backend will comunicate using a REST API  
`H2`, `MySQL Server`, `JPA`, `Hibernate`, `Spring Boot`, `Spring Data JPA`, `Spring MVC`, `Spring Security`,
`JWT`, `JUnit`, `Mockito`.

## Backend Java 🛠️
*API Rest usando Java con Spring Boot 3.3.5 y base de datos H2/MySQL. Uso de JPA con Hibernate para la persistencia de datos. También tiene validación de datos, manejo de excepciones, uso adecuado del protocolo HTTP en estándar REST y mucho más*
* [H2](https://www.h2database.com/html/main.html) - Base de Datos relacionales hecho con Java SQL
* [MySQL 8](https://dev.mysql.com/downloads/mysql/) - RDBMS de código abierto
* [Java 17](https://www.oracle.com/java/technologies/downloads/#java17) - Java SE Development Kit 17
* [Spring](https://spring.io/) - El framework web mas usado
    * [Spring Boot]()
    * [Spring Data JPA]()
    * [Spring MVC]()
    * [Spring Security]()
* [Maven](https://maven.apache.org/) - Herramienta de gestión de dependencias
## Frontend JavaScript 🛠️
    JS (Angular 18 y React 18)

## Codigo Fuente 📁
* [Backend Spring Boot](backend/server-springboot/ecommerce)
* [Frontend Angular](frontend/client-angular/ecommerce-angular)

## Ejecutando localmente 🚀
_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._
1. Clonar el repositorio
2. Configura el perfil y la base de datos en `application.properties`
3. Ejecuta `mvn clean install`
4. `mvn spring-boot:run`  
   Luego navegar hacia `http://localhost:8080/` o el puerto según [application.properties](src/main/resources/application.properties).
## Ejecutando los tests 💣
`mvn test`

## Documentación de la API 📜
La documentación de la API está disponible en Swagger UI: `http://localhost:8080/swagger-ui.html`

## Postman 📎
Colección de requests [Collection SB3-InvFlo-Backend](https://www.getpostman.com/collections/1abd828e2e340b18f803) que puedes descargar e importar en tu cliente Postman.
Se lista los distintos endpoints de la API. Tiene variables de entorno (URL_BASE, TOKEN).

## Si encuentra un error o quiere sugerir una mejora 📧
Siéntase libre de informar problemas/errores aquí:
[Issues](https://github.com/popehiflo/invflo-ecommerce-backend/issues)

## Roadmap 🦄
- Implementar autenticación OAuth2
- Añadir soporte para múltiples idiomas
- Integrar con un servicio de notificaciones

## Contribución
1. Fork al proyecto
2. Crea tu rama de características (`git checkout -b feature/amazing-feature`)
3. Commit a tus cambios (`git commit -m 'feat: add some amazing feature'`)
4. Push a la rama (`git push origin feature/amazing-feature`)
5. Abre un Pull Request
## Licencia 📄
[MIT License](LICENSE)

⌨️ con ❤️ por [popehiflo](https://github.com/popehiflo) 😊