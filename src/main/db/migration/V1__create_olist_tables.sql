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

CREATE table IF NOT EXISTS `orders`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_id` varchar(255) NOT NULL UNIQUE ,
    `customer_id` varchar(255) NOT NULL ,
    `order_status` varchar(255),
    `order_purchase_timestamp` TIMESTAMP,
    `order_approved_at` TIMESTAMP,
    `order_delivered_carrier_date` TIMESTAMP,
    `order_delivered_customer_date` TIMESTAMP,
    `order_delivered_delivery_date` TIMESTAMP,
);

create table IF NOT EXISTS `order_items`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_id` VARCHAR(255),
    `order_item_id` VARCHAR(255),
    `product_id` VARCHAR(255),
    `seller_id` VARCHAR(255),
    `shipping_limit_date` TIMESTAMP,
    `price` DECIMAL(10,2),
    `freight_value` DECIMAL(10,2),
);

CREATE table IF NOT EXISTS `order_payments`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_id` varchar(255) NOT NULL,
    `payment_sequential` int,
    `payment_type` varchar(255),
    `payment_installments` int,
    `payment_value` int
);

CREATE table IF NOT EXISTS `order_reviews`(
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `review_id` VARCHAR(255) UNIQUE,
    `order_id` VARCHAR(255),
    `review_score` int,
    `review_comment_title` VARCHAR(255),
    `review_comment_message` TEXT,
    `review_creation_date` TIMESTAMP,
    `review_answer_timestamp` TIMESTAMP
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




