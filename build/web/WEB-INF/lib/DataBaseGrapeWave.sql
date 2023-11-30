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
Id_Producto int primary key not null auto_increment,
Nombre_Producto varchar(40),
Descripción varchar(1000),
Categoría varchar(20),
Marca varchar(20), 
Precio float(6.2),
Stock int(5),
Lote varchar(15),
Ubicación varchar(20),
Imágen blob);

insert into Productos(Nombre_Producto, Descripción, Categoría, Marca, Precio, Stock, Lote, Ubicación, Imágen) values
('Smartphone X', 'Un smartphone avanzado con características destacadas', 'Electrónicos', 'MarcaTech', 799.99, 50, 'Lote123', 'Almacén A', 'imagen1.jpg'),
('Laptop Pro', 'Una potente laptop diseñada para profesionales', 'Electrónicos', 'MarcaPro', 1299.99, 20, 'Lote456', 'Almacén B', 'imagen2.jpg'),
('Cámara HD', 'Cámara de alta definición para capturar momentos inolvidables', 'Fotografía', 'MarcaFoto', 299.99, 30, 'Lote789', 'Almacén C', 'imagen3.jpg');

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
("Sofía","González","Hernández",5588776655,"Calle 3", 89, "Barrio Nuevo", "Monterrey", "Nuevo León", "sofia@example.com","employeePass123"),
  ('Sara', 'Fernández', 'Martínez', 5588112233, 'Avenida de las Flores', 321, 'Colonia Primavera', 'Cancún', 'Quintana Roo', 'sara@example.com', 'saraPass321'),
  ('Alejandro', 'Herrera', 'Gómez', 5566223344, 'Calle del Monte', 876, 'Colonia Verde', 'Toluca', 'Estado de México', 'alejandro@example.com', 'alejandroPass876'),
  ('Isabel', 'Cruz', 'Jiménez', 5544887766, 'Avenida del Río', 543, 'Residencial Azul', 'Acapulco', 'Guerrero', 'isabel@example.com', 'isabelPass543'),
  ('Javier', 'Rodríguez', 'Mendoza', 5588990011, 'Calle del Bosque', 987, 'Colonia Dorada', 'Chihuahua', 'Chihuahua', 'javier@example.com', 'javierPass987'),
  ('Martha', 'Lara', 'Castillo', 5555444666, 'Avenida 5 de Mayo', 654, 'Colonia Nueva', 'México', 'Ciudad de México', 'martha@example.com', 'marthaPass654'),
  ('Eduardo', 'Pérez', 'Hernández', 5588223344, 'Calle de la Luna', 345, 'Residencial Estrella', 'Monterrey', 'Nuevo León', 'eduardo@example.com', 'eduardoPass345'),
  ('Ana', 'García', 'Sánchez', 5566778899, 'Avenida del Bosque', 678, 'Colonia Otoño', 'Puebla', 'Puebla', 'ana@example.com', 'anaPass678'),
  ('Francisco', 'Torres', 'Ramírez', 5544332211, 'Calle de la Montaña', 123, 'Colonia Sierra', 'Veracruz', 'Veracruz', 'francisco@example.com', 'franciscoPass123'),
  ('Carmen', 'Ríos', 'López', 5588001122, 'Avenida del Mar', 456, 'Residencial Maravilla', 'Hermosillo', 'Sonora', 'carmen@example.com', 'carmenPass456'),
  ('Arturo', 'Molina', 'Guzmán', 5566001122, 'Calle del Desierto', 789, 'Colonia Sol', 'Durango', 'Durango', 'arturo@example.com', 'arturoPass789'),
  ('Mariana', 'Vega', 'Ortega', 5544667788, 'Avenida de la Playa', 234, 'Colonia Playa', 'La Paz', 'Baja California Sur', 'mariana@example.com', 'marianaPass234'),
  ('Luis', 'Santos', 'Vargas', 5566554433, 'Calle del Valle', 876, 'Colonia Valle', 'Aguascalientes', 'Aguascalientes', 'luis@example.com', 'luisPass876'),
  ('Elena', 'Juárez', 'Salgado', 5544887766, 'Avenida de los Pájaros', 543, 'Residencial Aves', 'Tuxtla Gutiérrez', 'Chiapas', 'elena@example.com', 'elenaPass543'),
  ('Héctor', 'Mendez', 'Navarro', 5588112233, 'Calle del Jardín', 321, 'Colonia Jardines', 'Ciudad Juárez', 'Chihuahua', 'hector@example.com', 'hectorPass321'),
  ('Lucía', 'Moreno', 'Cervantes', 5566554433, 'Avenida de la Esperanza', 876, 'Colonia Esperanza', 'Morelia', 'Michoacán', 'lucia@example.com', 'luciaPass876'),
  ('Ricardo', 'Peralta', 'Guerrero', 5544332211, 'Calle del Trébol', 123, 'Colonia Trébol', 'Saltillo', 'Coahuila', 'ricardo@example.com', 'ricardoPass123'),
  ('Silvia', 'Velasco', 'Soto', 5588223344, 'Avenida de los Sueños', 345, 'Colonia Sueños', 'Culiacán', 'Sinaloa', 'silvia@example.com', 'silviaPass345'),
  ('Diego', 'Castañeda', 'Delgado', 5544667788, 'Calle de la Fuente', 234, 'Colonia Fuente', 'Xalapa', 'Veracruz', 'diego@example.com', 'diegoPass234'),
  ('Natalia', 'Rivas', 'Cabrera', 5566332211, 'Avenida de los Ángeles', 567, 'Colonia Ángeles', 'Tepic', 'Nayarit', 'natalia@example.com', 'nataliaPass567'),
  ('Miguel', 'Delgado', 'Fuentes', 5544001122, 'Calle de las Mariposas', 890, 'Colonia Mariposas', 'Mexicali', 'Baja California', 'miguel@example.com', 'miguelPass890');

select * from Empleados;

create table Informes(
Id_Informe int primary key not null,
Tipo_Informe varchar(20),
Contenido blob);

select * from Informes;