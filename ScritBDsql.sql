create database MVCCRUD;
use MVCCRUD

create table usuarios (
	id int identity(1,1) primary key,
	nombre varchar(50),
	fecha date,
	clave varchar(50)
)


select * from usuarios