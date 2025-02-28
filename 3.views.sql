USE coder_inventory;

CREATE OR REPLACE VIEW vw_categories AS
SELECT
	id,
    name
FROM categories
ORDER BY id;

CREATE OR REPLACE VIEW vw_products AS 
SELECT
	p.id,
    p.name,
    p.description,
    p.price,
    p.stock,
    c.name AS category
FROM products AS p
INNER JOIN categories AS c ON (c.id = p.category_id)
ORDER BY id;

CREATE OR REPLACE VIEW vw_sales AS 
SELECT 
	s.id,
    s.date,
    c.name,
    c.email,
    c.phone,
    SUM(sd.quantity * p.price) AS total
FROM sales AS s
INNER JOIN clients AS c ON (c.id = s.client_id)
INNER JOIN sales_detail AS sd ON (s.id = sd.sale_id)
INNER JOIN products AS p on (sd.product_id = p.id)
GROUP BY s.id, s.date, s.client_id
ORDER BY s.id;

CREATE OR REPLACE VIEW vw_sales_detail AS
SELECT 
	sd.sale_id,
    p.name,
    p.price AS unit_price,
    sd.quantity,
    sd.quantity * p.price AS subtotal
FROM sales_detail AS sd
INNER JOIN products AS p ON (p.id = sd.product_id)
ORDER BY sd.sale_id;    

CREATE OR REPLACE VIEW vw_clients AS
SELECT 
	c.id,
    c.name,
    c.email,
    c.phone,
    COUNT(s.id) AS total_purchases,
    COALESCE(SUM(sd.quantity), 0) AS purchased_products
FROM clients AS c
LEFT JOIN sales AS s ON (c.id = s.client_id)
LEFT JOIN sales_detail AS sd ON (s.id = sd.sale_id)
GROUP BY c.id;
    