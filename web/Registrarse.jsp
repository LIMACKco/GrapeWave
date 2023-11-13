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
    position: fixed;
    top: 10px;
    left: 20px;
}

.logo {
    max-width: 20%; 
    height: auto;
}

.boton-login {
    position: absolute;
    text-align: center;
    margin-top: -10%;
    margin-left: 50%;
    transform: translateX(-50%);
    margin-bottom: 70%;
}

.registro-button {
    font-size: 24px;
    padding: 20px 40px;
    background-color: #b8ff68;
    color: black;
    border: none;
    border-radius: 45px;
    text-decoration: none;
    transition: background-color 0.3s ease, transform 0.3s ease;
    cursor: pointer;
}

.registro-button:hover {
    background-color: #9266cc;
    color: #ffffff;
    transform: translateY(-3px);
}

/* Nuevo estilo para el botón de enviar */
input[type="submit"] {
    font-size: 24px;
    padding: 20px 40px;
    background-color: #00ff00; /* Color verde */
    color: black;
    border: none;
    border-radius: 45px;
    text-decoration: none;
    transition: background-color 0.3s ease, transform 0.3s ease;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #006600; /* Cambia el color al pasar el mouse */
    color: #ffffff;
    transform: translateY(-3px);
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

.left-decorationii, .right-decorationii {
    position: absolute;
    top: 18%;
    height: 60%;
    width: 0.2%;
    background-color: #b8ff68;
}

.left-decorationii {
    left: 32%;
}

.right-decorationii {
    right: 32%;
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
    top: 150%;
    height: auto;
    width: 30%;
    left: 50%;
    transform: translateX(-50%);
    white-space: nowrap;
}

.vinculo {
    color: #ffffff;
}

.fondesp {
    margin-top: 80%;
}

.btn{
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
}

.space{
    position: absolute;
    margin-top: 80%;
}

    </style>
</head>

<body>
    <form action="Signup.jsp" method="post">
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
        <input type="text" class="campo" placeholder="Número" name="Numero" required>
        <br><br>
        <input type="text" class="campo" placeholder="Colonia" name="Colonia" required>
        <br><br>
        <input type="text" class="campo" placeholder="Municipio" name="Municipio" required>
        <br><br>
        <input type="email" class="campo" placeholder="Correo Electrónico" name="Email" required>
        <br><br>
        <input type="password" class="campo" placeholder="Contraseña" name="Contrasenia" required>
        <br><br>
        <input type="password" class="campo" placeholder="Confirmar contraseña" id="contra2" name="Contraseña2" required>
        <br><br><br><br>
        <input type="submit" name="Registrar" value="Registrar" class="btn">
    </div>
    <div class="texto1">
        ¿Ya tienes cuenta? <a href="IniciarSesion.jsp" class="vinculo">Inicia sesión</a>
    </div>
    </form>

    <div class="space">.</div>

</body>
</html>