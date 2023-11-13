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

create table Empleados(
Id_Empleado int primary key not null,
Nombre_Empleado varchar(30),
Ap_PatEmp varchar(15),
Ap_MatEmp varchar(15),
Teléfono_Empleado int(10),
Calle_Empleado varchar(15),
Num_ExtEmpleado int(5),
Colonia_Empleado varchar(15),
Municipio_Empleado varchar(25),
Estado_Empleado varchar(25),
contraseña varchar(20));

select * from Empleados;

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



