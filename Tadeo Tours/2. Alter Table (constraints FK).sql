
//Solicitud de reserva 

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_fecha_solicitud
FOREIGN KEY (id_fecha)
REFERENCES fecha(id_fecha);

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_cliente_solicitud
FOREIGN KEY (id_cliente)
REFERENCES cliente (id_cliente);

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_ciudad_solicitud
FOREIGN KEY (id_ciudad)
REFERENCES ciudad (id_ciudad);

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_estado_solitud
FOREIGN KEY (id_estado)
REFERENCES estado (id_estado);


//Pago

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_estado_pago
FOREIGN KEY (id_estado)
REFERENCES estado (id_estado);

//vuelo

ALTER TABLE vuelo
ADD CONSTRAINT fk_aerolinea_vuelo
FOREIGN KEY (id_aerolinea)
REFERENCES aerolinea(id_aerolinea);


ALTER TABLE vuelo
ADD CONSTRAINT fk_fecha_vuelo
FOREIGN KEY (id_fecha)
REFERENCES fecha(id_fecha);


ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_ciudad_origen_v
FOREIGN KEY (id_ciudad)
REFERENCES ciudad (id_ciudad);

ALTER TABLE SOLICITUD_RESERVA
ADD CONSTRAINT fk_ciudad_destino_v
FOREIGN KEY (id_ciudad)
REFERENCES ciudad (id_ciudad);


//reserva avion

ALTER TABLE RESERVA_AVION
ADD CONSTRAINT fk_id_vuelo_av
FOREIGN KEY (id_vuelo)
REFERENCES vuelo(id_vuelo);


ALTER TABLE RESERVA_AVION
ADD CONSTRAINT fk_id_viajero_av
FOREIGN KEY (id_viajero)
REFERENCES viajero(id_viajero);

//Hotel

ALTER TABLE hotel
ADD CONSTRAINT fk_ciudad_hotel
FOREIGN KEY (id_ciudad)
REFERENCES ciudad (id_ciudad);

//reserva hotel
ALTER TABLE RESERVA_HOTEL
ADD CONSTRAINT fk_id_hotel
FOREIGN KEY (id_hotel)
REFERENCES hotel(id_hotel);

ALTER TABLE RESERVA_HOTEL
ADD CONSTRAINT fk_fecha_hotel
FOREIGN KEY (id_fecha)
REFERENCES fecha(id_fecha);

//viajero

ALTER TABLE VIAJERO
ADD CONSTRAINT fk_cliente_viajero
FOREIGN KEY (id_cliente)
REFERENCES cliente(id_cliente);

//reserva

ALTER TABLE RESERVA
ADD CONSTRAINT fk_reserva_avion
FOREIGN KEY (id_reserva_avion)
REFERENCES id_reserva_avion(id_reserva_avion);

ALTER TABLE RESERVA
ADD CONSTRAINT fk_reserva_hotel
FOREIGN KEY (id_reserva_hotel)
REFERENCES RESERVA_HOTEL(id_reserva_hotel);

ALTER TABLE RESERVA
ADD CONSTRAINT fk_reserva_pago
FOREIGN KEY (id_pago)
REFERENCES pago (id_pago);

ALTER TABLE RESERVA
ADD CONSTRAINT fk_cliente_reserva
FOREIGN KEY (id_cliente)
REFERENCES cliente(id_cliente)

ALTER TABLE RESERVA
ADD CONSTRAINT fk_pago_reserva
FOREIGN KEY (id_estado)
REFERENCES estado (id_estado);

ALTER TABLE RESERVA
ADD CONSTRAINT fk_fecha_reserva
FOREIGN KEY (id_fecha)
REFERENCES fecha(id_fecha);

ALTER TABLE RESERVA
ADD CONSTRAINT fk_solicitud_reserrva
FOREIGN KEY (id_solicitud)
REFERENCES SOLICITUD_RESERVA(id_solicitud);

//

