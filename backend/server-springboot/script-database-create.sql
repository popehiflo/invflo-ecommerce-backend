-- -----------------------------------------------------
-- Create new MySQL Server 8.0.23 user for our app 
-- -----------------------------------------------------
CREATE USER 'popehifloecommerce'@'localhost' IDENTIFIED BY 'popehifloecommerce';
GRANT ALL PRIVILEGES ON * . * TO 'popehifloecommerce'@'localhost';
ALTER USER 'popehifloecommerce'@'localhost' IDENTIFIED WITH mysql_native_password BY 'popehifloecommerce';

-- -----------------------------------------------------
-- Schema popehiflo-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `popehiflo-ecommerce`;

CREATE SCHEMA `popehiflo-ecommerce`;
USE `popehiflo-ecommerce` ;

-- -----------------------------------------------------
-- Table `popehiflo-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `popehiflo-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `popehiflo-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `popehiflo-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;
