USE coder_inventory;

-- VISTAS
SELECT * FROM vw_categories;
SELECT * FROM vw_clients;
SELECT * FROM vw_products;
SELECT * FROM vw_sales ORDER BY id DESC;
SELECT * FROM vw_sales_detail ORDER BY sale_id DESC;

-- CREACIÓN DE COMPRA
CALL sp_create_sale(1, @saleId); 
SELECT @saleId;
CALL sp_process_sale(@saleId, 3, 2); 
CALL sp_process_sale(@saleId, 5, 1);

-- FUNCIONES
SELECT fn_get_client_spent(1);
SELECT fn_get_top_client();

-- ACTIVACIÓN DE DISPARADORES (las ventas no deberían modificarse y por eso se eligieron crear estos triggers)
UPDATE sales
SET client_id = 10, date = NOW()
WHERE id = 1;

UPDATE sales_detail
SET product_id = 2, quantity = 4
WHERE sale_id = 1
AND product_id = 3;

DELETE FROM sales WHERE id = 2;

SELECT * FROM auditory ORDER BY id DESC;