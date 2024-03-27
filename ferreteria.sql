create table cargo(
    id_cargo number , 
    nombre_cargo nvarchar2(30) not null,
    salario number not null,
    constraint pk_id_cargo primary key (id_cargo)
);
create table empleado(
	id_empleado number,
    nombre_empleado nvarchar2(15) not null,
    apellido_empleado nvarchar2(15) not null,
    id_cargo number ,
    correo_empleado nvarchar2(15) not null,
    telefono_empleado number,
    constraint fk_id_cargo foreign key (id_cargo) references cargo (id_cargo),
    constraint pk_id_empleado primary key (id_empleado)
)
create table venta(
    id_venta number,
    fecha_venta date not null,
    id_cliente number,
    id_pago number, 
    total_venta number,   
		constraint fk_id_cliente foreign key (id_cliente) references cliente (id_cliente),
		constraint fk_id_pago foreign key (id_pago) references pago (id_pago),
    constraint pk_id_venta primary key (id_venta) 
)
create table cliente(
    id_cliente number,
    nombre_cliente nvarchar2(15) not null,
    apellido_cliente nvarchar2(15) not null,
    telefono_cliente number not null,
    direccion_cliente nvarchar(100) not null,
    correo_cliente nvarchar(50),
    constraint pk_id_cliente primary key (id_cliente)
)
create table pedido(
    id_pedido number,
    fecha_entrega date not null,  
    id_venta number, 
    estado_pedido boolean,
		constraint fk_id_venta foreign key (id_venta) references venta (id_venta),
    constraint pk_id_pedido primary key (id_pedido)
)
create table detalle_pedido(
    id_detalle_pedido number, 
    cantidad_de_producto number,
    id_pedido number, 
    id_detalle_producto number,
		constraint fk_id_pedido foreign key (id_pedido) references pedido (id_pedido),
    constraint fk_id_producto foreign key (id_producto) references producto (id_producto),
		constraint pk_id_pedido primary key (id_pedido)
)
)
create table producto(
    id_producto number,
    nombre_producto nvarchar(40),
 
 
 
 ]