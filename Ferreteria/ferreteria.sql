
create table empleado(
	id_empleado number,
    nombre_empleado nvarchar2(15) not null,
    apellido_empleado nvarchar2(15) not null,
    id_cargo number ,
    correo_empleado nvarchar2(15) not null,
    telefono_empleado number,
    cargo nvarchar2(30) not null,
    salario number not null,
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
create table pago(
  id_pago number,
  valor_pago number, 
  fecha_transacion_pago datetime,
  forma_pago nvarchar2(30),
  id_cliente number,
  id_pedido number,
  constraint pk_id_cargo primary key (id_pago)
  constraint fk_id_cliente foreign key references cliente(id_cliente)
  constraint fk_id_pedido foreign key references pedido (id_pedido)
);
create table proveedor(
  id_proveedor number, 
  nombre_proveedor nvarchar2(50),
  correo_proveedor nvarchar2(50),
  direccion_proveedor nvarchar2(100),
  telefono_proveedor nvarchar2(10),
  cuenta_bancaria_proveedor nvarchar2(70),
  constraint pk_id_proveedor primary key (id_proveedor)
);
create table factura(
  id_factura number, 
  id_pedido number, 
  fecha_factura datetime,
  id_pago number,
  constraint pk_id_factura primary key (id_factura)
  constraint fk_id_pago foreign key (id_pago) references pago (id_pago)
);

create table producto(
  id_producto number,
  nombre_producto nvarchar2(100),
  id_proveedor number,
  almacenamiento_producto nvarchar2(30),
  precio number,
  marca nvarchar2(20),
  DETALLES_PRODUCTO NVARCHAR2(300) NOT NULL,
  CANTIDAD_PRODUCTOS NUMBER(6) NOT NULL,
  constraint pk_id_producto primary key (id_producto)
  constraint fk_proveedor foreign key (id_proveedor) references proveedor (id_proveedor)
);
CREATE TABLE inventarios (
    ID_INVENTARIO NUMBER(6),
    ID_PRODUCTO NUMBER(6),
    CANTIDAD_PRODUCTOS_INVENTARIO NUMBER(6) NOT NULL,
    constraint id_ID_INVENTARIO primary key (ID_INVENTARIO)
    CONSTRAINT fk_producto FOREIGN KEY (ID_PRODUCTO) REFERENCES productos(ID_PRODUCTO)
);

create table compra_proveedor(
  id_compra_provedor number,
  id_productos number,
  id_proveedor number, 
  cantidad_productos number,
  precio number, 
  constraint id_compra_provedor primary key (id_compra_provedo)
  constraint fk_inventario foreign key (id_inventario) references inventario (id_inventario)
  constraint fk_proveedor foreign key (id_proveedor) references proveedor (id_proveedor)
	);

