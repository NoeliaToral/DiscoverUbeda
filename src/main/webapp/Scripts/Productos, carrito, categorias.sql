create table categorias(
	idCategoria int(10) auto_increment primary key,
    descripcionCategoria varchar (20)
);

INSERT INTO CATEGORIAS (descripcionCategoria) VALUES ('Complementos');
INSERT INTO CATEGORIAS (descripcionCategoria) VALUES ('Regalos');

create table productos(
	idProductos int(13) not null auto_increment,
    nombreProducto varchar(15) not null,
    descripcion varchar(100) not null,
    precio double not null,
    idCategoria int(10),
    url varchar(30),
    material varchar(20),
    talla varchar(5),
    primary key (idProductos),
    CONSTRAINT FK_ID_CATEGORIA FOREIGN KEY (idCategoria) REFERENCES CATEGORIAS (idCategoria)
);

insert into productos (nombreProducto, descripcion, precio, idCategoria, url, material, talla) values('taza','es un taza','25','2','static/css/images/1_atras.png','no lo se','');

create table carrito(
	id_venta int(13) not null auto_increment,
    unidades int(100),
    idProductos int(13),
    carritoUser_id BIGINT,
    PRIMARY KEY (id_venta),
    CONSTRAINT FK_ID_PRODUCTOS FOREIGN KEY (idProductos) REFERENCES PRODUCTOS (idProductos),
	CONSTRAINT FK_ID_USER FOREIGN KEY (carritoUser_id) REFERENCES APP_USER (id)
);

select * from carrito car join APP_USER user on car.carritoUser_id=user.id where sso_id='sam;'