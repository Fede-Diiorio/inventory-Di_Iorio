SELECT * FROM vw_categories;
SELECT * FROM vw_clients;
SELECT * FROM vw_products;
SELECT * FROM vw_sales ORDER BY id DESC;
SELECT * FROM vw_sales_detail ORDER BY sale_id DESC;

CALL sp_create_sale(1, @saleId); 
SELECT @saleId;
CALL sp_process_sale(@saleId, 3, 2); 
CALL sp_process_sale(@saleId, 5, 1);

SELECT fn_get_client_spent(1);
SELECT fn_get_top_client();
