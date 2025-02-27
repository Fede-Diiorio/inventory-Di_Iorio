# inventory-Di_Iorio

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

En conjunto, este esquema garantiza un sistema estructurado y confiable para la gestión de inventario y ventas. 🚀
