<%-- 
    Document   : DelEmp
    Created on : 26 nov. 2023, 21:58:52
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Limack</title>
    <link rel="stylesheet" href="DelEmp.css">
</head>
<body>
    <form action="DelEmpCheck.jsp" method="post">
        <div class="left-decorationii"></div>
        <div class="right-decorationii"></div>
        
        <div class="logo-container">
        <a href="index.html">
            <img src="LogoGRPWVE.png" alt="Logo" class="logo">
        </a>
        </div>

        <div class="decoration"></div>

        <div class="Titulo">
            Eliminar Empleado
        </div>

        <div class="form">
            <input type="text" name="Correo" class="campo" placeholder="Correo del Empleado" required>
            <br><br><br><br><br>
            <input type="password" name="Contrasenia" class="campo" placeholder="Contraseña Administrador" required>
        </div>
        
        <input type="submit" name="Eliminar" value="Eliminar Empleado">
        
    </form>
</body>
</html>


