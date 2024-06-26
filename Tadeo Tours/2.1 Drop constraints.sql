
-- Solicitud de reserva
ALTER TABLE SOLICITUD_RESERVA DROP CONSTRAINT fk_fecha_solicitud;
ALTER TABLE SOLICITUD_RESERVA DROP CONSTRAINT fk_cliente_solicitud;
ALTER TABLE SOLICITUD_RESERVA DROP CONSTRAINT fk_ciudad_solicitud;
ALTER TABLE SOLICITUD_RESERVA DROP CONSTRAINT fk_estado_solitud;

-- Pago
ALTER TABLE pago DROP CONSTRAINT fk_estado_pago;

-- Vuelo
ALTER TABLE vuelo DROP CONSTRAINT fk_aerolinea_vuelo;
ALTER TABLE vuelo DROP CONSTRAINT fk_fecha_vuelo;
ALTER TABLE vuelo DROP CONSTRAINT fk_ciudad_origen_v;
ALTER TABLE vuelo DROP CONSTRAINT fk_ciudad_destino_v;

-- Reserva avion
ALTER TABLE RESERVA_AVION DROP CONSTRAINT fk_id_vuelo_av;
ALTER TABLE RESERVA_AVION DROP CONSTRAINT fk_id_viajero_av;

-- Hotel
ALTER TABLE hotel DROP CONSTRAINT fk_ciudad_hotel;

-- Reserva hotel
ALTER TABLE RESERVA_HOTEL DROP CONSTRAINT fk_id_hotel;
ALTER TABLE RESERVA_HOTEL DROP CONSTRAINT fk_fecha_hotel;

-- Viajero
ALTER TABLE VIAJERO DROP CONSTRAINT fk_cliente_viajero;

-- Reserva
ALTER TABLE RESERVA DROP CONSTRAINT fk_reserva_avion;
ALTER TABLE RESERVA DROP CONSTRAINT fk_reserva_hotel;
ALTER TABLE RESERVA DROP CONSTRAINT fk_reserva_pago;
ALTER TABLE RESERVA DROP CONSTRAINT fk_cliente_reserva;
ALTER TABLE RESERVA DROP CONSTRAINT fk_pago_reserva;
ALTER TABLE RESERVA DROP CONSTRAINT fk_fecha_reserva;
ALTER TABLE RESERVA DROP CONSTRAINT fk_solicitud_reserrva;
