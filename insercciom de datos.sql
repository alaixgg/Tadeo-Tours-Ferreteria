-- Insertando datos en la tabla cargo
INSERT INTO cargo (id_cargo, nombre_cargo, salario) VALUES 
(1, 'Gerente', 5000),
(2, 'Vendedor', 3000),
(3, 'Almacenero', 2500),
(4, 'Cajero', 2800),
(5, 'Auxiliar de ventas', 2700),
(6, 'Supervisor', 4500),
(7, 'Asistente administrativo', 3200),
(8, 'Reponedor', 2600),
(9, 'Jefe de almacén', 4000),
(10, 'Contador', 4800);

-- Insertando datos en la tabla empleado
INSERT INTO empleado (id_empleado, nombre_empleado, apellido_empleado, id_cargo, correo_empleado, telefono_empleado) VALUES 
(1, 'Juan', 'Perez', 1, 'juan.perez@example.com', 123456789),
(2, 'Maria', 'Gomez', 2, 'maria.gomez@example.com', 987654321),
(3, 'Pedro', 'Martinez', 3, 'pedro.martinez@example.com', 456789123),
(4, 'Ana', 'Lopez', 4, 'ana.lopez@example.com', 321654987),
(5, 'Luis', 'Gonzalez', 5, 'luis.gonzalez@example.com', 654789321),
(6, 'Laura', 'Rodriguez', 6, 'laura.rodriguez@example.com', 789654123),
(7, 'Carlos', 'Sanchez', 7, 'carlos.sanchez@example.com', 159753468),
(8, 'Sofia', 'Diaz', 8, 'sofia.diaz@example.com', 357951468),
(9, 'Diego', 'Hernandez', 9, 'diego.hernandez@example.com', 246813579),
(10, 'Julia', 'Flores', 10, 'julia.flores@example.com', 369258147);

-- Insertando datos en la tabla cliente
INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente, direccion_cliente, correo_cliente) VALUES 
(1, 'Roberto', 'Alvarez', 1122334455, 'Calle 123, Ciudad', 'roberto.alvarez@example.com'),
(2, 'Elena', 'Diaz', 9988776655, 'Avenida 456, Pueblo', 'elena.diaz@example.com'),
(3, 'Manuel', 'Vargas', 5544332211, 'Carrera 789, Villa', 'manuel.vargas@example.com'),
(4, 'Sara', 'Fernandez', 6677889900, 'Plaza 567, Pueblo', 'sara.fernandez@example.com'),
(5, 'Pablo', 'Garcia', 3344556677, 'Callejon 890, Ciudad', 'pablo.garcia@example.com'),
(6, 'Carolina', 'Perez', 7788990011, 'Bulevar 234, Villa', 'carolina.perez@example.com'),
(7, 'Daniel', 'Sanchez', 1122334455, 'Avenida 901, Ciudad', 'daniel.sanchez@example.com'),
(8, 'Lucia', 'Martinez', 9988776655, 'Calle 345, Pueblo', 'lucia.martinez@example.com'),
(9, 'Marcos', 'Lopez', 5544332211, 'Plaza 678, Villa', 'marcos.lopez@example.com'),
(10, 'Valeria', 'Gomez', 6677889900, 'Carrera 234, Pueblo', 'valeria.gomez@example.com');

-- Insertando datos en la tabla producto
INSERT INTO producto (id_producto, nombre_producto, id_proveedor, almacenamiento_producto, precio, marca) VALUES 
(1, 'Martillo', 1, 'Bodega A', 15, 'Herramientas Plus'),
(2, 'Tornillo', 2, 'Bodega B', 1, 'Ferreteria Moderna'),
(3, 'Llave Inglesa', 3, 'Bodega C', 20, 'Mecanicos SRL'),
(4, 'Pintura Blanca', 4, 'Bodega A', 30, 'Pinturas del Sur'),
(5, 'Destornillador', 5, 'Bodega B', 10, 'Herramientas Plus'),
(6, 'Sierra Electrica', 6, 'Bodega C', 50, 'Mecanicos SRL'),
(7, 'Cinta Métrica', 7, 'Bodega A', 8, 'Ferreteria Moderna'),
(8, 'Clavos', 8, 'Bodega B', 5, 'Herramientas Plus'),
(9, 'Brocha', 9, 'Bodega C', 12, 'Pinturas del Sur'),
(10, 'Lijadora', 10, 'Bodega A', 40, 'Mecanicos SRL');

-- Insertando datos en la tabla proveedor
INSERT INTO proveedor (id_proveedor, nombre_proveedor, correo_proveedor, direccion_proveedor, telefono_proveedor, cuenta_bancaria_proveedor) VALUES 
(1, 'Herramientas Plus', 'contacto@herramientasplus.com', 'Calle Mayor 123, Ciudad', '1234567890', 'ES12345678901234567890'),
(2, 'Ferreteria Moderna', 'ventas@ferreteriamoderna.com', 'Avenida Principal 456, Pueblo', '9876543210', 'ES09876543210987654321'),
(3, 'Mecanicos SRL', 'info@mecanicossrl.com', 'Carrera Central 789, Villa', '1230987654', 'ES32109876543210987654'),
(4, 'Pinturas del Sur', 'contacto@pinturasdelsur.com', 'Plaza Central 012, Ciudad', '4567890123', 'ES45678901234567890123'),
(5, 'Suministros Electricos', 'ventas@suministroselectricos.com', 'Bulevar Norte 345, Pueblo', '7890123456', 'ES56789012345678901234');

-- Insertando datos en la tabla inventarios
INSERT INTO inventarios (ID_INVENTARIO, ID_PRODUCTO, CANTIDAD_PRODUCTOS_INVENTARIO) VALUES 
(1, 1, 100),
(2, 2, 500),
(3, 3, 200),
(4, 4, 50),
(5, 5, 300),
(6, 6, 80),
(7, 7, 400),
(8, 8, 600),
(9, 9, 150),
(10, 10, 120);

-- Insertando datos en la tabla detalle_producto
INSERT INTO detalle_producto (ID_DETALLE_PRODUCTO, DETALLES_PRODUCTO, CANTIDAD_PRODUCTOS, ID_PRODUCTO) VALUES 
(1, 'Martillo de acero de alta resistencia', 100, 1),
(2, 'Tornillos de 2 pulgadas', 500, 2),
(3, 'Llave ajustable de 10 pulgadas', 200, 3),
(4, 'Pintura base agua de alta calidad', 50, 4),
(5, 'Destornillador de punta plana', 300, 5),
(6, 'Sierra Electrica portatil de 12V', 80, 6),
(7, 'Cinta Métrica de 5 metros', 400, 7),
(8, 'Clavos galvanizados de 2 pulgadas', 600, 8),
(9, 'Brocha de cerdas naturales de 2 pulgadas', 150, 9),
(10, 'Lijadora orbital de 200W', 120, 10);
-- Insertando datos en la tabla venta
INSERT INTO venta (id_venta, fecha_venta, id_cliente, id_pago, total_venta) VALUES 
(1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 1, 1, 150),
(2, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 2, 2, 200),
(3, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 3, 3, 300),
(4, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 4, 4, 180),
(5, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 5, 5, 250),
(6, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 6, 6, 400),
(7, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 7, 7, 120),
(8, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 8, 8, 350),
(9, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 9, 9, 280),
(10, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 10, 10, 220);

-- Insertando datos en la tabla pedido
INSERT INTO pedido (id_pedido, fecha_entrega, id_venta, estado_pedido) VALUES 
(1, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 1, 1),
(2, TO_DATE('2024-03-08', 'YYYY-MM-DD'), 2, 1),
(3, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 3, 0),
(4, TO_DATE('2024-03-18', 'YYYY-MM-DD'), 4, 1),
(5, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 5, 1),
(6, TO_DATE('2024-03-28', 'YYYY-MM-DD'), 6, 0),
(7, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 7, 1),
(8, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 8, 1),
(9, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 9, 1),
(10, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 10, 0);

-- Insertando datos en la tabla pago
INSERT INTO pago (id_pago, valor_pago, fecha_transacion_pago, forma_pago, id_cliente, id_pedido) VALUES 
(1, 150, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Efectivo', 1, 1),
(2, 200, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'Tarjeta de crédito', 2, 2),
(3, 300, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Transferencia bancaria', 3, 3),
(4, 180, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Efectivo', 4, 4),
(5, 250, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 'Tarjeta de débito', 5, 5),
(6, 400, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 'Transferencia bancaria', 6, 6),
(7, 120, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 'Efectivo', 7, 7),
(8, 350, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 'Tarjeta de crédito', 8, 8),
(9, 280, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 'Tarjeta de débito', 9, 9),
(10, 220, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 'Transferencia bancaria', 10, 10);

-- Insertando datos en la tabla factura
INSERT INTO factura (id_factura, id_pedido, fecha_factura, id_pago) VALUES 
(1, 1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 1),
(2, 2, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 2),
(3, 4, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 4),
(4, 5, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 5),
(5, 8, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 8),
(6, 9, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 9),
(7, 10, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 10),
(8, 3, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 3),
(9, 6, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 6),
(10, 7, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 7);

-- Insertando datos en la tabla detalle_pedido
INSERT INTO detalle_pedido (id_detalle_pedido, cantidad_de_producto, id_pedido, id_detalle_producto) VALUES 
(1, 5, 1, 1),
(2, 10, 2, 2),
(3, 8, 3, 3),
(4, 6, 4, 4),
(5, 7, 5, 5),
(6, 12, 6, 6),
(7, 4, 7, 7),
(8, 9, 8, 8),
(9, 11, 9, 9),
(10, 15, 10, 10);

-- Insertando datos en la tabla compra_proveedor
INSERT INTO compra_proveedor (id_compra_provedor, id_productos, id_proveedor, cantidad_productos, precio) VALUES 
(1, 1, 1, 200, 10),
(2, 2, 2, 300, 0.8),
(3, 3, 3, 150, 15),
(4, 4, 4, 50, 25),
(5, 5, 5, 100, 8),
(6, 6, 1, 80, 40),
(7, 7, 2, 120, 5),
(8, 8, 3, 180, 4),
(9, 9, 4, 90, 10),
(10, 10, 5, 60, 35);
