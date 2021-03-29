create database actividad_1_3
go

use actividad_1_3 

go

create table tipos(
  idTipo int primary key identity(1,1) not null,
  nombre varchar(30) not null
)
go
create table clientes(
  id int primary key identity(1,1) not null,
  razonSocial nvarchar(60) not null,
  CUIT varchar(13) unique not null,
  tipoCliente int not null foreign key references tipos(idTipo),
  mail varchar(20) null,
  celular varchar(20)null
) 
go
create table proyectos(
   id int primary key identity(1,1) not null,
   nombre nvarchar(30) not null,
   idCliente int foreign key references clientes (id),
   fecha_Inicio date not null,
   fecha_fin datetime null,
   costo DECIMAL not null,
   estado BIT not null -- 1 = activo 0 = inactivo
   )
