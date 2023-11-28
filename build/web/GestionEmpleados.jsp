<%-- 
    Document   : GestionEmpleados
    Created on : 26 nov. 2023, 21:35:18
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Limack</title>
    <link rel="stylesheet" href="GestionEmpleados.css">
</head>
<body>
    <div class="logo-container">
    <a href="index.html">
        <img src="LogoGRPWVE.png" alt="Logo" class="logo">
    </a>
    </div>
    
    <div class="decoration"></div>
    
    <div class="Titulo">
        Empleados
    </div>
    
    <a href="DelEmp.jsp">
    <div class="btnDelEmp">
        <img src="DelEmp.png" class="eliminar"><br><br>
        Eliminar Empleados
    </div>
    </a>
    
    <a href="ConsEmp.jsp">
    <div class="btnConsEmp">
        <img src="ConsEmp.png" class="consultar"><br><br>
        Consultar Empleados
    </div>
    </a>
    
</body>
</html>

