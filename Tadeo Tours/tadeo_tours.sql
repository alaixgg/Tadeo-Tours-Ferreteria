CREATE TABLE ciudad(
	id_ciudad number,
	ciudad_origen nvarchar2(100) not null, 
	ciudad_destino nvarchar2(100) not null, 
	ciudad_adicional nvarchar(50),
	constraint pk_id_ciudad primary key (id_ciudad)
);

	 

CREATE TABLE hotel(
	id_hotel number,
	id_reserva_hotel number,
	nombre_hotel nvarchar2(30) not null,
	ciudad nvarchar2(50) not null,
	categoria nvarchar2(10) not null,
	constraint pk_id_hotel primary key (id_hotel)
	

	
CREATE TABLE SOLICITUD_RESERVA(
	id_solicitud number, 
	fecha_solicitud dateTime not null,
	id_cliente number, 
	id_ciudad number,
	id_reserva number, 
	id_estado number,
	constraint pk_id_solicitud primary key (id_solicitud)
	constraint fk_id_cliente foreign key (id_cliente) references cliente (id_cliente)
	constraint fk_id_ciudad foreign key (id_ciudad) references ciudad (id_ciudad)
	constraint fk_id_reserva foreign key (id_reserva) references reserva (id_reserva)
	constraint fk_id_estado foreign key (id_estado) references estado (id_estado)
);

CREATE TABLE estado(
	id_estado number, 
	fecha_aprobacion dateTime,
	id_pago number,
	id_reserva number,
	comprobacion nvarchar2(10),

	constraint pk_id_estado primary key (id_estado)
	constraint fk_id_pago foreign key (id_pago) references pago (id_pago)
	constraint fk_id_reserva foreign key (id_reserva) references reserva (id_reserva)
);
	
	
CREATE TABLE aerolinea(
	id_aerolinea number,
	nombre_aerolinea nvarchar2(40) not null,
	constraint pk_id_aerolinea primary key (id_aerolinea)
);

CREATE TABLE pago(
	id_pago number, 
	id_reserva number,
	total number,
	saldo number, 
	metodo_pago nvarchar2(30),
	fecha_pago datetime not null, 
	aprobacion bool not null,
	constraint pk_id_pago primary key (id_pago)
	constraint fk_id_reserva foreign key (id_reserva) references reserva (id_reserva)
);
	
	
CREATE TABLE VUELO(
	id_vuelo number,
	id_aerolinea number,
	id_reserva_avion number,
	numero_vuelo number,
	constraint pk_id_vuelo primary key (id_vuelo)
	constraint fk_id_aerolinea foreign key (id_aerolinea) references aerolinea (id_aerolinea)
);
	
	
CREATE TABLE RESERVA_AVION(
	id_reserva_avion number,
	fecha_ida datetime not null, 
	fecha_regreso datetime not null, 
	origen nvarchar2(20) not null, 
	destino nvarchar2(20) not null,
	clase nvarchar2(10) not null, 
	constraint pk_id_reserva_avion primary key (id_reserva_avion)
);
	
CREATE TABLE RESERVA_HOTEL(
	id_reserva_hotel number,
	fecha_entreda datetime not null, 
	fecha_salida datetime not null, 
	tipo_acomodacion nvarchar2(10) not null,
	constraint pk_id_reserva_hotel primary key (id_reserva_hotel)
	constraint fk_id_hotel foreign key (id_hotel) references hotel (id_hotel));
);
	
CREATE TABLE reserva(
	id_reserva number,
	id_reserva_avion number, 
	id_reserva_hotel number,
	id_pago number,
	id_cliente number,
	Numero_Viajeros number, 
	id_estado number, 
	constraint pk_id_reserva primary key (id_reserva)
	constraint fk_id_vuelo foreign key (id_vuelo) references vuelo (id_vuelo)
	constraint fk_id_reserva_hotel foreign key (id_reserva_hotel) references RESERVA_HOTEL (id_reserva_hotel)
	constraint fk_id_pago foreign key (id_pago) references pago (id_pid_aerolinea)
	constraint fk_id_cliente foreign key (id_cliente) references cliente (id_cliente)
	constraint fk_id_estado foreign key (id_estado) references estado (id_estado)
);

	
CREATE TABLE cliente(
	id_cliente number,
	nombre_cliente nvarchar2(100) not null, 
	telefono_casa nvarchar2(10) not null,
	telefono_trabajo nvarchar2(10) not null,
	fax nvarchar2(10) not null,
	email nvarchar2(50) not null,
	direccion nvarchar(100) not null,
	constraint pk_id_cliente primary key (id_cliente)
);

CREATE TABLE VIAJERO(
	id_viajero number,
	id_cliente number, 
	edad number,
	constraint pk_id_viajero primary key (id_viajero)
);
	
CREATE TABLE fecha_reserva(
	id_fecha_reserva number,
	fecha_inicio_reserva datetime not null,
	fecha_fin_reserva datetime not null,
	constraint pk_id_fecha_reserva primary key (id_fecha_reserva)

);
	
