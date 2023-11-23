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
    <style>
        /* Estilos generales */
body {
    margin: 0;
    padding: 0;
    background-color: black;
    font-family: Arial, sans-serif;
}

.logo-container {
    position: fixed;/* Hace un div fijo*/
    top: 10px;/* Espacio hacia arriba*/
    left: 20px;/* Espacio a la Izquierda*/
}

.logo {
    max-width: 20%; 
    height: auto;
}


input[type="submit"] {/* Estilo del Submit */
    font-size: 24px;/*Tamaño de la fuente*/
<<<<<<< HEAD
    margin-top: 50px;/*Margen del boton hacia arriba con respecto a un div*/
=======
    margin-top: 130px;/*Margen del boton hacia arriba con respecto a un div*/
>>>>>>> 3d91789dc96cacb2654c091e8998c06f0f0f3f32
    background-color: #b8ff68; /* Color verde */
    padding: 20px 40px;/*Margen interno */
    color: black;/*Color de la letra*/
    border: none;/*Borde*/
    border-radius: 45px;/*Redondeado del botón*/
    text-decoration: none;
    position: absolute;/*Permite que los divs no se encimen*/
    left: 50%;/*Espacio a la izquierda cojn respecto a la página*/
    transform: translateX(-50%);
    transition: background-color 0.3s ease, transform 0.3s ease;
}

input[type="submit"]:hover{
    background-color: #9266cc;
    color: #ffffff;
}

.Titulo {
    font-size: 60px;
    position: absolute;
    top: 10%;
    left: 50%;
    transform: translateX(-50%);
    text-align: center;
    color: #ffffff;
}

.form {
    position: absolute;
    top: 25%;
    margin-left: 50%;
    transform: translate(-50%);
}

.campo {
    font-size: 35px;
    border-radius: 30px;
    border: none;
}

.campo:focus {
    background-color: #000000;
    color: #ffffff;
}

.texto1 {
    position: absolute;
    color: #ffffff;
    display: flex;
    justify-content: center;
    align-items: center;
    top: 135%;
    height: auto;
    width: 30%;
    left: 50%;
    transform: translateX(-50%);
    white-space: nowrap;
}

.vinculo {
    color: #ffffff;
}

.space{
    position: absolute;
    margin-top: 80%;
}

    </style>
</head>

<body>
    <form action="SignUpEmp.jsp" method="post">
    <div class="left-decoration"></div>
    
    <div class="right-decoration"></div>
    
    <div class="logo-container">
        <img src="LogoGRPWVE.png" alt="Logo" class="logo">
    </div>
    
    </a>
    <div class="Titulo">
        Registrarse
    </div>
    
    <div class="form">
        <input type="text" class="campo" placeholder="Nombre" name="Nombre" required>
        <br><br>
        <input type="text" class="campo" placeholder="Apellido Paterno" name="ApPat" required>
        <br><br>
        <input type="text" class="campo" placeholder="Apellido Materno" name="ApMat" required>
        <br><br>
        <input type="text" class="campo" placeholder="Teléfono" name="Telefono" required>
        <br><br>
        <input type="text" class="campo" placeholder="Calle" name="Calle" required>
        <br><br>
        <input type="number" class="campo" placeholder="Número" name="Numero" required>
        <br><br>
        <input type="text" class="campo" placeholder="Colonia" name="Colonia" required>
        <br><br>
        <input type="text" class="campo" placeholder="Municipio" name="Municipio" required>
        <br><br>
        <input type="text" class="campo" placeholder="Estado" name="Estado" required>
        <br><br>
        <input type="email" class="campo" placeholder="Correo Electrónico" name="Email" required>
        <br><br>
        <input type="text" class="campo" placeholder="Código de Administrador" name="Codigo" required>
        <br><br>
        <input type="password" class="campo" placeholder="Contraseña" name="Contrasenia" required>
        <br><br>
        <input type="password" class="campo" placeholder="Confirmar contraseña" id="contra2" name="Contraseña2" required>
        <br><br>
        <input type="submit" name="Registrar" value="Registrar" class="btn">
    </div>
    
    <div class="texto1">
        ¿Ya tienes cuenta?&nbsp;<a href="IniciarSesion.jsp" class="vinculo">Inicia sesión.</a>
    </div>
    
    <div class="space">.</div>
    </form>
</body>
</html>