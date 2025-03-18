USE coder_inventory;

INSERT INTO categories (name) VALUES
('Electrodomesticos'),
('Audio y Sonido'),
('Perifericos'),
('Monitores'),
('Muebles de Oficina'),
('Tecnologia Wearable'),
('Almacenamiento'),
('Accesorios de Viaje'),
('Iluminacion'),
('Camaras y Fotografia'),
('Redes y Conectividad'),
('Impresion'),
('Produccion Musical'),
('Cargadores y Energia'),
('Consolas y Videojuegos');

INSERT INTO products (name, description, price, stock, category_id) VALUES
('Cafetera Express', 'Cafetera automatica con espumador de leche', 199.99, 10, 1),
('Auriculares Bluetooth', 'Auriculares inalambricos con cancelacion de ruido', 89.99, 25, 2),
('Teclado Mecanico', 'Teclado mecanico RGB con switches rojos', 79.50, 15, 3),
('Monitor 24"', 'Monitor LED Full HD de 24 pulgadas', 159.99, 8, 4),
('Silla Gamer', 'Silla ergonomica para gaming con reposabrazos ajustables', 249.00, 5, 5),
('Smartwatch', 'Reloj inteligente con monitor de actividad fisica', 129.99, 20, 6),
('Disco SSD 1TB', 'Unidad de estado solido de 1TB NVMe', 119.50, 12, 7),
('Mochila Antirrobo', 'Mochila impermeable con puerto USB', 45.99, 18, 8),
('Lampara LED Escritorio', 'Lampara LED regulable con carga inalambrica', 39.90, 22, 9),
('Mouse Inalambrico', 'Mouse ergonomico con sensor optico de alta precision', 29.99, 30, 3),
('Camara Web HD', 'Camara web 1080p con microfono integrado', 59.99, 10, 10),
('Parlante Bluetooth', 'Altavoz portatil con sonido envolvente', 55.00, 14, 2),
('Tablet 10"', 'Tableta Android de 10 pulgadas con 64GB de almacenamiento', 199.00, 7, 6),
('Router WiFi 6', 'Router de última generacion con alta velocidad y cobertura', 89.99, 9, 11),
('Impresora Multifuncion', 'Impresora 3 en 1 (escaner, copiadora, impresora)', 179.00, 6, 12),
('Ventilador USB', 'Mini ventilador portatil con carga USB', 12.99, 35, 9),
('Power Bank 20000mAh', 'Bateria externa de alta capacidad con carga rapida', 39.99, 17, 8),
('Alfombrilla Gaming', 'Mousepad XL con base antideslizante', 19.50, 40, 3),
('Controlador MIDI', 'Controlador de audio para produccion musical', 249.99, 3, 13),
('Cargador Inalambrico', 'Cargador Qi compatible con dispositivos iOS y Android', 25.99, 28, 14),
('Consola de Videojuegos', 'Consola de última generacion con graficos en 4K', 499.99, 10, 15),
('Control Inalambrico', 'Mando inalambrico con vibracion y gatillos adaptativos', 69.99, 25, 15),
('Tarjeta de Memoria 256GB', 'Memoria microSD con alta velocidad de lectura', 49.99, 30, 7),
('Lentes de Realidad Virtual', 'Gafas VR compatibles con PC y consolas', 299.99, 5, 15),
('Soporte para Monitor', 'Base ajustable para monitor con espacio de almacenamiento', 35.99, 20, 5);

INSERT INTO clients (name, email, phone) VALUES
('Federico Di Iorio', 'fede.diiorio@email.com', '1122334455'),
('Maria Gonzalez', 'maria.gonzalez@email.com', '1144556677'),
('Carlos Rodriguez', 'carlos.rodriguez@email.com', '1166778899'),
('Ana Fernandez', 'ana.fernandez@email.com', '1188990011'),
('Diego Lopez', 'diego.lopez@email.com', '1122446688'),
('Laura Martinez', 'laura.martinez@email.com', '1133557799'),
('Pedro Sanchez', 'pedro.sanchez@email.com', '1155667788'),
('Sofia Ramirez', 'sofia.ramirez@email.com', '1177889900'),
('Martin Herrera', 'martin.herrera@email.com', '1199001122'),
('Gabriela Castro', 'gabriela.castro@email.com', '1100112233'),
('Ricardo Vargas', 'ricardo.vargas@email.com', '1122113344'),
('Elena Duarte', 'elena.duarte@email.com', '1133224455'),
('Roberto Molina', 'roberto.molina@email.com', '1144335566'),
('Patricia Guzman', 'patricia.guzman@email.com', '1155446677'),
('Fernando Rios', 'fernando.rios@email.com', '1166557788'),
('Carlos Carloni', 'carlosenllamas@email.com', '1222334455');

INSERT INTO sales (client_id) VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (1), (2), (3), (1), (14);

INSERT INTO sales_detail (sale_id, product_id, quantity) VALUES
(1, 3, 2), (1, 5, 1), (1,  8, 3),
(2, 1, 1), (2, 7, 2),
(3, 2, 1), (3, 9, 4), 
(3, 10, 2), (4, 4, 2),
(5, 6, 3), (5, 8, 1),
(6, 2, 2), (6, 7, 1),
(7, 5, 3), (7, 10, 2),
(8, 3, 1), (8, 6, 1),
(9, 1, 2), (9, 4, 3), (9, 9, 2), 
(10, 2, 1), (10, 8, 2), 
(11, 5, 1), (11, 6, 2), 
(12, 3, 3),
(13, 1, 1), (13, 7, 2),
(14, 4, 1), (14, 8, 1),
(15, 2, 3), (15, 9, 1),
(16, 5, 2), (16, 10, 1),
(17, 1, 3), (17, 6, 2),
(18, 2, 1), (18, 7, 1),
(19, 4, 2), (19, 8, 3),
(20, 3, 2), (20, 9, 1);




