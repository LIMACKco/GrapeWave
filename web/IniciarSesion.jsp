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
    <style>
        input[type="submit"] {/* Estilo del Submit */
        font-size: 24px;/*Tamaño de la fuente*/
        top: -150%;/*Margen del boton hacia arriba con respecto a un div*/
        background-color: #b8ff68; /* Color verde */
        padding: 20px 40px;/*Margen interno */
        color: black;/*Color de la letra*/
        border: none;/*Borde*/
        border-radius: 45px;/*Redondeado  del botón*/
        text-decoration: none;
        position: fixed;/*Permite que los divs no se encimen*/
        left: 50%;/*Espacio a la izquierda cojn respecto a la página*/
        transform: translateX(-50%);
        transition: background-color 0.3s ease, transform 0.3s ease;
        }
        
        input[type="submit"]:hover{
            background-color: #9266cc;
            color: #ffffff;
        }
        
    </style>
</head>
<body>
    <form action="LoginCheck.jsp" method="post">
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
    
    <div class="form" >
        <input type="email" name="Email" class="campo" placeholder="Email" >
        <br><br><br><br>
        <input type="password" name="Contrasena" class="campo" placeholder="Contraseña" >
        <br><br>
    </div>
    
    
    <div class="texto1">
        <input type="submit" name="Login" value="Iniciar Sesión">
        No tienes cuenta?&nbsp;<a href="SelectPerfil.jsp" class="vinculo">Registrate</a>
        <br><br><br>
    </div>
</form>
</body>
</html>

