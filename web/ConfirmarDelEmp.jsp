<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Confirmar Eliminación</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: black;
            font-family: Arial, sans-serif;
            color: #ffffff;
            text-align: center;
        }

        .logo-container {
            position: absolute;
            top: 4%;
            left: -6%;
        }

        .logo {
            height: 20%;
            width: 20%;
        }

        .decoration {
            /* Estilo de la Barra horizontal */
            position: absolute; /* Posición absoluta para los rectángulos */
            top: 15%;
            left: 50%;
            transform: translateX(-50%);
            height: 0.2%; /* Altura del 100% para ocupar toda la altura de la página */
            width: 95%; /* Ancho del rectángulo */
            background-color: #ffffff;
            z-index: 0; /* Asegura que la barra horizontal esté detrás del logo */
        }
        
        .Titulo {
            font-size: 60px;
            position: absolute;
            top: 5%;
            left: 20%;
            transform: translateX(-50%);
            text-align: center;
            color: #ffffff;
        }

        h2 {
            font-size: 35px;
            margin-top: 40px; /* Cambiado a un valor absoluto */
            color: #ffffff;
        }

        table {
            width: 50%;
            margin: 20px auto;
            border-collapse: collapse;
            color: #ffffff;
        }

        th, td {
            border: 1px solid #ffffff;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #b8ff68;
        }

        td {
            background-color: #000000;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"] {
            font-size: 24px;
            padding: 20px 40px;
            background-color: #b8ff68;
            color: black;
            border: none;
            border-radius: 45px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin-right: 10px;
            cursor: pointer;
        }

        input[type="submit"]:hover{
            background-color: #9266cc;
            color: #ffffff;
        }
        
        .btn1 {
            position: absolute;
            left: 20%;
            bottom: 5%;  /* Ajusta la posición vertical según tus necesidades */
        }

        .btn2 {
            position: absolute;
            left: 70%;
            bottom: 5%;  /* Ajusta la posición vertical según tus necesidades */
        }

        input[type="hidden"] {
            display: none;
        }
        
        input[type="submit"]:last-child {
            margin-right: 0;
        }
    </style>
</head>
<body>
    
    <div class="logo-container">
        <a href="index.html">
            <img src="LogoGRPWVE.png" alt="Logo" class="logo">
        </a>
    </div>
        
    <div class="decoration"></div>
    
    <div class="Titulo">
        Eliminar Empleado
    </div>
    
    <br><br><br><br><br><br><br><br><br><br>

    <h2>Confirmar Eliminación del Empleado</h2>

    <%-- Recuperar los atributos de solicitud --%>
    <% int idEmp = (int)request.getAttribute("IdEmp"); %>
    <% String nombreEmp = (String)request.getAttribute("NombreEmp"); %>
    <% String apPatEmp = (String)request.getAttribute("ApPatEmp"); %>
    <% String apMatEmp = (String)request.getAttribute("ApMatEmp"); %>
    <% long telefonoEmp = (long)request.getAttribute("TelefonoEmp"); %>
    <% String calleEmp = (String)request.getAttribute("CalleEmp"); %>
    <% int numExtEmp = (int)request.getAttribute("NumExtEmp"); %>
    <% String coloniaEmp = (String)request.getAttribute("ColoniaEmp"); %>
    <% String municipioEmp = (String)request.getAttribute("MunicipioEmp"); %>
    <% String estadoEmp = (String)request.getAttribute("EstadoEmp"); %>
    <% String correoEmp = (String)request.getAttribute("CorreoEmp"); %>
    <% String contraseñaEmp = (String)request.getAttribute("ContraseñaEmp"); %>

<table>
        <tr>
            <th>Atributo</th>
            <th>Valor</th>
        </tr>
        <tr>
            <td>ID</td>
            <td><%= idEmp %></td>
        </tr>
        <tr>
            <td>Nombre</td>
            <td><%= nombreEmp %></td>
        </tr>
        <tr>
            <td>Apellido Paterno</td>
            <td><%= apPatEmp %></td>
        </tr>
        <tr>
            <td>Apellido Materno</td>
            <td><%= apMatEmp %></td>
        </tr>
        <tr>
            <td>Teléfono</td>
            <td><%= telefonoEmp %></td>
        </tr>
        <tr>
            <td>Calle</td>
            <td><%= calleEmp %></td>
        </tr>
        <tr>
            <td>Número Exterior</td>
            <td><%= numExtEmp %></td>
        </tr>
        <tr>
            <td>Colonia</td>
            <td><%= coloniaEmp %></td>
        </tr>
        <tr>
            <td>Municipio</td>
            <td><%= municipioEmp %></td>
        </tr>
        <tr>
            <td>Estado</td>
            <td><%= estadoEmp %></td>
        </tr>
        <tr>
            <td>Correo</td>
            <td><%= correoEmp %></td>
        </tr>
    </table>

    <form action="EliminarEmp.jsp" method="post">
        <input type="hidden" name="Correo" value="<%= correoEmp %>">
        <br><br>
        <input type="submit" value="Confirmar Eliminación" class="btn1">
    </form>

    <form action="DelEmp.jsp" method="post">
        <input type="submit" value="Cancelar Eliminación" class="btn2">
    </form>
</body>
</html>
