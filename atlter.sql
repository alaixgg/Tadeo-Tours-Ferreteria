ALTER TABLE hotel
ADD CONSTRAINT fk_id_reserva_hotel 
FOREIGN KEY (id_reserva_hotel) 
REFERENCES RESERVA_HOTEL (id_reserva_hotel);

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_id_cliente 
FOREIGN KEY (id_cliente) 
REFERENCES cliente (id_cliente);

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_id_ciudad 
FOREIGN KEY (id_ciudad) 
REFERENCES ciudad (id_ciudad);

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_id_reserva 
FOREIGN KEY (id_reserva) 
REFERENCES reserva (id_reserva);

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_id_estado 
FOREIGN KEY (id_estado) 
REFERENCES estado (id_estado);

ALTER TABLE estado
ADD CONSTRAINT fk_id_pago 
FOREIGN KEY (id_pago) 
REFERENCES pago (id_pago);

ALTER TABLE estado
ADD CONSTRAINT fk_id_reserva_estado 
FOREIGN KEY (id_reserva) 
REFERENCES reserva (id_reserva);

ALTER TABLE pago
ADD CONSTRAINT fk_id_reserva_pago 
FOREIGN KEY (id_reserva) 
REFERENCES reserva (id_reserva);

ALTER TABLE VUELO
ADD CONSTRAINT fk_id_aerolinea 
FOREIGN KEY (id_aerolinea) 
REFERENCES aerolinea (id_aerolinea);

ALTER TABLE reserva
ADD CONSTRAINT fk_id_reserva_avion 
FOREIGN KEY (id_reserva_avion) 
REFERENCES RESERVA_AVION (id_reserva_avion);

ALTER TABLE reserva
ADD CONSTRAINT fk_id_reserva_hotel 
FOREIGN KEY (id_reserva_hotel) 
REFERENCES RESERVA_HOTEL (id_reserva_hotel);

ALTER TABLE reserva
ADD CONSTRAINT fk_id_pago_reserva 
FOREIGN KEY (id_pago) 
REFERENCES pago (id_pago);

ALTER TABLE reserva
ADD CONSTRAINT fk_id_cliente_reserva 
FOREIGN KEY (id_cliente) 
REFERENCES cliente (id_cliente);

ALTER TABLE reserva
ADD CONSTRAINT fk_id_estado_reserva 
FOREIGN KEY (id_estado) 
REFERENCES estado (id_estado);
