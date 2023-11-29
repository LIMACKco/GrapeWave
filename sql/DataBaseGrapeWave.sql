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

insert into Dueño (Nombre_Master, Ap_PatMaster, Ap_MatMaster, Correo_Master, contraseña) values 
("Aldo Marcel","González","Aguilar","aldoflofy24@gmail.com","flofy800"),
("Laura","Gómez","López","laura@example.com","pass123"),
("Carlos","Hernández","Ramírez","carlos@example.com","securePwd"),
("Ana","Martínez","Sánchez","ana@example.com","password123");

select * from Dueño;

create table Sucursal(
Id_Sucursal int primary key not null auto_increment,
Nombre_Sucursal varchar(40),
Teléfono_Sucursal bigint,
Calle_Sucursal varchar(30),
Código_Sucursal varchar(10),
Colonia_Sucursal varchar(30),
Municipio_Sucursal varchar(30),
Estado_Sucursal varchar(25));

insert into Sucursal (Nombre_Sucursal, Teléfono_Sucursal, Calle_Sucursal, Código_Sucursal, Colonia_Sucursal, Municipio_Sucursal, Estado_Sucursal) values 
("Veratech Oriente",5546218870,"Mar Mediterráneo","axbx34c","Nextitla","Miguel Hidalgo","Ciudad de México"),
("TechCenter Norte",5546218800,"Avenida Tecnológica","abc123","Tecamachalco","Naucalpan","Estado de México"),
("Grapes Plaza","5555555555","Calle de las Uvas","xyz987","Viñedo","Querétaro","Querétaro"),
("FutureTech","5566666666","Avenida del Futuro","123xyz","Innovación","Guadalajara","Jalisco");

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

insert into Administrador(Nombre_Admin, Ap_PatAdmin, Ap_MatAdmin, Teléfono_Admin, Calle_Admin, Num_ExtAdmin, Colonia_Admin, Municipio_Admin, Estado_Admin, Correo_Admin, contraseña) values
("Hermelinda","Gonzalez","Aguilar",5562159789,"Francisco Villa", 12, "Tres Marías", "Ecatepec", "Estado de México", "hermega12@gmail.com","miperrococoa"),
("Roberto","López","García",5547891234,"Calle Principal", 8, "Centro", "Ciudad de México", "Ciudad de México", "roberto@example.com","adminPass"),
("Elena","Rodríguez","Hernández",5569876543,"Avenida Central", 15, "Colonia Moderna", "Guadalajara", "Jalisco", "elena@example.com","admin123"),
("Juan","Pérez","Sánchez",5532109876,"Calle Nueva", 21, "Bosque Residencial", "Monterrey", "Nuevo León", "juan@example.com","adminPass123");

select * from Administrador;

create table Empleados(
Id_Empleado int primary key not null auto_increment,
Nombre_Empleado varchar(30),
Ap_PatEmp varchar(30),
Ap_MatEmp varchar(30),
Telefono_Empleado bigint(10), -- Se usa bigint por la extensión del número
Calle_Empleado varchar(30),
Num_ExtEmpleado int(6),
Colonia_Empleado varchar(25),
Municipio_Empleado varchar(35),
Estado_Empleado varchar(25),
Correo_Empleado varchar(255),
contraseña varchar(20));

insert into Empleados (Nombre_Empleado, Ap_PatEmp, Ap_MatEmp, Telefono_Empleado, Calle_Empleado, Num_ExtEmpleado, Colonia_Empleado, Municipio_Empleado, Estado_Empleado, Correo_Empleado, contraseña) values 
("Gabriel","Hernández","Vera",5566514825,"Heroes de Nacozari",99,"Campestre","Tecamachalco","Estado de México","hernandez.vera.gabriel@gmail.com","garven1234"),
("María","Martínez","Gómez",5551112233,"Calle 1", 45, "Residencial ABC", "Ciudad de México", "Ciudad de México", "maria@example.com","empPass"),
("Pedro","Ramírez","López",5563344556,"Avenida 2", 67, "Colonia XYZ", "Guadalajara", "Jalisco", "pedro@example.com","employee123"),
("Sofía","González","Hernández",5588776655,"Calle 3", 89, "Barrio Nuevo", "Monterrey", "Nuevo León", "sofia@example.com","employeePass123");

select * from Empleados;

create table Informes(
Id_Informe int primary key not null,
Tipo_Informe varchar(20),
Contenido blob);

select * from Informes;