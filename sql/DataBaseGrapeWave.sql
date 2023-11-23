drop database if exists GrapeWave;
create database GrapeWave;

use GrapeWave;

create table Dueño(
Id_Master int primary key not null auto_increment,
Nombre_Master varchar(30),
Ap_PatMaster varchar(30),
Ap_MatMaster varchar(30),
Correo_Master varchar(255),
contraseña varchar(20));

insert into Dueño (Nombre_Master, Ap_PatMaster, Ap_MatMaster, Correo_Master, contraseña) 
values ("Aldo Marcel","González","Aguilar","aldoflofy24@gmail.com","flofy800");

select * from Dueño;

create table Sucursal(
Id_Sucursal int primary key not null auto_increment,
Nombre_Sucursal varchar(40),
Teléfono_Sucursal bigint,
Calle_Sucursal varchar(30),
Num_Sucursal int(5),
Colonia_Sucursal varchar(30),
Municipio_Sucursal varchar(30),
Estado_Sucursal varchar(25));

insert into Sucursal (Nombre_Sucursal, Teléfono_Sucursal, Calle_Sucursal, Num_Sucursal, Colonia_Sucursal, Municipio_Sucursal, Estado_Sucursal) 
values ("Veratech Oriente",5546218870,"Mar Mediterráneo",227,"Nextitla","Miguel Hidalgo","Ciudad de México");

select * from Sucursal;

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

create table Administrador(
Id_Admin int primary key not null auto_increment,
Nombre_Admin varchar(30),
Ap_PatAdmin varchar(15),
Ap_MatAdmin varchar(15),
Teléfono_Admin bigint(10),
Calle_Admin varchar(15),
Num_ExtAdmin int(5),
Colonia_Admin varchar(30),
Municipio_Admin varchar(230),
Estado_Admin varchar(30),
Correo_Admin varchar(255),
contraseña varchar(20));

select * from Administrador;

create table Empleados(
Id_Empleado int primary key not null auto_increment,
Nombre_Empleado varchar(30),
Ap_PatEmp varchar(30),
Ap_MatEmp varchar(30),
Telefono_Empleado bigint(10),
Calle_Empleado varchar(30),
Num_ExtEmpleado int(6),
Colonia_Empleado varchar(25),
Municipio_Empleado varchar(35),
Estado_Empleado varchar(25),
Correo_Empleado varchar(255),
contraseña varchar(20));

insert into Empleados (Nombre_Empleado, Ap_PatEmp, Ap_MatEmp, Telefono_Empleado, Calle_Empleado, Num_ExtEmpleado, Colonia_Empleado, Municipio_Empleado, Estado_Empleado, Correo_Empleado, contraseña) 
values ("Gabriel","Hernández","Vera",5566514825,"Heroes de Nacozari",99,"Campestre","Tecamachalco","Estado de México","hernandez.vera.gabriel@gmail.com","garven1234");

select * from Empleados;

create table Informes(
Id_Informe int primary key not null,
Tipo_Informe varchar(20),
Contenido blob);

select * from Informes;

create table Prueba(
Id_Prueba int primary key not null auto_increment,
Nombre_Prueba varchar(50),
Edad_Prueba int(10));

select * from Prueba;