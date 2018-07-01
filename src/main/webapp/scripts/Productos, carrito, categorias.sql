create table CATEGORIAS(
	idCategoria int(10) auto_increment primary key,
    descripcionCategoria varchar (20)
);
INSERT INTO CATEGORIAS (descripcionCategoria) VALUES ('Artesania');
INSERT INTO CATEGORIAS (descripcionCategoria) VALUES ('Complementos');
INSERT INTO CATEGORIAS (descripcionCategoria) VALUES ('Heraldica');
INSERT INTO CATEGORIAS (descripcionCategoria) VALUES ('Recuerdos');
INSERT INTO CATEGORIAS (descripcionCategoria) VALUES ('Regalos');
INSERT INTO CATEGORIAS (descripcionCategoria) VALUES ('Otros');
select * from categorias;


create table PRODUCTOS(
	idProductos int(13) not null auto_increment,
    nombreProducto varchar(30) not null,
    descripcionCorta varchar(100) not null,
    descripcionLarga varchar(500),
    precio double not null,
    idCategoria int(10),
    material varchar(80),
    talla varchar(10),
    url varchar(50),
    url1 varchar(50),
    url2 varchar(50),
    url3 varchar(50),
    url4 varchar(50),
    url5 varchar(50),
    PRIMARY KEY (idProductos),
    CONSTRAINT FK_ID_CATEGORIA FOREIGN KEY (idCategoria) REFERENCES CATEGORIAS (idCategoria)
);

select * from productos;
insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, idCategoria, material, talla, url) values('hola taza','es un taza','es otra taza','25','2','no lo se','','static/imgProductos/13/images.png');


select * from carrito;

create table CARRITO(
	id_venta int(13) not null auto_increment,
    unidades int(100),
    idProductos int(13),
    carritoUser_id BIGINT,
    PRIMARY KEY (id_venta),
    CONSTRAINT FK_ID_PRODUCTOS FOREIGN KEY (idProductos) REFERENCES PRODUCTOS (idProductos),
	CONSTRAINT FK_ID_USER FOREIGN KEY (carritoUser_id) REFERENCES APP_USER (id)
);

select * from carrito car join APP_USER user on car.carritoUser_id=user.id where sso_id='sam;'