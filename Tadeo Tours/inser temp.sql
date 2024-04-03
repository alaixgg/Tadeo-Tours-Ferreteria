-- INSERT INTO ciudad
INSERT INTO ciudad (id_ciudad, ciudad_origen, ciudad_destino, ciudad_adicional) VALUES
(seq_ciudad.NEXTVAL, 'Bogotá', 'Cali', 'Cartagena'),
(seq_ciudad.NEXTVAL, 'Barranquilla', 'Santa Marta', NULL),
(seq_ciudad.NEXTVAL, 'Bogotá', 'Pereira', NULL),
(seq_ciudad.NEXTVAL, 'Medellín', 'Bucaramanga',NULL),
(seq_ciudad.NEXTVAL, 'Pereira', 'Armenia',NULL),
(seq_ciudad.NEXTVAL, 'Medellín', 'Cali',NULL),
(seq_ciudad.NEXTVAL, 'Cartagena', 'Santa Marta',NULL),
(seq_ciudad.NEXTVAL, 'Cali', 'Bogotá',NULL),
(seq_ciudad.NEXTVAL, 'Cali', 'Bucaramanga',NULL),
(seq_ciudad.NEXTVAL, 'Pereira', 'Bogotá', 'Armenia'),
(seq_ciudad.NEXTVAL, 'Bogotá', 'Cartagena', 'Pereira'),
(seq_ciudad.NEXTVAL, 'Cartagena', 'Barranquilla', 'Santa Marta'),
(seq_ciudad.NEXTVAL, 'Cali', 'Pereira', NULL),
(seq_ciudad.NEXTVAL, 'Cali', 'Medellin',NULL),
(seq_ciudad.NEXTVAL, 'Pereira', 'Armenia',NULL);

-- INSERT INTO hotel
INSERT INTO hotel (id_hotel, id_reserva_hotel, nombre_hotel, ciudad, categoria) VALUES
(seq_hotel.NEXTVAL, 101, 'Sheraton Bogotá', 'Cali', '5 estrellas'),
(seq_hotel.NEXTVAL, 102, 'Marriott Medellín', 'Santa Marta', '3 estrellas'),
(seq_hotel.NEXTVAL, 103, 'Cali Grand Hotel', 'Pereira', '4 estrellas'),
(seq_hotel.NEXTVAL, 104, 'Barranquilla Beach Resort', 'Bucaramanga', '4 estrellas'),
(seq_hotel.NEXTVAL, 105, 'Cartagena Sands', 'Armenia', '5 estrellas'),
(seq_hotel.NEXTVAL, 101, 'Sheraton Bogotá', 'Cali', '5 estrellas'),
(seq_hotel.NEXTVAL, 102, 'Marriott Medellín', 'Santa Marta', '4 estrellas'),
(seq_hotel.NEXTVAL, 103, 'Cali Grand Hotel', 'Bogotá', ' 3 estrellas'),
(seq_hotel.NEXTVAL, 104, 'Barranquilla Beach Resort', 'Bucaramanga', '4 estrellas'),
(seq_hotel.NEXTVAL, 105, 'Cartagena Sands', 'Bogotá', '5 estrellas'),
(seq_hotel.NEXTVAL, 101, 'Sheraton Bogotá', 'Cartagena', '5 estrellas'),
(seq_hotel.NEXTVAL, 102, 'Marriott Medellín', 'Barranquilla', '3 estrellas'),
(seq_hotel.NEXTVAL, 103, 'Cali Grand Hotel', 'Pereira', '5 estrellas'),
(seq_hotel.NEXTVAL, 104, 'Barranquilla Beach Resort', 'Medellin', '4 estrellas'),
(seq_hotel.NEXTVAL, 105, 'Cartagena Sands', 'Armenia', '3 estrellas');

-- INSERT INTO solicitud_reserva
INSERT INTO solicitud_reserva (id_solicitud, fecha_solicitud, id_cliente, id_ciudad, id_reserva, id_estado) VALUES
(seq_solicitud_reserva.NEXTVAL, '2024-03-01 08:00:00', 1001, 1, 201, 1),
(seq_solicitud_reserva.NEXTVAL, '2024-03-20 10:00:00', 1002, 2, 202, 2),
(seq_solicitud_reserva.NEXTVAL, '2024-02-03 12:00:00', 1003, 3, 203, 3),
(seq_solicitud_reserva.NEXTVAL, '2024-03-19 14:00:00', 1004, 4, 204, 4),
(seq_solicitud_reserva.NEXTVAL, '2024-03-11 16:00:00', 1005, 5, 205, 5),
(seq_solicitud_reserva.NEXTVAL, '2024-01-30 08:00:00', 1006, 6, 206, 6),
(seq_solicitud_reserva.NEXTVAL, '2024-03-02 10:00:00', 1007, 7, 207, 7),
(seq_solicitud_reserva.NEXTVAL, '2024-03-03 12:00:00', 1008, 8, 208, 8),
(seq_solicitud_reserva.NEXTVAL, '2024-03-29 14:00:00', 1009, 9, 209, 9),
(seq_solicitud_reserva.NEXTVAL, '2024-02-05 16:00:00', 1010, 10, 210, 10),
(seq_solicitud_reserva.NEXTVAL, '2024-01-30 08:00:00', 1011, 11, 211, 11),
(seq_solicitud_reserva.NEXTVAL, '2024-02-02 10:00:00', 1012, 12, 212, 12),
(seq_solicitud_reserva.NEXTVAL, '2024-04-03 21:00:00', 1013, 13, 213, 13),
(seq_solicitud_reserva.NEXTVAL, '2024-02-14 14:00:00', 1014, 14, 214, 14),
(seq_solicitud_reserva.NEXTVAL, '2024-03-25 18:00:00', 1015, 15, 215, 15);

-- INSERT INTO estado
INSERT INTO estado (id_estado, fecha_aprobacion, id_pago, id_reserva, comprobacion) VALUES
(seq_estado.NEXTVAL, '2024-04-01 10:00:00', 301, 201, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-02 11:00:00', 302, 202, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-03 13:00:00', 303, 203, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-04 15:00:00', 304, 204, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-05 17:00:00', 305, 205, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-01 10:00:00', 306, 206, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-02 11:00:00', 307, 207, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-03 13:00:00', 308, 208, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-04 15:00:00', 309, 209, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-05 17:00:00', 310, 210, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-01 10:00:00', 311, 211, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-02 11:00:00', 312, 212, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-03 13:00:00', 313, 213, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-04 15:00:00', 314, 214, 'Aprobado'),
(seq_estado.NEXTVAL, '2024-04-05 17:00:00', 315, 215, 'Aprobado');

-- INSERT INTO aerolinea
INSERT INTO aerolinea (id_aerolinea, nombre_aerolinea) VALUES
(seq_aerolinea.NEXTVAL, 'Avianca'),
(seq_aerolinea.NEXTVAL, 'LATAM Airlines'),
(seq_aerolinea.NEXTVAL, 'Viva Air'),
(seq_aerolinea.NEXTVAL, 'Copa Airlines'),
(seq_aerolinea.NEXTVAL, 'Wingo');   


-- INSERT INTO pago
INSERT INTO pago (id_pago, id_reserva, total, saldo, metodo_pago, fecha_pago, aprobacion) VALUES
(seq_pago.NEXTVAL, 201, 1500, 0, 'Tarjeta de crédito', '2024-04-01 10:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 202, 1200, 0, 'PayPal', '2024-04-02 11:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 203, 1800, 1800, 'Transferencia bancaria', '2024-04-03 13:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 204, 2000, 0, 'Efectivo', '2024-04-04 15:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 205, 1600, 1600, 'Tarjeta de débito', '2024-04-05 17:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 206, 1500, 0, 'Tarjeta de crédito', '2024-04-01 10:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 207, 1200, 0, 'PayPal', '2024-04-02 11:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 208, 1800, 0, 'Transferencia bancaria', '2024-04-03 13:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 209, 2000, 2000, 'Efectivo', '2024-04-04 15:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 210, 1600, 0, 'Tarjeta de débito', '2024-04-05 17:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 211, 1500, 0, 'Tarjeta de crédito', '2024-04-01 10:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 212, 1200, 1200, 'PayPal', '2024-04-02 11:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 213, 1800, 0, 'Transferencia bancaria', '2024-04-03 13:30:00','Aprobado'),
(seq_pago.NEXTVAL, 214, 2000, 0, 'Efectivo', '2024-04-04 15:30:00', 'Aprobado'),
(seq_pago.NEXTVAL, 215, 1600, 1600, 'Tarjeta de débito', '2024-04-05 17:30:00', 'Aprobado');

-- INSERT INTO vuelo
INSERT INTO vuelo (id_vuelo, id_aerolinea, id_reserva_avion, numero_vuelo) VALUES
(seq_vuelo.NEXTVAL, 1, 401, 1234),
(seq_vuelo.NEXTVAL, 2, 402, 5678),
(seq_vuelo.NEXTVAL, 3, 403, 9012),
(seq_vuelo.NEXTVAL, 4, 404, 3456),
(seq_vuelo.NEXTVAL, 5, 405, 7890),
(seq_vuelo.NEXTVAL, 1, 406, 1235),
(seq_vuelo.NEXTVAL, 2, 407, 4678),
(seq_vuelo.NEXTVAL, 3, 408, 9013),
(seq_vuelo.NEXTVAL, 4, 409, 4456),
(seq_vuelo.NEXTVAL, 5, 410, 8890);

-- INSERT INTO reserva_avion
INSERT INTO reserva_avion (id_reserva_avion, fecha_ida, fecha_regreso, origen, destino, clase) VALUES
(seq_reserva_avion.NEXTVAL, '2024-04-10 08:00:00', '2024-04-15 12:00:00', 'Bogotá', 'Cali', 'Primera clase'),
(seq_reserva_avion.NEXTVAL, '2024-04-12 10:00:00', '2024-04-17 14:00:00', 'Barranquilla', 'Santa Marta', 'Clase económica'),
(seq_reserva_avion.NEXTVAL, '2024-04-14 12:00:00', '2024-04-19 16:00:00', 'Bogotá', 'Pereira', 'Clase ejecutiva'),
(seq_reserva_avion.NEXTVAL, '2024-04-16 14:00:00', '2024-04-21 18:00:00', 'Medellín', 'Bucaramanga', 'Clase turista'),
(seq_reserva_avion.NEXTVAL, '2024-04-18 16:00:00', '2024-04-23 20:00:00', 'Pereira', 'Armenia', 'Clase ejecutiva'),
(seq_reserva_avion.NEXTVAL, '2024-04-10 08:00:00', '2024-04-15 12:00:00', 'Medellin', 'Cali', 'Primera clase'),
(seq_reserva_avion.NEXTVAL, '2024-04-12 10:00:00', '2024-04-17 14:00:00', 'Cartagena', 'Santa Marta', 'Clase económica'),
(seq_reserva_avion.NEXTVAL, '2024-04-14 12:00:00', '2024-04-19 16:00:00', 'Cali', 'Bogotá', 'Clase ejecutiva'),
(seq_reserva_avion.NEXTVAL, '2024-04-16 14:00:00', '2024-04-21 18:00:00', 'Cali', 'Buacaramanga', 'Clase turista'),
(seq_reserva_avion.NEXTVAL, '2024-04-18 16:00:00', '2024-04-23 20:00:00', 'Pereira', 'Bogotá', 'Clase ejecutiva'),
(seq_reserva_avion.NEXTVAL, '2024-04-10 08:00:00', '2024-04-15 12:00:00', 'Bogotá', 'Cartagena', 'Primera clase'),
(seq_reserva_avion.NEXTVAL, '2024-04-12 10:00:00', '2024-04-17 14:00:00', 'Cartagena', 'Barranquilla', 'Clase económica'),
(seq_reserva_avion.NEXTVAL, '2024-04-14 12:00:00', '2024-04-19 16:00:00', 'Cali', 'Pereira', 'Clase ejecutiva'),
(seq_reserva_avion.NEXTVAL, '2024-04-16 14:00:00', '2024-04-21 18:00:00', 'Cali', 'Medellin', 'Clase turista'),
(seq_reserva_avion.NEXTVAL, '2024-04-18 16:00:00', '2024-04-23 20:00:00', 'Pereira', 'Armenia', 'Clase ejecutiva');



-- INSERT INTO reserva_hotel
INSERT INTO reserva_hotel (id_reserva_hotel, fecha_entreda, fecha_salida, tipo_acomodacion) VALUES
(seq_reserva_hotel.NEXTVAL, '2024-04-10', '2024-04-15', 'Suite'),
(seq_reserva_hotel.NEXTVAL, '2024-04-12', '2024-04-17', 'Doble'),
(seq_reserva_hotel.NEXTVAL, '2024-04-14', '2024-04-19', 'Individual'),
(seq_reserva_hotel.NEXTVAL, '2024-04-16', '2024-04-21', 'Suite'),
(seq_reserva_hotel.NEXTVAL, '2024-04-18', '2024-04-23', 'Doble'),
(seq_reserva_hotel.NEXTVAL, '2024-04-10', '2024-04-15', 'Suite'),
(seq_reserva_hotel.NEXTVAL, '2024-04-12', '2024-04-17', 'Doble'),
(seq_reserva_hotel.NEXTVAL, '2024-04-14', '2024-04-19', 'Individual'),
(seq_reserva_hotel.NEXTVAL, '2024-04-16', '2024-04-21', 'Suite'),
(seq_reserva_hotel.NEXTVAL, '2024-04-18', '2024-04-23', 'Doble'),
(seq_reserva_hotel.NEXTVAL, '2024-04-10', '2024-04-15', 'Suite'),
(seq_reserva_hotel.NEXTVAL, '2024-04-12', '2024-04-17', 'Doble'),
(seq_reserva_hotel.NEXTVAL, '2024-04-14', '2024-04-19', 'Individual'),
(seq_reserva_hotel.NEXTVAL, '2024-04-16', '2024-04-21', 'Suite'),
(seq_reserva_hotel.NEXTVAL, '2024-04-18', '2024-04-23', 'Doble');


-- INSERT INTO reserva
INSERT INTO reserva (id_reserva, id_reserva_avion, id_reserva_hotel, id_pago, id_cliente, Numero_Viajeros, id_estado) VALUES
(seq_reserva.NEXTVAL, 401, 101, 301, 1001, 2,'Aprobado' ),
(seq_reserva.NEXTVAL, 402, 102, 302, 1002, 4, 'Aprobado' ),
(seq_reserva.NEXTVAL, 403, 103, 303, 1003, 6, 'Aprobado' ),
(seq_reserva.NEXTVAL, 404, 104, 304, 1004, 8, 'Aprobado' ),
(seq_reserva.NEXTVAL, 405, 105, 305, 1005, 2, 'Aprobado' ),
(seq_reserva.NEXTVAL, 406, 106, 306, 1006, 4, 'Aprobado' ),
(seq_reserva.NEXTVAL, 407, 107, 307, 1007, 6, 'Aprobado' ),
(seq_reserva.NEXTVAL, 408, 108, 308, 1008, 8, 'Aprobado' ),
(seq_reserva.NEXTVAL, 409, 109, 309, 1009, 2, 'Aprobado' ),
(seq_reserva.NEXTVAL, 410, 110, 310, 1010, 4, 'Aprobado' ),
(seq_reserva.NEXTVAL, 411, 111, 311, 1011, 6, 'Aprobado' ),
(seq_reserva.NEXTVAL, 412, 112, 312, 1012, 8, 'Aprobado' ),
(seq_reserva.NEXTVAL, 413, 113, 313, 1013, 2, 'Aprobado' ),
(seq_reserva.NEXTVAL, 414, 114, 314, 1014, 4, 'Aprobado' ),
(seq_reserva.NEXTVAL, 415, 115, 315, 1015, 6, 'Aprobado' );

-- INSERT INTO cliente
INSERT INTO cliente (id_cliente, nombre_cliente, telefono_casa, telefono_trabajo, fax, email, direccion) VALUES
(seq_cliente.NEXTVAL, 'Juliana López', '5678901234', '6789012345', '4567890123', 'juliana@example.com', 'Carrera 789, Pereira'),
(seq_cliente.NEXTVAL, 'Pedro Ramirez', '6789012345', '7890123456', '5678901234', 'pedro@example.com', 'Avenida 123, Bogotá'),
(seq_cliente.NEXTVAL, 'Carolina Herrera', '7890123456', '8901234567', '6789012345', 'carolina@example.com', 'Calle 456, Medellín'),
(seq_cliente.NEXTVAL, 'Diego Gutiérrez', '8901234567', '9012345678', '7890123456', 'diego@example.com', 'Carrera 789, Barranquilla'),
(seq_cliente.NEXTVAL, 'Valentina García', '9012345678', '0123456789', '8901234567', 'valentina@example.com', 'Avenida 123, Cali'),
(seq_cliente.NEXTVAL, 'Mateo Martínez', '0123456789', '1234567890', '9012345678', 'mateo@example.com', 'Calle 456, Bogotá'),
(seq_cliente.NEXTVAL, 'Lucía Rodríguez', '1234567890', '2345678901', '0123456789', 'lucia@example.com', 'Carrera 789, Medellín'),
(seq_cliente.NEXTVAL, 'Santiago González', '2345678901', '3456789012', '1234567890', 'santiago@example.com', 'Avenida 123, Cartagena'),
(seq_cliente.NEXTVAL, 'Isabella López', '3456789012', '4567890123', '2345678901', 'isabella@example.com', 'Calle 456, Santa Marta');

-- INSERT INTO viajero
INSERT INTO viajero (id_viajero, id_cliente, edad) VALUES
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 40),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 35),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 25),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 30),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 22),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 45),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 50),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 18),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 28),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 40),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 35),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 25),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 30),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 22),
(seq_viajero.NEXTVAL, seq_cliente.CURRVAL, 45);

-- INSERT INTO fecha_reserva
INSERT INTO fecha_reserva (id_fecha_reserva, fecha_inicio_reserva, fecha_fin_reserva) VALUES
(seq_fecha_reserva.NEXTVAL, '2024-04-10 08:00:00', '2024-04-15 12:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-12 10:00:00', '2024-04-17 14:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-14 12:00:00', '2024-04-19 16:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-16 14:00:00', '2024-04-21 18:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-18 16:00:00', '2024-04-23 20:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-10 08:00:00', '2024-04-15 12:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-12 10:00:00', '2024-04-17 14:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-14 12:00:00', '2024-04-19 16:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-16 14:00:00', '2024-04-21 18:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-18 16:00:00', '2024-04-23 20:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-10 08:00:00', '2024-04-15 12:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-12 10:00:00', '2024-04-17 14:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-14 12:00:00', '2024-04-19 16:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-16 14:00:00', '2024-04-21 18:00:00'),
(seq_fecha_reserva.NEXTVAL, '2024-04-18 16:00:00', '2024-04-23 20:00:00');

