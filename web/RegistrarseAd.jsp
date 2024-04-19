<!DOCTYPE html>
<html lang="es">
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
        
        function validarContraseñas() {
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
            <input type="tel" class="campo" placeholder="Teléfono" id="Telefono" required maxlength="10" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
            <br><br>
            <input type="text" class="campo" placeholder="Calle" id="Calle" required>
            <br><br>
            <input type="number" class="campo" placeholder="Número" id="Numero" required min="1">
            <br><br>
            <input type="text" class="campo" placeholder="Colonia" id="Colonia" required>
            <br><br>
            <input type="text" class="campo" placeholder="Municipio" id="Municipio" required>
            <br><br>
            <input type="text" class="campo" placeholder="Estado" id="Estado" required>
            <br><br>
            <input type="email" class="campo" placeholder="Correo Electrónico" id="Email" required>
            <br><br>
            <input type="text" class="campo" placeholder="Código de Sucursal" id="Codigo" required>
            <br><br>
            <!-- Agregado contenedor para campo de contraseña con icono del ojo -->
            <div class="campo-container">
                <input type="password" id="contra1" class="campo" placeholder="Contraseña" required oninput="validarContraseñas()">
                <img src="Ojo_Closed.png" alt="Ver" class="toggle-password" id="togglePassword1" onclick="togglePassword('contra1', 'togglePassword1')">
            </div>           
            <br><br>
            
            <!-- Agregado contenedor para campo de confirmar contraseña con icono del ojo -->
            <div class="campo-container">
                <input type="password" id="contra2" class="campo" placeholder="Confirmar contraseña" oninput="validarContraseñas()" required>
                <img src="Ojo_Closed.png" alt="Cerrar" class="toggle-password" id="togglePassword2" onclick="togglePassword('contra2', 'togglePassword2')">
            </div>
            <br><br>
            <span id="mensajeError"></span>
            <br>
            <input type="submit" id="Registrar" value="Registrar">
        </div>

        <div class="texto1">
            ¿Ya tienes cuenta?&nbsp;<a href="IniciarSesion.jsp" class="vinculo">Inicia sesión.</a>
        </div>

        <div class="space">
            .
        </div>
        
    </form>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/firebase/7.14.1-0/firebase.js"></script>
    <script src="./RegistrarseAd.js"></script>
    
</body>
</html>