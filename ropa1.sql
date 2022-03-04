create database proyecto1;

use proyecto1;

drop table Ropa;

create table Ropa(
	idRopa int auto_increment,
    nombreRopa varchar(50) not null,
    descripcionRopa varchar(300) not null,
    tipoRopa varchar(30),
    talla varchar(2),
    cantidad int not null,
    precio double not null, 
    imagenRopa varchar(50) default('imagen.jpg'),
    activo boolean default(true),
    primary key(idRopa)
    );

insert into Ropa(nombreRopa, descripcionRopa, tipoRopa, talla, cantidad, precio, imagenRopa, activo)
values('Camiseta 1', 'Descripcion', 'Camiseta', 'M', 50, 400.00, 'camiseta.jpg', true);

select * from Ropa;

-- CONSULTAS de la BD de TAREA

DELETE FROM ropa WHERE idRopa = 1;

select nombreropa, descripcionropa FROM Ropa WHERE idRopa=2;

select nombreropa, cantidad, talla, precio FROM Ropa WHERE tipoRopa="Camiseta";

select idRopa, nombreropa, cantidad FROM Ropa WHERE cantidad=0;

UPDATE Ropa set cantidad=60 WHERE idRopa=7;

select idRopa, nombreropa, cantidad FROM Ropa WHERE idRopa=7;

UPDATE Ropa set nombreRopa='Sudadera Ichigo Bleach' where idRopa=2;

UPDATE Ropa set descripcionRopa='Sudadera con capucha' where idRopa=2;

insert into Ropa(nombreRopa, descripcionRopa, tipoRopa, talla, cantidad, precio, imagenRopa, activo)
values('Camiseta 1', 'Descripcion', 'Camiseta', 'M', 50, 400.00, 'camiseta.jpg', true);

insert into Ropa(nombreRopa, descripcionRopa, tipoRopa, talla, cantidad, precio, imagenRopa, activo)
values('Prueba', 'Desc', 'Relleno', 'DA', 32, 400.00, 'camiseta.jpg', true);

select * from Ropa;

delete from Ropa where idRopa>=9;

select idRopa, nombreRopa, precio from Ropa where tipoRopa="Sudadera";

UPDATE Ropa set precio=500 where idRopa=2;