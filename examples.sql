USE coder_inventory;

-- VISTAS
SELECT * FROM vw_category;
SELECT * FROM vw_client;
SELECT * FROM vw_orders ORDER BY id DESC;
SELECT * FROM vw_orders_detail ORDER BY order_id DESC;
SELECT * FROM vw_product;
SELECT * FROM vw_sale ORDER BY id DESC;
SELECT * FROM vw_sale_detail ORDER BY sale_id DESC;

-- CREACIÓN DE VENTA
CALL sp_create_sale(1, @saleId); 
SELECT @saleId;
CALL sp_process_sale(@saleId, 1, 1);
CALL sp_process_sale(@saleId, 3, 2); 
CALL sp_process_sale(@saleId, 5, 1);

-- CREACIÓN DE ORDEN
CALL sp_create_order(@orderId);
SELECT @orderId;
CALL sp_process_order(@orderId, 4, 3);
CALL sp_process_order(@orderId, 7, 1);
CALL sp_process_order(@orderId, 1, 4);

-- FUNCIONES
SELECT fn_get_client_spent(1);
SELECT fn_get_top_client();

-- ACTIVACIÓN DE DISPARADORES (las ventas no deberían modificarse y por eso se eligieron crear estos triggers)
UPDATE sale
SET client_id = 10, date = NOW()
WHERE id = 1;

UPDATE sale_detail
SET product_id = 2, quantity = 4
WHERE sale_id = 1
AND product_id = 3;

DELETE FROM sale WHERE id = 2;

SELECT * FROM auditory ORDER BY id DESC;