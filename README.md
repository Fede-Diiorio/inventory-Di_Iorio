# Getión de ventas e inventario | SQL

## Descripción

Este esquema de base de datos, **`coder_inventory`**, está diseñado para gestionar un inventario de productos y su proceso de venta, permitiendo un control eficiente sobre las categorías de productos, clientes, ventas y el detalle de cada transacción.

### **🔹 Problema que resuelve**

Muchas empresas necesitan un sistema que les permita administrar su inventario de productos, registrar las ventas y llevar un control de los clientes. Sin una estructura organizada, pueden surgir problemas como:

- **Falta de control de stock**, lo que puede llevar a vender productos no disponibles.
- **Dificultad para gestionar las categorías de productos**, impidiendo una búsqueda y organización eficiente.
- **Registro inconsistente de ventas**, dificultando el seguimiento de compras de los clientes.
- **Falta de trazabilidad en los detalles de venta**, impidiendo conocer qué productos se vendieron en cada transacción.

### **🔹 Cómo lo soluciona**

Este esquema permite:  
✅ **Categorizar productos** en la tabla `categories`, facilitando la organización.  
✅ **Registrar productos con su precio, stock y descripción** en la tabla `products`.  
✅ **Gestionar clientes** en la tabla `clients`, asegurando que cada venta esté asociada a un cliente específico.  
✅ **Controlar ventas y su historial** en la tabla `sales`, con un registro de la fecha y el cliente asociado.  
✅ **Desglosar cada venta en detalle** en la tabla `sales_detail`, asegurando un control preciso de los productos vendidos y sus cantidades.

### **🔹 Relación entre las tablas**

- **`products`** está relacionado con **`categories`**, permitiendo agrupar productos.
- **`sales`** está vinculado a **`clients`**, asegurando que cada venta tenga un comprador identificado.
- **`sales_detail`** une **`sales` y `products`**, registrando qué productos y cuántas unidades se vendieron en cada transacción.

### **🔹 Restricciones y Reglas de Integridad**

🔹 **Restricciones de unicidad:** Se evitan duplicados en los nombres de productos y categorías, así como en correos y teléfonos de clientes.  
🔹 **Restricciones de eliminación:**

- Si se elimina una categoría, los productos asociados quedan con `category_id = NULL` en lugar de borrarse.
- No se pueden eliminar productos si están registrados en ventas (`ON DELETE RESTRICT`).
- Si se elimina una venta, los detalles de la venta también se eliminan (`ON DELETE CASCADE`).

En conjunto, este esquema garantiza un sistema estructurado y confiable para la gestión de inventario y ventas.

## Diagrama Entidad-Relación (ERD)

El Diagrama Entidad-Relación (ERD) del proyecto te permitirá entender la estructura de la base de datos. Para visualizarlo:

1. Descarga o clona este repositorio en tu máquina local.
2. Abre el archivo del diagrama en [draw.io](https://app.diagrams.net/).
3. Selecciona la opción **Dispositivo** y luego **Abrir diagrama existente**.
4. Busca el archivo [InventoryCoder.drawio](https://github.com/Fede-Diiorio/inventory-Di_Iorio/blob/main/InventoryCoder.drawio) en el lugar donde lo descargaste.

> **Nota:** Puedes modificar o personalizar el diagrama según tus necesidades.

## Requisitos

- Tener instalado un gestor de bases de datos compatible con SQL (como **MySQL Workbench**).
- Acceso a [draw.io](https://app.diagrams.net/) para visualizar el diagrama.

## Informe Escrito

Puedes encontrar más información sobre el proyecto y las tablas accediendo al siguiente [informe](https://drive.google.com/file/d/1rTDs8yyLNltXdM5anJH5yGsNwmHJAMUq/view?usp=drive_link).

## Instalación y Uso

Sigue estos pasos para cargar y utilizar la base de datos:

1. Clona este repositorio en tu máquina local:

   ```bash
   git clone https://github.com/Fede-Diiorio/inventory-Di_Iorio.git
   ```

2. Abre tu gestor de bases de datos (por ejemplo, **MySQL Workbench**) y carga el archivo `1.schema.sql` para crear la base de datos y todas las tablas necesarias.
3. Luego puedes correr el archivo `2.views.sql` para crear las vistas, lo que va a facilitar la visualización de la información cargada a la base de datos.
4. Una vez hecho todo esto, deberás ejecutar el script `3.functions.sql` para crear un par de funciones útiles para la gentión de datos.
5. Luego, crearás los procedimientos almacenados, ejecutando `4.storedProcedures.sql`.
6. Agrega los triggers ejecutando el archivo `5.triggers.sql` para poder completar la configuración de la base de datos antes de insertar los datos.
7. Por último con todo configurado, podras ejeuctar la inserción de datos ejecutando el archivo `6.insertData.sql`.

> **Importante:** Los bloques de datos deben ejecutarse en el orden acorde al número al principio de cada archivo para evitar errores de dependencia en la base de datos.

## Ejemplos de uso

El lineas generales solo necesitarás conocimientos básicos de SQL para ejecutar la mayoría de las tareas. No obstante si debes tener en cuenta como la base de datos genera una nueva venta.

    CALL sp_create_sale(2, @saleId); -- Generar nueva vanta
    SELECT @saleId; -- Seleccionar el ID de la última venta creada
    CALL sp_process_sale(@saleId, 3, 2); -- Cargar productos a la venta (venta_id, producto_id, cantidad)

Puedes guiarte usando ese código para crear nuevas ventas. En caso que necesites agregar más productos a la venta simplemente tendrás que hacer una nueva llamada a `sp_process_sale`.

    CALL sp_create_sale(1, @saleId);
    SELECT @saleId;
    CALL sp_process_sale(@saleId, 4, 2);
    CALL sp_process_sale(@saleId, 1, 3);

Si tienes más dudas, encontrarás un archivo `examples.sql` en el que tendrás un ejemplo de como debes realizar la llamada de cada uno de los objetos creados en el esquema.
