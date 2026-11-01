CREATE table IF NOT EXISTS `geolocation`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `zip_code_prefix` varchar(255),
    `geolocation_lat` DECIMAL(10,8),
    `geolocation_long` DECIMAL(11,8),
    `geolocation_city` varchar(255),
    `geolocation_state` varchar(255),
);

CREATE table IF NOT EXISTS `customers`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` varchar(255) NOT NULL ,
    `customer_unique_id` varchar(255) NOT NULL UNIQUE,
    `customer_zip_code_prefix` varchar(255),
    `customer_city` varchar(255),
    `customer_state` varchar(255),
);

CREATE table IF NOT EXISTS `sellers`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `seller_id` varchar(255) NOT NULL UNIQUE ,
    `seller_zip_code_prefix` varchar(255),
    `seller_city` varchar(255),
    `seller_state` varchar(255),
);

CREATE table IF NOT EXISTS `products`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_id` varchar(255) NOT NULL UNIQUE ,
    `product_category_name` varchar(255),
    `product_name_length` int NOT NULL,
    `product_description_length` int NOT NULL,
    `product_photos_qty` int NOT NULL,
    `product_weight_g` int ,
    `product_width_cm` int,
    `product_length_cm` int,
    `product_height_cm` int,
);




CREATE table IF NOT EXISTS `payments`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_id` varchar(255) NOT NULL,
    `payment_sequential` int,
    `payment_type` varchar(255),
    `payment_installments` int,
    `payment_value` int
);


