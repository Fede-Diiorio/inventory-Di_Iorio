USE coder_inventory;

CREATE USER 'vendedor'@'localhost' IDENTIFIED BY 'UsuarioVendedor123';
CREATE USER 'supervisor'@'localhost' IDENTIFIED BY 'UsuarioSupervisor123';
CREATE USER 'administrador'@'localhost' IDENTIFIED BY 'UsuarioAdministrador123';

-- PERMISOS DE VENDEDORES

GRANT SELECT ON coder_inventory.product TO 'vendedor'@'localhost';
GRANT SELECT ON coder_inventory.category TO 'vendedor'@'localhost';
GRANT SELECT, INSERT ON coder_inventory.client TO 'vendedor'@'localhost';
GRANT SELECT, INSERT ON coder_inventory.sale TO 'vendedor'@'localhost';
GRANT SELECT, INSERT ON coder_inventory.sale_detail TO 'vendedor'@'localhost';
GRANT SELECT ON coder_inventory.vw_product TO 'vendedor'@'localhost';
GRANT SELECT ON coder_inventory.vw_client TO 'vendedor'@'localhost';
GRANT SELECT ON coder_inventory.vw_sale TO 'vendedor'@'localhost';
GRANT SELECT ON coder_inventory.vw_sale_detail TO 'vendedor'@'localhost';
GRANT EXECUTE ON PROCEDURE coder_inventory.sp_create_sale TO 'vendedor'@'localhost';
GRANT EXECUTE ON PROCEDURE coder_inventory.sp_process_sale TO 'vendedor'@'localhost';

-- PERMISOS DE SUPERVISORES

GRANT SELECT, INSERT, UPDATE, DELETE ON coder_inventory.category TO 'supervisor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON coder_inventory.product TO 'supervisor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON coder_inventory.client TO 'supervisor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON coder_inventory.sale TO 'supervisor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON coder_inventory.sale_detail TO 'supervisor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON coder_inventory.orders TO 'supervisor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON coder_inventory.orders_detail TO 'supervisor'@'localhost';
GRANT SELECT ON coder_inventory.vw_category TO 'supervisor'@'localhost';
GRANT SELECT ON coder_inventory.vw_product TO 'supervisor'@'localhost';
GRANT SELECT ON coder_inventory.vw_sale TO 'supervisor'@'localhost';
GRANT SELECT ON coder_inventory.vw_sale_detail TO 'supervisor'@'localhost';
GRANT SELECT ON coder_inventory.vw_client TO 'supervisor'@'localhost';
GRANT SELECT ON coder_inventory.vw_orders TO 'supervisor'@'localhost';
GRANT SELECT ON coder_inventory.vw_orders_detail TO 'supervisor'@'localhost';
GRANT EXECUTE ON FUNCTION coder_inventory.fn_get_top_client TO 'supervisor'@'localhost';
GRANT EXECUTE ON FUNCTION coder_inventory.fn_get_client_spent TO 'supervisor'@'localhost';
GRANT EXECUTE ON PROCEDURE coder_inventory.sp_discount_stock TO 'supervisor'@'localhost';
GRANT EXECUTE ON PROCEDURE coder_inventory.sp_add_stock TO 'supervisor'@'localhost';
GRANT EXECUTE ON PROCEDURE coder_inventory.sp_create_sale TO 'supervisor'@'localhost';
GRANT EXECUTE ON PROCEDURE coder_inventory.sp_process_sale TO 'supervisor'@'localhost';
GRANT EXECUTE ON PROCEDURE coder_inventory.sp_create_order TO 'supervisor'@'localhost';
GRANT EXECUTE ON PROCEDURE coder_inventory.sp_process_order TO 'supervisor'@'localhost';


-- PERMISOS DE ADMINISTRADOR

GRANT ALL PRIVILEGES ON coder_inventory.* TO 'administrador'@'localhost';