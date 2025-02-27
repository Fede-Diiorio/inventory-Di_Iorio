USE coder_inventory;

CREATE OR REPLACE VIEW get_categoires AS
SELECT
	id,
    name
FROM categories
ORDER BY id;

CREATE OR REPLACE VIEW get_products AS 
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