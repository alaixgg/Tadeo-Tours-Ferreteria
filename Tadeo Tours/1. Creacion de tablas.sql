CREATE TABLE CIUDAD(
    id_ciudad number,
    nombre_ciudad nvarchar2(100) not null, 
    constraint pk_id_ciudad primary key (id_ciudad)
);

CREATE TABLE HOTEL(
    id_hotel number,
    nombre_hotel nvarchar2(30) not null,
    id_ciudad number,
    categoria nvarchar2(10) not null,
    constraint pk_id_hotel primary key (id_hotel)
);

CREATE TABLE SOLICITUD_RESERVA(
    id_solicitud number, 
    id_fecha number,
    id_cliente number, 
    id_ciudad number,
    id_estado number UNIQUE,
    constraint pk_id_solicitud primary key (id_solicitud)
);

CREATE TABLE ESTADO(
    id_estado number, 
    fecha_aprobacion timestamp, 
    comprobacion nvarchar2(10),
    constraint pk_id_estado primary key (id_estado)
);

CREATE TABLE aerolinea(
    id_aerolinea number,
    nombre_aerolinea nvarchar2(40) not null,
    constraint pk_id_aerolinea primary key (id_aerolinea)
);

CREATE TABLE pago(
    id_pago number, 
    total number,
    saldo number, 
    metodo_pago nvarchar2(30),
    fecha_pago timestamp not null,
    id_estado number,
    constraint pk_id_pago primary key (id_pago)
);

CREATE TABLE VUELO(
    id_vuelo number,
    id_aerolinea number UNIQUE,
    numero_vuelo number,
    id_fecha number,
    id_ciudad_origen number,
    id_ciudad_destino number,
    constraint pk_id_vuelo primary key (id_vuelo)
);

CREATE TABLE RESERVA_AVION(
    id_reserva_avion number,
    id_vuelo number,
    id_viajero number,
    clase nvarchar2(60) not null, 
    constraint pk_id_reserva_avion primary key (id_reserva_avion)
);

CREATE TABLE RESERVA_HOTEL(
    id_reserva_hotel number,
    id_fecha number,
    id_hotel number,
    tipo_acomodacion nvarchar2(10) not null,
    constraint pk_id_reserva_hotel primary key (id_reserva_hotel)
);

CREATE TABLE RESERVA(
    id_reserva number,
    id_reserva_avion number UNIQUE, 
    id_reserva_hotel number UNIQUE,
    id_pago number UNIQUE,
    id_cliente number,
    Numero_Viajeros number, 
    id_estado number UNIQUE, 
    id_solicitud number UNIQUE,
    constraint pk_id_reserva primary key (id_reserva)
);

CREATE TABLE cliente(
    id_cliente number,
    nombre_cliente nvarchar2(25) not null, 
    apellido_cliente nvarchar2(25) not null,
    telefono_casa nvarchar2(10) not null,
    telefono_trabajo nvarchar2(10) not null,
    fax nvarchar2(10) not null,
    email nvarchar2(50) not null,
    direccion nvarchar2(100) not null, 
    constraint pk_id_cliente primary key (id_cliente)
);

CREATE TABLE VIAJERO(
    id_viajero number,
    id_cliente number, 
    nombre_viajero nvarchar2(10) not null,
    edad number,
    constraint pk_id_viajero primary key (id_viajero)
);

CREATE TABLE FECHA(
    id_fecha number,
    fecha_inicio timestamp not null, 
    fecha_fin timestamp not null,
    constraint pk_id_fecha_reserva primary key (id_fecha)
);
