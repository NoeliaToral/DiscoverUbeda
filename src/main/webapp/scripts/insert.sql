ALTER TABLE PRODUCTOS MODIFY url varchar(200);
ALTER TABLE CARRITO ADD COLUMN precio int(20);
ALTER TABLE CARRITO DROP precio;

select * from productos;

insert into PRODUCTOS (nombreProducto, descripcionCorta, descripcionLarga, precio, material, url, url1, url2,idCategoria) values('Abanico','Abanico con flores','Un bonito abanico con rosas azules y rojas. Perfecto para los días de calor o para una llevarlo a una boda.','3.5','madera','static/imgProductos/1/1.png','static/imgProductos/1/1.1.jpg','static/imgProductos/1/1.2.jpg','2');
insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, material, url,idCategoria) values('Azulejo personalizado 1','Azulejo para cualquier sitio','Este azulejo lo podras poner en cualquier sitio. En la cocina para para poder recordar Úbeda cuando este cocinando o comiendo o incluso en el dormitorio','3.5','Cerámica','static/imgProductos/2/1.jpg','');
insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, url, url1,idCategoria) values('Bolso','Bolso de flores estampadas','Bolso mediano para llevar todo cuando salgas de fiesta','10','static/imgProductos/3/1.jpg','static/imgProductos/3/1.1.jpg','2');
insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, material, url,url1,url2,idCategoria) values('Cenicero de Úbeda','Cenicero con frases','Un cecinero de cerámica perfecto para los fumadores o para regalar','4','Cerámica','static/imgProductos/4/1.jpg','static/imgProductos/4/1.2.jpg','static/imgProductos/4/1.3.jpg','3');
insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, url,idCategoria) values('Cesta Lucía','Cesta personalizada','Cesta perfecta para ir de picnic.','9.90','static/imgProductos/5/1.jpg');
insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, material, url,url1,idCategoria) values('Mortero','Mortero para cocinar','Mortero perfecto para cocinar','16','Madera de olivo','static/imgProductos/6/1.jpg','static/imgProductos/6/1.2.jpg','3');
insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, material, url,url1) values('Vasos de chupito','Vaso de chupito para probar todas las bebidas','Este vaso de chupito es perfecto para juntarse con los amigos y pasar un buen rato','2.50','Cristal','static/imgProductos/7/1.jpg','static/imgProductos/7/1.1.jpg');
insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, material, url,url1) values('Taza abuela','Taza personalizada para las abuelas','Regalo perfecto para las abuelas.','5','static/imgProductos/8/1.jpg','static/imgProductos/8/1.1.jpg');






insert into productos (nombreProducto, descripcionCorta, descripcionLarga, precio, material, url, url1, url2) values('Figura de botijo','Figurita de adorno de un botijo de Úbeda','Un bonito botijo de recuerdo de Úbeda para regalar','3.5','madera','static/imgProductos/1/1.png','static/imgProductos/1/1.1.png','static/imgProductos/1/1.2png');




