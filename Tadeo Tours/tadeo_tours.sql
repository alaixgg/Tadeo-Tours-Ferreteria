CREATE TABLE ciudad(
    id_ciudad number,
    ciudad_origen nvarchar2(100) not null, 
    ciudad_destino nvarchar2(100) not null, 
    ciudad_adicional nvarchar2(50),
    constraint pk_id_ciudad primary key (id_ciudad)
);

CREATE TABLE hotel(
    id_hotel number,
    id_reserva_hotel number,
    nombre_hotel nvarchar2(30) not null,
    ciudad nvarchar2(50) not null,
    categoria nvarchar2(10) not null,
    constraint pk_id_hotel primary key (id_hotel)
);

CREATE TABLE SOLICITUD_RESERVA(
    id_solicitud number, 
    fecha_solicitud timestamp not null,
    id_cliente number, 
    id_ciudad number,
    id_reserva number, 
    id_estado number,
    constraint pk_id_solicitud primary key (id_solicitud)
);

CREATE TABLE estado(
    id_estado number, 
    fecha_aprobacion timestamp, 
    id_pago number,
    id_reserva number,
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
    id_reserva number,
    total number,
    saldo number, 
    metodo_pago nvarchar2(30),
    fecha_pago timestamp not null,
    aprobacion char(1) not null,
    constraint pk_id_pago primary key (id_pago)
);

CREATE TABLE VUELO(
    id_vuelo number,
    id_aerolinea number,
    id_reserva_avion number,
    numero_vuelo number,
    constraint pk_id_vuelo primary key (id_vuelo)
);

CREATE TABLE RESERVA_AVION(
    id_reserva_avion number,
    fecha_ida timestamp not null, 
    fecha_regreso timestamp not null, 
    origen nvarchar2(20) not null, 
    destino nvarchar2(20) not null,
    clase nvarchar2(10) not null, 
    constraint pk_id_reserva_avion primary key (id_reserva_avion)
);

CREATE TABLE RESERVA_HOTEL(
    id_reserva_hotel number,
    fecha_entrada timestamp not null,
    fecha_salida timestamp not null, 
    tipo_acomodacion nvarchar2(10) not null,
    constraint pk_id_reserva_hotel primary key (id_reserva_hotel)
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
);

CREATE TABLE cliente(
    id_cliente number,
    nombre_cliente nvarchar2(100) not null, 
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
    edad number,
    constraint pk_id_viajero primary key (id_viajero)
);

CREATE TABLE fecha_reserva(
    id_fecha_reserva number,
    fecha_inicio_reserva timestamp not null, 
    fecha_fin_reserva timestamp not null,
    constraint pk_id_fecha_reserva primary key (id_fecha_reserva)
);
