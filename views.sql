USE coder_inventory;

CREATE OR REPLACE VIEW view_categoires AS
SELECT
	id,
    name
FROM categories
ORDER BY id;

CREATE OR REPLACE VIEW view_products AS 
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

CREATE OR REPLACE VIEW view_sales AS 
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




    