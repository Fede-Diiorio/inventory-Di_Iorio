USE coder_inventory;

CREATE OR REPLACE VIEW vw_category AS
SELECT
	id,
    name
FROM category
ORDER BY id;

CREATE OR REPLACE VIEW vw_product AS 
SELECT
	p.id,
    p.name,
    p.description,
    p.price,
    p.stock,
    c.name AS category
FROM product AS p
INNER JOIN category AS c ON (c.id = p.category_id)
ORDER BY id;

CREATE OR REPLACE VIEW vw_sale AS 
SELECT 
	s.id,
    s.date,
    c.name,
    c.email,
    c.phone,
    SUM(sd.quantity * p.price) AS total
FROM sale AS s
INNER JOIN client AS c ON (c.id = s.client_id)
INNER JOIN sale_detail AS sd ON (s.id = sd.sale_id)
INNER JOIN product AS p on (sd.product_id = p.id)
GROUP BY s.id, s.date, s.client_id
ORDER BY s.id;

CREATE OR REPLACE VIEW vw_sale_detail AS
SELECT 
	sd.sale_id,
    p.name,
    p.price AS unit_price,
    sd.quantity,
    sd.quantity * p.price AS subtotal
FROM sale_detail AS sd
INNER JOIN product AS p ON (p.id = sd.product_id)
ORDER BY sd.sale_id;    

CREATE OR REPLACE VIEW vw_client AS
SELECT 
	c.id,
    c.name,
    c.email,
    c.phone,
    COUNT(s.id) AS total_purchases,
    COALESCE(SUM(sd.quantity), 0) AS purchased_products
FROM client AS c
LEFT JOIN sale AS s ON (c.id = s.client_id)
LEFT JOIN sale_detail AS sd ON (s.id = sd.sale_id)
GROUP BY c.id;

CREATE OR REPLACE VIEW vw_orders AS 
SELECT 
	id,
    date,
    user
FROM orders;

CREATE OR REPLACE VIEW vw_orders_detail AS
SELECT 
	o.order_id,
    p.id AS product_id,
    p.name,
    p.price AS unit_price,
    o.quantity,
    o.quantity * p.price AS subtotal
FROM orders_detail AS o
INNER JOIN product AS p ON (p.id = o.product_id);

    