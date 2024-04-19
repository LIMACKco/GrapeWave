<%-- 
    Document   : Registrarse
    Created on : 6 nov. 2023, 20:13:57
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    
    <div>
        <a href="SelectPerfil.jsp">
            <img src="LogoGRPWVE.png" alt="Logo" class="logo">
        </a>
    </div>
    
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
        <input type="submit" name="Registrar" value="Registrar" class="btn">
    </div>
    
    <div class="texto1">
        ¿Ya tienes cuenta?&nbsp;<a href="IniciarSesion.jsp" class="vinculo">Inicia sesión.</a>
    </div>
    
    <div class="space">
        .
    </div>
    
    </form>
</body>
</html>