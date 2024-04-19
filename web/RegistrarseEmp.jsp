<%-- 
    Document   : Registrarse
    Created on : 6 nov. 2023, 20:13:57
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<<<<<<< HEAD
<!DOCTYPE html>
=======
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
    <link rel="stylesheet" href="RegistrarseEmp.css"/>
    <title>Registro Empleado</title>
    
    <script>
        function togglePassword(fieldId, iconId) {
            var field = document.getElementById(fieldId);
            var icon = document.getElementById(iconId);

            if (field.type === "password") {
                field.type = "text";
                icon.src = "Ojo_Open.png"; // Cambiar la imagen del ojo abierto
            } else {
                field.type = "password";
                icon.src = "Ojo_Closed.png"; // Cambiar la imagen del ojo cerrado
            }
        }
        
=======
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
    top: 110%;/*Margen del boton hacia arriba con respecto a un div*/
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

.space{
    position: absolute;
    margin-top: 80%;
}

/* Estilo para el mensaje de error */
        #mensajeError {
            color: red;
            font-size: 16px;
            margin-top: 10px;
        }
    </style>
    
    <script>
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
        function validarContraseñas() {//Funcion de Validar Contraseñas
            var contraseña1 = document.getElementById("contra1").value;
            var contraseña2 = document.getElementById("contra2").value;

            if (contraseña1 !== contraseña2) {
                // Contraseñas diferentes, mostrar mensaje de error
                document.getElementById("mensajeError").innerHTML = "Las contraseñas son diferentes";
                return false; // Evitar el envío del formulario
            } else {
                // Contraseñas coinciden, borrar mensaje de error si existe
                document.getElementById("mensajeError").innerHTML = "";
                return true; // Permitir el envío del formulario
            }
        }
    </script>
</head>

<body>
    <form action="SignUpEmp.jsp" method="post" onsubmit="return validarContraseñas()"><!-- Onsubmit para llamar la funcion al dar click en el Submit -->
    <div class="left-decoration"></div>
    
    <div class="right-decoration"></div>
    
<<<<<<< HEAD
    <div>
        <a href="SelectPerfil.jsp">
            <img src="LogoGRPWVE.png" alt="Logo" class="logo">
        </a>
    </div>
    
=======
    <div class="logo-container">
        <img src="LogoGRPWVE.png" alt="Logo" class="logo">
    </div>
    
    </a>
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
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
        <input type="tel" class="campo" placeholder="Teléfono" name="Telefono" required maxlength="10" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
        <br><br>
        <input type="text" class="campo" placeholder="Calle" name="Calle" required>
        <br><br>
        <input type="number" class="campo" placeholder="Número" name="Numero" required min="1">
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
<<<<<<< HEAD
        <!-- Agregado contenedor para campo de contraseña con icono del ojo -->
            <div class="campo-container">
                <input type="password" id="contra1" class="campo" placeholder="Contraseña" name="Contrasenia" required>
                <img src="Ojo_Closed.png" alt="Ver" class="toggle-password" id="togglePassword1" onclick="togglePassword('contra1', 'togglePassword1')">
            </div>           
            <br><br>
            
            <!-- Agregado contenedor para campo de confirmar contraseña con icono del ojo -->
            <div class="campo-container">
                <input type="password" id="contra2" class="campo" placeholder="Confirmar contraseña" name="Contraseña2" required>
                <img src="Ojo_Closed.png" alt="Cerrar" class="toggle-password" id="togglePassword2" onclick="togglePassword('contra2', 'togglePassword2')">
            </div>
            <br><br>
        <span id="mensajeError"></span><!-- InnerHTML -->
        <br>
=======
        <input type="password" id="contra1" class="campo" placeholder="Contraseña" name="Contrasenia" required>
        <br><br>
        <input type="password" id="contra2" class="campo" placeholder="Confirmar contraseña" id="contra2" name="Contraseña2" required>
        <br><br>
        <span id="mensajeError"></span><!-- InnerHTML -->
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
        <input type="submit" name="Registrar" value="Registrar" class="btn">
    </div>
    
    <div class="texto1">
        ¿Ya tienes cuenta?&nbsp;<a href="IniciarSesion.jsp" class="vinculo">Inicia sesión.</a>
    </div>
    
<<<<<<< HEAD
    <div class="space">
        .
    </div>
    
=======
    <div class="space">.</div>
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
    </form>
</body>
</html>