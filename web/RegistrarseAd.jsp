<!DOCTYPE html>
<html lang="es">
<<<<<<< HEAD
<head>
    <meta charset="UTF-8">
    <meta id="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="RegistrarseAd.css">
    <title>Registro Administrador</title>

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

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Limack</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: black;
            font-family: Arial, sans-serif;
        }

        .logo-container {
            position: fixed;
            /* Hace un div fijo*/
            top: 10px;
            /* Espacio hacia arriba*/
            left: 20px;
            /* Espacio a la Izquierda*/
        }

        .logo {
            max-width: 20%;
            height: auto;
        }

        input[type="submit"] {
            /* Estilo del Submit */
            font-size: 24px;
            /* Tama�o de la fuente*/
            top: 110%;
            background-color: #b8ff68;
            /* Color verde */
            padding: 20px 40px;
            /* Margen interno */
            color: black;
            /* Color de la letra*/
            border: none;
            /* Borde*/
            border-radius: 45px;
            /* Redondeado del bot�n*/
            text-decoration: none;
            position: absolute;
            /* Permite que los divs no se encimen*/
            left: 50%;
            /* Espacio a la izquierda con respecto a la p�gina*/
            transform: translateX(-50%);
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
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

        .space {
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
        function validarContrase�as() {
            var contrase�a1 = document.getElementById("contra1").value;
            var contrase�a2 = document.getElementById("contra2").value;

            if (contrase�a1 !== contrase�a2) {
                // Contrase�as diferentes, mostrar mensaje de error
                document.getElementById("mensajeError").innerHTML = "Las contrase�as son diferentes";
                return false; // Evitar el env�o del formulario
            } else {
                // Contrase�as coinciden, borrar mensaje de error si existe
                document.getElementById("mensajeError").innerHTML = "";
                return true; // Permitir el env�o del formulario
            }
        }
    </script>
</head>

<body>
<<<<<<< HEAD
    <form id="Registrar_Administradores" method="post"><!-- Onsubmit para llamar la funcion al dar click en el Submit -->
        <div class="left-decoration"></div>
        
        <div class="right-decoration"></div>
   
        <div>
            <a href="SelectPerfil.jsp">
                <img src="LogoGRPWVE.png" alt="Logo" class="logo">
            </a>
        </div>

        <div class="Titulo">
            Registrarse
        </div>

        <div class="form">
            <input type="text" class="campo" placeholder="Nombre" id="Nombre" required>
            <br><br>
            <input type="text" class="campo" placeholder="Apellido Paterno" id="ApPat" required>
            <br><br>
            <input type="text" class="campo" placeholder="Apellido Materno" id="ApMat" required>
            <br><br>
            <input type="tel" class="campo" placeholder="Tel�fono" id="Telefono" required maxlength="10" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
            <br><br>
            <input type="text" class="campo" placeholder="Calle" id="Calle" required>
            <br><br>
            <input type="number" class="campo" placeholder="N�mero" id="Numero" required min="1">
            <br><br>
            <input type="text" class="campo" placeholder="Colonia" id="Colonia" required>
            <br><br>
            <input type="text" class="campo" placeholder="Municipio" id="Municipio" required>
            <br><br>
            <input type="text" class="campo" placeholder="Estado" id="Estado" required>
            <br><br>
            <input type="email" class="campo" placeholder="Correo Electr�nico" id="Email" required>
            <br><br>
            <input type="text" class="campo" placeholder="C�digo de Sucursal" id="Codigo" required>
            <br><br>
            <!-- Agregado contenedor para campo de contrase�a con icono del ojo -->
            <div class="campo-container">
                <input type="password" id="contra1" class="campo" placeholder="Contrase�a" required oninput="validarContrase�as()">
                <img src="Ojo_Closed.png" alt="Ver" class="toggle-password" id="togglePassword1" onclick="togglePassword('contra1', 'togglePassword1')">
            </div>           
            <br><br>
            
            <!-- Agregado contenedor para campo de confirmar contrase�a con icono del ojo -->
            <div class="campo-container">
                <input type="password" id="contra2" class="campo" placeholder="Confirmar contrase�a" oninput="validarContrase�as()" required>
                <img src="Ojo_Closed.png" alt="Cerrar" class="toggle-password" id="togglePassword2" onclick="togglePassword('contra2', 'togglePassword2')">
            </div>
            <br><br>
            <span id="mensajeError"></span>
            <br>
            <input type="submit" id="Registrar" value="Registrar">
        </div>

        <div class="texto1">
            �Ya tienes cuenta?&nbsp;<a href="IniciarSesion.jsp" class="vinculo">Inicia sesi�n.</a>
        </div>

        <div class="space">
            .
        </div>
        
    </form>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/firebase/7.14.1-0/firebase.js"></script>
    <script src="./RegistrarseAd.js"></script>
    
=======
    <form action="SignUpAd.jsp" method="post" onsubmit="return validarContrase�as()">
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
        <input type="tel" class="campo" placeholder="Tel�fono" name="Telefono" required maxlength="10" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
        <br><br>
        <input type="text" class="campo" placeholder="Calle" name="Calle" required>
        <br><br>
        <input type="number" class="campo" placeholder="N�mero" name="Numero" required min="1">
        <br><br>
        <input type="text" class="campo" placeholder="Colonia" name="Colonia" required>
        <br><br>
        <input type="text" class="campo" placeholder="Municipio" name="Municipio" required>
        <br><br>
        <input type="text" class="campo" placeholder="Estado" name="Estado" required>
        <br><br>
        <input type="email" class="campo" placeholder="Correo Electr�nico" name="Email" required>
        <br><br>
        <input type="text" class="campo" placeholder="C�digo de Sucursal" name="Codigo" required>
        <br><br>
        <input type="password" id="contra1" class="campo" placeholder="Contrase�a" name="Contrasenia" required>
        <br><br>
        <input type="password" id="contra2" class="campo" placeholder="Confirmar contrase�a" id="contra2" name="Contrase�a2" required>
        <br><br>
        <span id="mensajeError"></span>
        <br><br>
        <input type="submit" name="Registrar" value="Registrar" class="btn">
    </div>
    
    <div class="texto1">
        �Ya tienes cuenta?&nbsp;<a href="IniciarSesion.jsp" class="vinculo">Inicia sesi�n.</a>
    </div>
    
    <div class="space">.</div>
    </form>
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
</body>
</html>