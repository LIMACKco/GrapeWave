drop database if exists GrapeWave;
create database GrapeWave;
use GrapeWave;

create table Dueño(
Id_Dueño int primary key not null,
contraseña varchar (20));

select * from Dueño;

create table Productos(
Id_Producto int primary key not null,
Nombre_Producto varchar(40),
Descripción varchar(50),
Categoría varchar(20),
Marca varchar(20), 
Precio float(6.2),
Stock int(5),
Lote varchar(5),
Ubicación varchar(20),
Imágen blob);

select * from Productos;

create table Usuarios(
Id_Usuario int primary key not null auto_increment,
Nombre_Usuario varchar(30),
Ap_PatUser varchar(30),
Ap_MatUser varchar(30),
Telefono_Usuario varchar(10),
Calle_Usuario varchar(30),
Num_ExtUsuario int(6),
Colonia_Usuario varchar(25),
Municipio_Usuario varchar(35),
Estado_Usuario varchar(25),
Correo_Usuario varchar(255),
contraseña varchar(20));

select * from Usuarios;


create table Sucursal(
Id_Sucursal int primary key not null,
Nombre_Sucursal varchar(40),
Teléfono_Sucursal int(10),
Calle_Sucursal varchar(15),
Num_Sucursal int(5),
Colonia_Sucursal varchar(15),
Municipio_Sucursal varchar(25),
Estado_Sucursal varchar(25));

select * from Sucursal;

create table Administrador(
Id_Admin int primary key not null,
Nombre_Admin varchar(30),
Ap_PatAdmin varchar(15),
Ap_MatAdmin varchar(15),
Teléfono_Admin int(10),
Calle_Admin varchar(15),
Num_ExtAdmin int(5),
Colonia_Admin varchar(15),
Municipio_Admin varchar(25),
Estado_Admin varchar(25),
contraseña varchar(20));

select * from Administrador;

create table Informes(
Id_Informe int primary key not null,
Tipo_Informe varchar(20),
Contenido blob);

select * from Informes;



