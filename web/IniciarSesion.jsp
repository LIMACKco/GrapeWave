<%-- 
    Document   : IniciarSesion
    Created on : 6 nov. 2023, 20:06:09
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Limack</title>
    <link rel="stylesheet" href="IniciarSesion.css">
</head>
<body>
    <div class="left-decorationii"></div>
    <div class="right-decorationii"></div>
    <a href="SelectPerfil.jsp">
    <div class="logo-container">
        <img src="LogoGRPWVE.png" alt="Logo" class="logo">
    </div>
    </a>
    <div class="Titulo">
        Iniciar sesión
    </div>
    
    <div class="form">
    <input type="text" class="campo" placeholder="Nombre de usuario"><br><br><br><br>
    <input type="password" class="campo" placeholder="Contraseña">
    </div>
    
    <div class="texto1">
        No tienes cuenta?&nbsp;<a href="Registrarse.jsp" class="vinculo">Registrate</a>
    </div>
    
    <div class="boton-login">
        <a class="login-button" href="#">Iniciar sesión</a>
    </div>
</body>
</html>

