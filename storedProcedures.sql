DELIMITER $$

CREATE PROCEDURE discount_stock(IN discount INT, IN productId INT)
BEGIN
    -- Verificar si el stock es suficiente antes de descontar
    IF (SELECT stock FROM products WHERE id = productId) >= discount THEN
        UPDATE products
        SET stock = stock - discount
        WHERE id = productId;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Stock insuficiente';
    END IF;
END$$

DELIMITER ;
