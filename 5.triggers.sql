USE coder_inventory;

DELIMITER $$

CREATE TRIGGER tr_insert_client 
AFTER INSERT ON coder_inventory.client
FOR EACH ROW
BEGIN
	INSERT INTO auditory (action_name, table_name, newfile_oldfile, user) 
    VALUES ('INSERT', 'clients', CONCAT('ID de cliente: ', NEW.id), CURRENT_USER());
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER tr_update_sale
AFTER UPDATE ON coder_inventory.sale
FOR EACH ROW
BEGIN
	INSERT INTO auditory (action_name, table_name, newfile_oldfile, user)
    VALUES ('UPDATE', 'sales', 
		CONCAT('Viejo ID: ', OLD.id, ' - Nuevo ID: ', NEW.id, ' | Vieja fecha: ', OLD.date, ' - Nueva fecha: ', NEW.date, ' | Viejo ID cliente: ', OLD.client_id, ' - Nuevo ID cliente: ', NEW.client_id), 
        CURRENT_USER());
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER tr_update_sales_details
AFTER UPDATE ON coder_inventory.sale_detail
FOR EACH ROW
BEGIN
	INSERT INTO auditory (action_name, table_name, newfile_oldfile, user)
    VALUES ('UPDATE', 'sales_detail', 
    CONCAT(
		'Viejo ID Venta: ', OLD.sale_id, ' - Nuevo ID Venta: ', NEW.sale_id, 
        ' | Viejo ID Producto: ', OLD.product_id, ' - Nuevo ID Producto: ', NEW.product_id, 
        ' | Vieja Cantidad: ', OLD.quantity, ' - Nueva Cantidad: ', NEW.quantity),
    CURRENT_USER());
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER tr_before_delete_sale
BEFORE DELETE ON coder_inventory.sale
FOR EACH ROW
BEGIN
    -- Guardar todos los detalles de la venta en auditory antes de que se eliminen por el cascade
    INSERT INTO auditory (action_name, table_name, newfile_oldfile, user)
    SELECT 'DELETE', 'sales_detail',
        CONCAT('Venta ID: ', sale_id, ' - Producto ID: ', product_id, ' - Cantidad: ', quantity),
        CURRENT_USER()
    FROM coder_inventory.sales_detail
    WHERE sale_id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER tr_delete_sale
AFTER DELETE ON coder_inventory.sale
FOR EACH ROW
BEGIN
	INSERT INTO auditory (action_name, table_name, newfile_oldfile, user)
    VALUES ('DELETE', 'sales',
		CONCAT('ID: ', OLD.id, ' - Fecha: ', OLD.date, ' - ID cliente: ', OLD.client_id),
        CURRENT_USER());
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER tr_before_insert_order
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    SET NEW.user = CURRENT_USER();
END$$

DELIMITER ;
