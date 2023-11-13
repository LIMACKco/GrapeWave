<%-- 
    Document   : Registrarse
    Created on : 6 nov. 2023, 20:13:57
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Limack</title>
    <link rel="stylesheet" href="Registrarse.css">
</head>
<body>
    <div class="left-decoration"></div>
    <div class="right-decoration"></div>
    <a href="SelectPerfil.jsp">
        <div class="logo-container">
            <img src="LogoGRPWVE.png" alt="Logo" class="logo">
        </div>
    </a>
    <div class="Titulo">
        Registrarse
    </div>
    
    <div class="form">
        <input type="text" class="campo" placeholder="Nombre"><br><br>
        <input type="text" class="campo" placeholder="Apellido Paterno"><br><br>
        <input type="text" class="campo" placeholder="Apellido Materno"><br><br>
        <input type="text" class="campo" placeholder="Telefono"><br><br>
        <input type="text" class="campo" placeholder="Calle"><br><br>
        <input type="text" class="campo" placeholder="Número"><br><br>
        <input type="text" class="campo" placeholder="Colonia"><br><br>
        <input type="text" class="campo" placeholder="Municipio"><br><br>
        <input type="email" class="campo" placeholder="Correo Electrónico"><br><br>
        <input type="password" class="campo" placeholder="Contraseña"><br><br>
        <input type="password" class="campo" placeholder="Confirmar contraseña">
    </div>
    
    <div class="texto1">
        ¿Ya tienes cuenta? <a href="IniciarSesion.jsp" class="vinculo">Inicia sesión</a>
    </div>
    
    <div class="boton-login">
        <a class="login-button" href="Verificada.jsp">Registrarse</a>
    </div>
</body>
</html>
