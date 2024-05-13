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
