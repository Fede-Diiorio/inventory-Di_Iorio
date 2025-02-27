DELIMITER $$

CREATE PROCEDURE discount_stock(IN discount INT, IN productId INT)
BEGIN
 
    UPDATE products
    SET stock = stock - discount
    WHERE id = productId AND stock >= discount;

    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Stock insuficiente';
    END IF;
END$$

CREATE PROCEDURE create_sale(IN clientId INT, OUT saleId INT)
BEGIN
    INSERT INTO sales (client_id) VALUES (clientId);
    SET saleId = LAST_INSERT_ID();
END$$

CREATE PROCEDURE process_sale(IN saleId INT, IN productId INT, IN quantity INT)
BEGIN

    START TRANSACTION;

    CALL discount_stock(quantity, productId);

    INSERT INTO sales_detail (sale_id, product_id, quantity) 
    VALUES (saleId, productId, quantity);

    COMMIT;

    SELECT 'Venta procesada correctamente' AS mensaje;
END$$

DELIMITER ;
