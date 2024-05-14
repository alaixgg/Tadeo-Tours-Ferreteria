--a
SELECT 
    sr.id_solicitud,
    sr.fecha_solicitud,
    c.id_cliente,
    c.nombre_cliente,
    c.apellido_cliente,
    cid_destino.nombre_ciudad AS nombre_ciudad_destino,
    cid_origen.nombre_ciudad AS nombre_ciudad_origen,
    r.numero_viajeros,
    e.comprobacion,
    e.fecha_aprobacion
FROM SOLICITUD_RESERVA sr
INNER JOIN CLIENTE c ON sr.id_cliente = c.id_cliente
INNER JOIN CIUDAD cid_destino ON sr.id_ciudad = cid_destino.id_ciudad
INNER JOIN CIUDAD cid_origen ON sr.id_ciudad_origen = cid_origen.id_ciudad
INNER JOIN RESERVA r ON sr.id_solicitud = r.id_solicitud
INNER JOIN ESTADO e ON sr.id_estado = e.id_estado;

--b
SELECT 
    r.id_reserva, 
    f.fecha_inicio, 
    f.fecha_fin,
    sr.id_cliente, 
    cl.nombre_cliente, 
    cid_destino.nombre_ciudad AS nombre_ciudad_destino,
    cid_origen.nombre_ciudad AS nombre_ciudad_origen,
    a.nombre_aerolinea,
    h.nombre_hotel,
    p.total
FROM RESERVA r
INNER JOIN fecha f ON r.id_fecha = f.id_fecha
INNER JOIN SOLICITUD_RESERVA sr ON r.id_solicitud = sr.id_solicitud
INNER JOIN cliente cl ON sr.id_cliente = cl.id_cliente
INNER JOIN CIUDAD cid_destino ON sr.id_ciudad = cid_destino.id_ciudad
INNER JOIN CIUDAD cid_origen ON sr.id_ciudad_origen = cid_origen.id_ciudad
LEFT JOIN RESERVA_HOTEL rh ON r.id_reserva_hotel = rh.id_reserva_hotel
LEFT JOIN HOTEL h ON rh.id_hotel = h.id_hotel
LEFT JOIN RESERVA_AVION ra ON r.id_reserva_avion = ra.id_reserva_avion
LEFT JOIN VUELO v ON ra.id_vuelo = v.id_vuelo
LEFT JOIN AEROLINEA a ON v.id_aerolinea = a.id_aerolinea
LEFT JOIN pago p ON r.id_pago = p.id_pago;

--c
SELECT 
    cid_destino.nombre_ciudad AS nombre_ciudad_destino,
    COUNT(r.id_reserva) AS cantidad_reservas
FROM RESERVA r
INNER JOIN SOLICITUD_RESERVA sr ON r.id_solicitud = sr.id_solicitud
INNER JOIN CIUDAD cid_destino ON sr.id_ciudad = cid_destino.id_ciudad
INNER JOIN ESTADO e ON sr.id_estado = e.id_estado
WHERE e.comprobacion = 'Aprobado'
GROUP BY cid_destino.nombre_ciudad
ORDER BY cantidad_reservas DESC
FETCH FIRST 5 ROWS ONLY;

--d

SELECT 
    cid_destino.nombre_ciudad AS nombre_ciudad_destino,
    SUM(r.numero_viajeros) AS numero_viajeros
FROM RESERVA r
INNER JOIN SOLICITUD_RESERVA sr ON r.id_solicitud = sr.id_solicitud
INNER JOIN CIUDAD cid_destino ON sr.id_ciudad = cid_destino.id_ciudad
INNER JOIN ESTADO e ON sr.id_estado = e.id_estado
WHERE e.comprobacion = 'Aprobado'
GROUP BY cid_destino.nombre_ciudad
ORDER BY numero_viajeros DESC
FETCH FIRST 5 ROWS ONLY;


--e
SELECT 
    cid_destino.nombre_ciudad AS nombre_ciudad_destino,
    SUM(p.total) AS ingresos_reservas
FROM RESERVA r
INNER JOIN SOLICITUD_RESERVA sr ON r.id_solicitud = sr.id_solicitud
INNER JOIN CIUDAD cid_destino ON sr.id_ciudad = cid_destino.id_ciudad
INNER JOIN PAGO p ON r.id_pago = p.id_pago
INNER JOIN ESTADO e ON sr.id_estado = e.id_estado
WHERE e.comprobacion = 'Aprobado'
GROUP BY cid_destino.nombre_ciudad
ORDER BY ingresos_reservas DESC
FETCH FIRST 5 ROWS ONLY;


--f
SELECT 
    a.nombre_aerolinea,
    COUNT(r.id_reserva) AS cantidad_reservas
FROM RESERVA r
INNER JOIN RESERVA_AVION ra ON r.id_reserva_avion = ra.id_reserva_avion
INNER JOIN VUELO v ON ra.id_vuelo = v.id_vuelo
INNER JOIN AEROLINEA a ON v.id_aerolinea = a.id_aerolinea
INNER JOIN SOLICITUD_RESERVA sr ON r.id_solicitud = sr.id_solicitud
INNER JOIN ESTADO e ON sr.id_estado = e.id_estado
WHERE e.comprobacion = 'Aprobado'
GROUP BY a.nombre_aerolinea
ORDER BY cantidad_reservas DESC
FETCH FIRST 5 ROWS ONLY;

--g 
SELECT 
    h.nombre_hotel,
    COUNT(r.id_reserva) AS cantidad_reservas
FROM RESERVA r
INNER JOIN SOLICITUD_RESERVA sr ON r.id_solicitud = sr.id_solicitud
INNER JOIN RESERVA_HOTEL rh ON r.id_reserva_hotel = rh.id_reserva_hotel
INNER JOIN HOTEL h ON rh.id_hotel = h.id_hotel
INNER JOIN ESTADO e ON sr.id_estado = e.id_estado
WHERE e.comprobacion = 'Aprobado'
GROUP BY h.nombre_hotel
ORDER BY cantidad_reservas DESC
FETCH FIRST 5 ROWS ONLY;


