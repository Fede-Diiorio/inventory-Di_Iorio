CREATE SCHEMA IF NOT EXISTS coder_inventory;
USE coder_inventory;

CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL UNIQUE,
    CONSTRAINT pk_categories PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    price DECIMAL(10,2) CHECK (price >= 0.01),
    stock INT NOT NULL CHECK (stock >= 0),
    category_id INT NULL,
    CONSTRAINT pk_products PRIMARY KEY (id),
    CONSTRAINT fk_products_category FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS clients (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) DEFAULT "Sin Nombre",
    email VARCHAR(70) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT pk_clients PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS sales (
    id INT AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(11,2) NOT NULL,
    client_id INT NOT NULL,
    CONSTRAINT pk_sales PRIMARY KEY (id),
    CONSTRAINT fk_sales_client FOREIGN KEY (client_id) REFERENCES clients (id) ON DELETE RESTRICT 
);

CREATE TABLE IF NOT EXISTS sales_detail (
    sale_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1 CHECK (quantity >= 1),
    CONSTRAINT pk_sales_detail PRIMARY KEY (sale_id, product_id), 
    CONSTRAINT fk_sales_detail_sale FOREIGN KEY (sale_id) REFERENCES sales (id) ON DELETE CASCADE,
    CONSTRAINT fk_sales_detail_product FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE RESTRICT
);
