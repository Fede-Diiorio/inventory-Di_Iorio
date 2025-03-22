USE coder_inventory;

DELIMITER $$

CREATE FUNCTION fn_get_top_client() RETURNS VARCHAR(150) DETERMINISTIC
BEGIN
    DECLARE top_client VARCHAR(150);
    
    SELECT CONCAT(c.id, ' - ', c.name, ' (', COUNT(s.id), ' compras)') 
    INTO top_client
    FROM client AS c
    JOIN sale AS s ON c.id = s.client_id
    GROUP BY c.id
    ORDER BY COUNT(s.id) DESC
    LIMIT 1;

    RETURN top_client;
END $$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION fn_get_client_spent(client_id INT) RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    DECLARE total_spent DECIMAL(10,2);
    
    SELECT COALESCE(SUM(p.price * sd.quantity), 0) 
    INTO total_spent
    FROM sale AS s
    JOIN sale_detail AS sd ON s.id = sd.sale_id
    JOIN product AS p ON sd.product_id = p.id
    WHERE s.client_id = client_id;
    
    RETURN total_spent;
END $$

DELIMITER ;

