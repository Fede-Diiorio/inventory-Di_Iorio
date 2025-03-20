USE coder_inventory;

DELIMITER $$

CREATE PROCEDURE sp_discount_stock(
	IN p_quantity INT, 
    IN p_product_id INT
)
BEGIN
 
    UPDATE product
    SET stock = stock - p_quantity
    WHERE id = p_product_id 
    AND stock >= p_quantity;

    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Stock insuficiente';
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_add_stock (
	IN p_quantity INT,
    IN p_product_id INT
)
BEGIN
	UPDATE product
    SET stock = stock + p_quantity
    WHERE id = p_product_id;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_create_sale(
	IN p_client_id INT, 
    OUT p_sale_id INT
)
BEGIN
    INSERT INTO sale (client_id) VALUES (p_client_id);
    SET p_sale_id = LAST_INSERT_ID();
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_process_sale (
	IN p_sale_id INT, 
    IN p_product_id INT, 
    IN p_quantity INT
)
BEGIN

    START TRANSACTION;

    CALL sp_discount_stock(p_quantity, p_product_id);

    INSERT INTO sales_detail (sale_id, product_id, quantity) 
    VALUES (p_sale_id, p_product_id, p_quantity);

    COMMIT;

    SELECT 'Venta procesada correctamente' AS message;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_create_order (
	OUT p_order_id INT
)
BEGIN
	INSERT INTO orders () VALUES ();
    SET p_order_id = LAST_INSERT_ID();
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_process_order (
	IN p_order_id INT,
    IN p_product_id INT,
    IN p_quantity INT
)
BEGIN

	START TRANSACTION;
    
    CALL sp_add_stock(p_quantity, p_product_id);
    
    INSERT INTO orders_detail (order_id, product_id, quantity) 
    VALUES (p_order_id, p_product_id, p_quantity);
    
    COMMIT;
    
    SELECT 'Orden procesada correctamente' AS message;

END$$

DELIMITER ;
