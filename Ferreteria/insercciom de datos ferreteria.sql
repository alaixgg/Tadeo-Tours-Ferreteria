-- Insertando datos en la tabla cargo
INSERT INTO cargo (id_cargo, nombre_cargo, salario) VALUES 
(seq_cargo.NEXTVAL, 'Gerente', 5000),
(seq_cargo.NEXTVAL, 'Vendedor', 3000),
(seq_cargo.NEXTVAL, 'Almacenero', 2500),
(seq_cargo.NEXTVAL, 'Cajero', 2800),
(seq_cargo.NEXTVAL, 'Auxiliar de ventas', 2700),
(seq_cargo.NEXTVAL, 'Supervisor', 4500),
(seq_cargo.NEXTVAL, 'Asistente administrativo', 3200),
(seq_cargo.NEXTVAL, 'Reponedor', 2600),
(seq_cargo.NEXTVAL, 'Jefe de almacén', 4000),
(seq_cargo.NEXTVAL, 'Contador', 4800);

-- Insertando datos en la tabla empleado
INSERT INTO empleado (id_empleado, nombre_empleado, apellido_empleado, id_cargo, correo_empleado, telefono_empleado) VALUES 
(seq_empleado.NEXTVAL, 'Juan', 'Perez', 1, 'juan.perez@example.com', 123456789),
(seq_empleado.NEXTVAL, 'Maria', 'Gomez', 2, 'maria.gomez@example.com', 987654321),
(seq_empleado.NEXTVAL, 'Pedro', 'Martinez', 3, 'pedro.martinez@example.com', 456789123),
(seq_empleado.NEXTVAL, 'Ana', 'Lopez', 4, 'ana.lopez@example.com', 321654987),
(seq_empleado.NEXTVAL, 'Luis', 'Gonzalez', 5, 'luis.gonzalez@example.com', 654789321),
(seq_empleado.NEXTVAL, 'Laura', 'Rodriguez', 6, 'laura.rodriguez@example.com', 789654123),
(seq_empleado.NEXTVAL, 'Carlos', 'Sanchez', 7, 'carlos.sanchez@example.com', 159753468),
(seq_empleado.NEXTVAL, 'Sofia', 'Diaz', 8, 'sofia.diaz@example.com', 357951468),
(seq_empleado.NEXTVAL, 'Diego', 'Hernandez', 9, 'diego.hernandez@example.com', 246813579),
(seq_empleado.NEXTVAL, 'Julia', 'Flores', 10, 'julia.flores@example.com', 369258147);

-- Insertando datos en la tabla cliente
INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente, direccion_cliente, correo_cliente) VALUES 
(seq_cliente.NEXTVAL, 'Roberto', 'Alvarez', 1122334455, 'Calle 123, Ciudad', 'roberto.alvarez@example.com'),
(seq_cliente.NEXTVAL, 'Elena', 'Diaz', 9988776655, 'Avenida 456, Pueblo', 'elena.diaz@example.com'),
(seq_cliente.NEXTVAL, 'Manuel', 'Vargas', 5544332211, 'Carrera 789, Villa', 'manuel.vargas@example.com'),
(seq_cliente.NEXTVAL, 'Sara', 'Fernandez', 6677889900, 'Plaza 567, Pueblo', 'sara.fernandez@example.com'),
(seq_cliente.NEXTVAL, 'Pablo', 'Garcia', 3344556677, 'Callejon 890, Ciudad', 'pablo.garcia@example.com'),
(seq_cliente.NEXTVAL, 'Carolina', 'Perez', 7788990011, 'Bulevar 234, Villa', 'carolina.perez@example.com'),
(seq_cliente.NEXTVAL, 'Daniel', 'Sanchez', 1122334455, 'Avenida 901, Ciudad', 'daniel.sanchez@example.com'),
(seq_cliente.NEXTVAL, 'Lucia', 'Martinez', 9988776655, 'Calle 345, Pueblo', 'lucia.martinez@example.com'),
(seq_cliente.NEXTVAL, 'Marcos', 'Lopez', 5544332211, 'Plaza 678, Villa', 'marcos.lopez@example.com'),
(seq_cliente.NEXTVAL, 'Valeria', 'Gomez', 6677889900, 'Carrera 234, Pueblo', 'valeria.gomez@example.com');

-- Insertando datos en la tabla producto
INSERT INTO producto (id_producto, nombre_producto, id_proveedor, almacenamiento_producto, precio, marca) VALUES 
(seq_producto.NEXTVAL, 'Martillo', 1, 'Bodega A', 15, 'Herramientas Plus'),
(seq_producto.NEXTVAL, 'Tornillo', 2, 'Bodega B', 1, 'Ferreteria Moderna'),
(seq_producto.NEXTVAL, 'Llave Inglesa', 3, 'Bodega C', 20, 'Mecanicos SRL'),
(seq_producto.NEXTVAL, 'Pintura Blanca', 4, 'Bodega A', 30, 'Pinturas del Sur'),
(seq_producto.NEXTVAL, 'Destornillador', 5, 'Bodega B', 10, 'Herramientas Plus'),
(seq_producto.NEXTVAL, 'Sierra Electrica', 6, 'Bodega C', 50, 'Mecanicos SRL'),
(seq_producto.NEXTVAL, 'Cinta Métrica', 7, 'Bodega A', 8, 'Ferreteria Moderna'),
(seq_producto.NEXTVAL, 'Clavos', 8, 'Bodega B', 5, 'Herramientas Plus'),
(seq_producto.NEXTVAL, 'Brocha', 9, 'Bodega C', 12, 'Pinturas del Sur'),
(seq_producto.NEXTVAL, 'Lijadora', 10, 'Bodega A', 40, 'Mecanicos SRL');

-- Insertando datos en la tabla proveedor
INSERT INTO proveedor (id_proveedor, nombre_proveedor, correo_proveedor, direccion_proveedor, telefono_proveedor, cuenta_bancaria_proveedor) VALUES 
(seq_proveedor.NEXTVAL, 'Herramientas Plus', 'contacto@herramientasplus.com', 'Calle Mayor 123, Ciudad', '1234567890', 'ES12345678901234567890'),
(seq_proveedor.NEXTVAL, 'Ferreteria Moderna', 'ventas@ferreteriamoderna.com', 'Avenida Principal 456, Pueblo', '9876543210', 'ES09876543210987654321'),
(seq_proveedor.NEXTVAL, 'Mecanicos SRL', 'info@mecanicossrl.com', 'Carrera Central 789, Villa', '1230987654', 'ES32109876543210987654'),
(seq_proveedor.NEXTVAL, 'Pinturas del Sur', 'contacto@pinturasdelsur.com', 'Plaza Central 012, Ciudad', '4567890123', 'ES45678901234567890123'),
(seq_proveedor.NEXTVAL, 'Suministros Electricos', 'ventas@suministroselectricos.com', 'Bulevar Norte 345, Pueblo', '7890123456', 'ES56789012345678901234');

-- Insertando datos en la tabla inventarios
INSERT INTO inventarios (ID_INVENTARIO, ID_PRODUCTO, CANTIDAD_PRODUCTOS_INVENTARIO) VALUES 
(seq_inventarios.NEXTVAL, 1, 100),
(seq_inventarios.NEXTVAL, 2, 500),
(seq_inventarios.NEXTVAL, 3, 200),
(seq_inventarios.NEXTVAL, 4, 50),
(seq_inventarios.NEXTVAL, 5, 300),
(seq_inventarios.NEXTVAL, 6, 80),
(seq_inventarios.NEXTVAL, 7, 400),
(seq_inventarios.NEXTVAL, 8, 600),
(seq_inventarios.NEXTVAL, 9, 150),
(seq_inventarios.NEXTVAL, 10, 120);

-- Insertando datos en la tabla detalle_producto
INSERT INTO detalle_producto (ID_DETALLE_PRODUCTO, DETALLES_PRODUCTO, CANTIDAD_PRODUCTOS, ID_PRODUCTO) VALUES 
(seq_detalle_producto.NEXTVAL, 'Martillo de acero de alta resistencia', 100, 1),
(seq_detalle_producto.NEXTVAL, 'Tornillos de 2 pulgadas', 500, 2),
(seq_detalle_producto.NEXTVAL, 'Llave ajustable de 10 pulgadas', 200, 3),
(seq_detalle_producto.NEXTVAL, 'Pintura base agua de alta calidad', 50, 4),
(seq_detalle_producto.NEXTVAL, 'Destornillador de punta plana', 300, 5),
(seq_detalle_producto.NEXTVAL, 'Sierra Electrica portatil de 12V', 80, 6),
(seq_detalle_producto.NEXTVAL, 'Cinta Métrica de 5 metros', 400, 7),
(seq_detalle_producto.NEXTVAL, 'Clavos galvanizados de 2 pulgadas', 600, 8),
(seq_detalle_producto.NEXTVAL, 'Brocha de cerdas naturales de 2 pulgadas', 150, 9),
(seq_detalle_producto.NEXTVAL, 'Lijadora orbital de 200W', 120, 10);

-- Insertando datos en la tabla venta
INSERT INTO venta (id_venta, fecha_venta, id_cliente, id_pago, total_venta) VALUES 
(seq_venta.NEXTVAL, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 1, 1, 150),
(seq_venta.NEXTVAL, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 2, 2, 200),
(seq_venta.NEXTVAL, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 3, 3, 300),
(seq_venta.NEXTVAL, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 4, 4, 180),
(seq_venta.NEXTVAL, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 5, 5, 250),
(seq_venta.NEXTVAL, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 6, 6, 400),
(seq_venta.NEXTVAL, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 7, 7, 120),
(seq_venta.NEXTVAL, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 8, 8, 350),
(seq_venta.NEXTVAL, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 9, 9, 280),
(seq_venta.NEXTVAL, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 10, 10, 220);

-- Insertando datos en la tabla pedido
INSERT INTO pedido (id_pedido, fecha_entrega, id_venta, estado_pedido) VALUES 
(seq_pedido.NEXTVAL, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 1, 1),
(seq_pedido.NEXTVAL, TO_DATE('2024-03-08', 'YYYY-MM-DD'), 2, 1),
(seq_pedido.NEXTVAL, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 3, 0),
(seq_pedido.NEXTVAL, TO_DATE('2024-03-18', 'YYYY-MM-DD'), 4, 1),
(seq_pedido.NEXTVAL, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 5, 1),
(seq_pedido.NEXTVAL, TO_DATE('2024-03-28', 'YYYY-MM-DD'), 6, 0),
(seq_pedido.NEXTVAL, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 7, 1),
(seq_pedido.NEXTVAL, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 8, 1),
(seq_pedido.NEXTVAL, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 9, 1),
(seq_pedido.NEXTVAL, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 10, 0);

-- Insertando datos en la tabla pago
INSERT INTO pago (id_pago, valor_pago, fecha_transacion_pago, forma_pago, id_cliente, id_pedido) VALUES 
(seq_pago.NEXTVAL, 150, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Efectivo', 1, 1),
(seq_pago.NEXTVAL, 200, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'Tarjeta de crédito', 2, 2),
(seq_pago.NEXTVAL, 300, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Transferencia bancaria', 3, 3),
(seq_pago.NEXTVAL, 180, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Efectivo', 4, 4),
(seq_pago.NEXTVAL, 250, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 'Tarjeta de débito', 5, 5),
(seq_pago.NEXTVAL, 400, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 'Transferencia bancaria', 6, 6),
(seq_pago.NEXTVAL, 120, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 'Efectivo', 7, 7),
(seq_pago.NEXTVAL, 350, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 'Tarjeta de crédito', 8, 8),
(seq_pago.NEXTVAL, 280, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 'Tarjeta de débito', 9, 9),
(seq_pago.NEXTVAL, 220, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 'Transferencia bancaria', 10, 10);

-- Insertando datos en la tabla factura
INSERT INTO factura (id_factura, id_pedido, fecha_factura, id_pago) VALUES 
(seq_factura.NEXTVAL, 1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 1),
(seq_factura.NEXTVAL, 2, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 2),
(seq_factura.NEXTVAL, 4, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 4),
(seq_factura.NEXTVAL, 5, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 5),
(seq_factura.NEXTVAL, 8, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 8),
(seq_factura.NEXTVAL, 9, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 9),
(seq_factura.NEXTVAL, 10, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 10),
(seq_factura.NEXTVAL, 3, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 3),
(seq_factura.NEXTVAL, 6, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 6),
(seq_factura.NEXTVAL, 7, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 7);

-- Insertando datos en la tabla detalle_pedido
INSERT INTO detalle_pedido (id_detalle_pedido, cantidad_de_producto, id_pedido, id_detalle_producto) VALUES 
(seq_detalle_pedido.NEXTVAL, 5, 1, 1),
(seq_detalle_pedido.NEXTVAL, 10, 2, 2),
(seq_detalle_pedido.NEXTVAL, 8, 3, 3),
(seq_detalle_pedido.NEXTVAL, 6, 4, 4),
(seq_detalle_pedido.NEXTVAL, 7, 5, 5),
(seq_detalle_pedido.NEXTVAL, 12, 6, 6),
(seq_detalle_pedido.NEXTVAL, 4, 7, 7),
(seq_detalle_pedido.NEXTVAL, 9, 8, 8),
(seq_detalle_pedido.NEXTVAL, 11, 9, 9),
(seq_detalle_pedido.NEXTVAL, 15, 10, 10);

-- Insertando datos en la tabla compra_proveedor
INSERT INTO compra_proveedor (id_compra_provedor, id_productos, id_proveedor, cantidad_productos, precio) VALUES 
(seq_compra_proveedor.NEXTVAL, 1, 1, 200, 10),
(seq_compra_proveedor.NEXTVAL, 2, 2, 300, 0.8),
(seq_compra_proveedor.NEXTVAL, 3, 3, 150, 15),
(seq_compra_proveedor.NEXTVAL, 4, 4, 50, 25),
(seq_compra_proveedor.NEXTVAL, 5, 5, 100, 8),
(seq_compra_proveedor.NEXTVAL, 6, 1, 80, 40),
(seq_compra_proveedor.NEXTVAL, 7, 2, 120, 5),
(seq_compra_proveedor.NEXTVAL, 8, 3, 180, 4),
(seq_compra_proveedor.NEXTVAL, 9, 4, 90, 10),
(seq_compra_proveedor.NEXTVAL, 10, 5, 60, 35);
