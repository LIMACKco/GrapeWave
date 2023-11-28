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

        .logo {
            position: relative;
            width: 10%;
            height: 10%;
            margin-top: 1%;
            z-index: 1; /* Agregado para que el logo esté sobre la barra horizontal */
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

        input[type="submit"]:last-child {
            margin-right: 0;
        }

        input[type="hidden"] {
            display: none;
        }
    </style>
</head>
<body>
    
    <img src="LogoGRPWVE.png" class="logo">
    
    <div class="decoration"></div>

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
        <tr>
            <td>Contraseña</td>
            <td><%= contraseñaEmp %></td>
        </tr>
    </table>

    <form action="EliminarEmp.jsp" method="post">
        <input type="hidden" name="Correo" value="<%= correoEmp %>">
        <br><br>
        <input type="submit" value="Confirmar Eliminación">
    </form>

    <form action="CancelarEliminacion.jsp">
        <input type="submit" value="Cancelar Eliminación">
    </form>
</body>
</html>
