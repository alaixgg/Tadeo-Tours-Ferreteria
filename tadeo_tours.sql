CREATE TABLE ciudad(
	id_lugar_origen number,
	ciudad_origen nvarchar2(100) not null, 
	ciudad_destino nvarchar2(100) not null, 
	ciudad_adicional nvarchar(50)
);
	 

CREATE TABLE hotel(
	id_hotel number,
	id_reserva_hotel number,
	nombre_hotel nvarchar2(30) not null,
	ciudad nvarchar2(50) not null,
	categoria nvarchar2(10) not null
	
CREATE TABLE SOLICITUD_RESERVA
	id_solicitud number, 
	fecha_solicitud dateTime not null,
	id_cliente number, 
	id_ciudad number,
	id_reserva number, 
	id_estado number,
	
CREATE TABLE estado(
	id_estado number, 
	comprobacion nvarchar2(10),
    fecha_aprobacion dateTime
	
CREATE TABLE aerolinea(
	id_aerolinea number,
	nombre_aerolinea nvarchar2(40) not null,

CREATE TABLE pago(
	id_pago number, 
	id_reserva number,
	total number,
	saldo number, 
	metodo_pago nvarchar2(30),
	fecha_pago datetime not null, 
	aprobacion bool not null,
	
CREATE TABLE VUELO(
	id_vuelo number,
	id_aerolinea number,
	id_reserva_avion number,
	numero_vuelo number,
	
CREATE TABLE RESERVA_AVION(
	id_reserva_avion number,
	fecha_ida datetime not null, 
	fecha_regreso datetime not null, 
	origen nvarchar2(20) not null, 
	destino nvarchar2(20) not null,
	clase nvarchar2(10) not null, 
	
CREATE TABLE RESERVA_HOTEL(
	id_reserva_hotel number,
	fecha_entreda datetime not null, 
	fecha_salida datetime not null, 
	tipo_acomodacion nvarchar2(10) not null,
	
CREATE TABLE reserva(
	id_reserva number,
	id_reserva_avion number, 
	id_reserva_hotel number,
	id_pago number,
	id_cliente number,
	id_cliente number, 
	Numero_Viajeros number, 
	id_reserva_hotel number, 
	
CREATE TABLE cliente(
	id_cliente number,
	nombre_cliente nvarchar2(100) not null, 
	telefono_casa nvarchar2(10) not null,
	telefono_trabajo nvarchar2(10) not null,
	fax nvarchar2(10) not null,
	email nvarchar2(50) not null,
	direccion nvarchar(100) not null,
	
CREATE TABLE VIAJERO(
	id_viajero number,
	id_cliente number, 
	edad number,
	
CREATE TABLE fecha_reserva(
	id_fecha_reserva number,
	fecha_inicio_reserva datetime not null,
	fecha_fin_reserva datetime not null,
	
