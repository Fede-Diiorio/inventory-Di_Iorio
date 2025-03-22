# Getión de ventas e inventario | SQL

## Requisitos

- Tener instalado un gestor de bases de datos compatible con SQL (como **MySQL Workbench**).

## Instalación y Uso

Sigue estos pasos para cargar y utilizar la base de datos:

1. Clona este repositorio en tu máquina local:

   ```bash
   git clone https://github.com/Fede-Diiorio/inventory-Di_Iorio.git
   ```

2. Abre tu gestor de bases de datos (por ejemplo, **MySQL Workbench**) y carga el archivo `1.schema.sql` para crear la base de datos y todas las tablas necesarias.
3. Luego debes correr el archivo `2.views.sql` para crear las vistas, lo que va a facilitar la visualización de la información cargada a la base de datos.
4. Una vez hecho todo esto, deberás ejecutar el script `3.functions.sql` para crear un par de funciones útiles para la gentión de datos.
5. Luego, crearás los procedimientos almacenados, ejecutando `4.storedProcedures.sql`.
6. Agrega los triggers ejecutando el archivo `5.triggers.sql` para poder completar la configuración de la base de datos antes de insertar los datos.
7. Crea los usuarios correspondientes ejecutando `6.dataControlLenguage.sql` para mantener el control de los accesos de cada operario a la base de datos.
8. Por último con todo configurado, podras ejeuctar la inserción de datos ejecutando el archivo `7.insertData.sql`.

> **Importante:** Los bloques de datos deben ejecutarse en el orden acorde al número al principio de cada archivo para evitar errores de dependencia en la base de datos.

> **Tener en cuenta:** Si respetaste la configuración anterior los usuarios habrán quedado asignado pero queda en tu responsabilidad asignarlos a cada operario de la base de datos.

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

También puedes importar la estructura de la base de datos con el archivo `BackupSinDatos.sql` o bien puedes cargar la base de datos completa importando el archivo `BackupConDatos.sql`.
