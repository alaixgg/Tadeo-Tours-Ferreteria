SELECT 
    id_solicitud, reserva.id_reserva, solicitud_reserva.id_fecha, cliente.nombre_cliente, ciudad
FROM solicitud_reserva
INNER JOIN 
    reserva ON solicitud_reserva.id_solicitud = reserva.id_solicitud
INNER JOIN 
    cliente ON solicitud_reserva.id_solicitud = cliente.id_cliente
INNER JOIN 
    ciudad ON solicitud_reserva.id_solicitud = ciudad.ciudad_origen
INNER JOIN 
    ciudad ON solicitud_reserva.id_solicitud = ciudad.ciudad_destino;
a)
b)
c)
Cambiando el modelo para cumplir con las consultas
