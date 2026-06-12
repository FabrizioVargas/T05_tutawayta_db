CREATE DATABASE IF NOT EXISTS tutawayta_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

USE tutawayta_db;

DROP TABLE IF EXISTS SALE_DETAIL;
DROP TABLE IF EXISTS SALE;
DROP TABLE IF EXISTS PURCHASE;
DROP TABLE IF EXISTS INVENTORY;
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS UNIT_MEASURE;
DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS CLIENT;
DROP TABLE IF EXISTS USER_ACCOUNT;
DROP TABLE IF EXISTS PARTNER;
DROP TABLE IF EXISTS ROLE;

CREATE TABLE ROLE (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(30) NOT NULL
);

CREATE TABLE PARTNER (
    partner_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(100),
    phone VARCHAR(20),
    role_id INT NOT NULL,
    CONSTRAINT fk_partner_role
        FOREIGN KEY (role_id) REFERENCES ROLE(role_id)
);

CREATE TABLE USER_ACCOUNT (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    last_login TIMESTAMP NULL,
    CONSTRAINT fk_user_account_partner
        FOREIGN KEY (partner_id) REFERENCES PARTNER(partner_id)
);

CREATE TABLE CLIENT (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dni VARCHAR(15) NOT NULL UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE CATEGORY (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE UNIT_MEASURE (
    unit_id INT AUTO_INCREMENT PRIMARY KEY,
    unit_name VARCHAR(20) NOT NULL
);

CREATE TABLE PRODUCT (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(10,2) NOT NULL,
    category_id INT NOT NULL,
    unit_id INT NOT NULL,
    CONSTRAINT fk_product_category
        FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id),
    CONSTRAINT fk_product_unit_measure
        FOREIGN KEY (unit_id) REFERENCES UNIT_MEASURE(unit_id)
);

CREATE TABLE INVENTORY (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    available_quantity INT NOT NULL,
    updated_at DATE,
    CONSTRAINT fk_inventory_product
        FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

CREATE TABLE PURCHASE (
    purchase_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    purchase_date DATE NOT NULL,
    quantity INT NOT NULL,
    purchase_price DECIMAL(10,2) NOT NULL,
    partner_id INT NOT NULL,
    supplier VARCHAR(100),
    CONSTRAINT fk_purchase_product
        FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    CONSTRAINT fk_purchase_partner
        FOREIGN KEY (partner_id) REFERENCES PARTNER(partner_id)
);

CREATE TABLE SALE (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    partner_id INT NOT NULL,
    client_id INT NOT NULL,
    CONSTRAINT fk_sale_partner
        FOREIGN KEY (partner_id) REFERENCES PARTNER(partner_id),
    CONSTRAINT fk_sale_client
        FOREIGN KEY (client_id) REFERENCES CLIENT(client_id)
);

CREATE TABLE SALE_DETAIL (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_sale_detail_sale
        FOREIGN KEY (sale_id) REFERENCES SALE(sale_id),
    CONSTRAINT fk_sale_detail_product
        FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);