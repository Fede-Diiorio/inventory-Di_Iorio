CREATE SCHEMA IF NOT EXISTS coder_inventory;
USE coder_inventory;

CREATE TABLE IF NOT EXISTS category (
    id INT AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL UNIQUE,
    CONSTRAINT pk_category PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS product (
    id INT AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    price DECIMAL(10,2) CHECK (price >= 0.01),
    stock INT NOT NULL CHECK (stock >= 0),
    category_id INT NULL,
    CONSTRAINT pk_product PRIMARY KEY (id),
    CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES category (id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS clients (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) DEFAULT "Sin Nombre",
    email VARCHAR(70) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT pk_clients PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS sale (
    id INT AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    client_id INT NOT NULL,
    CONSTRAINT pk_sale PRIMARY KEY (id),
    CONSTRAINT fk_sale_client FOREIGN KEY (client_id) REFERENCES clients (id) ON DELETE RESTRICT 
);

CREATE TABLE IF NOT EXISTS sale_detail (
    sale_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1 CHECK (quantity >= 1),
    CONSTRAINT pk_sale_detail PRIMARY KEY (sale_id, product_id), 
    CONSTRAINT fk_sale_detail_sale FOREIGN KEY (sale_id) REFERENCES sale (id) ON DELETE CASCADE,
    CONSTRAINT fk_sale_detail_product FOREIGN KEY (product_id) REFERENCES product (id) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS auditory (
	id INT AUTO_INCREMENT,
    action_name VARCHAR (10) NOT NULL,
    table_name VARCHAR (50) NOT NULL,
    newfile_oldfile VARCHAR (200),
    user VARCHAR (60) NOT NULL,
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_auditory PRIMARY KEY (id)
);
