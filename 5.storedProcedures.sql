DELIMITER $$

CREATE PROCEDURE sp_discount_stock(IN p_quantity INT, IN p_product_id INT)
BEGIN
 
    UPDATE products
    SET stock = stock - p_quantity
    WHERE id = p_product_id AND stock >= p_quantity;

    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Stock insuficiente';
    END IF;
END$$

CREATE PROCEDURE sp_create_sale(IN p_client_id INT, OUT p_sale_id INT)
BEGIN
    INSERT INTO sales (client_id) VALUES (p_client_id);
    SET p_sale_id = LAST_INSERT_ID();
END$$

CREATE PROCEDURE sp_process_sale(IN p_sale_id INT, IN p_product_id INT, IN p_quantity INT)
BEGIN

    START TRANSACTION;

    CALL sp_discount_stock(p_quantity, p_product_id);

    INSERT INTO sales_detail (sale_id, product_id, quantity) 
    VALUES (p_sale_id, p_product_id, p_quantity);

    COMMIT;

    SELECT 'Venta procesada correctamente' AS mensaje;
END$$

DELIMITER ;
