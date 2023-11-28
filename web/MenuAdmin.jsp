<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Menú Administrador</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: black;
            font-family: Arial, sans-serif;
            text-decoration: none;
        }

        header {
            background-color: #613382;
            color: #ffffff;
            text-align: center;
            padding: 15px 0;
        }

        .Titulo {
            font-size: 60px;
            position: fixed;
            top: 10%;
            left: 50%;
            transform: translateX(-50%);
            text-align: center;
            color: #ffffff;
        }

        .btnEmp, .btnInfo, .btnInv, .btnCons, .btnRetiros {
            border-radius: 20px;
            height: 30%;
            width: 16%;
            margin-top: 15%;
            position: absolute;
            justify-content: center;
            align-items: center;
            align-content: center;
            text-align: center;
            background-color: #ffffff;
            color: #000000;
            cursor: pointer;
        }

        .empleado, .informes, .inventario, .consultas, .retiros {
            margin-top: 20%;
            background-color: #ffffff;
            height: 48%;
            width: 48%;
        }

        .btnEmp {
            left: 2%;
        }

        .btnInfo {
            left: 22%;
        }

        .btnInv {
            left: 42%;
        }

        .btnCons {
            left: 62%;
        }

        .btnRetiros {
            left: 82%;
        }

        .decoration {
            position: absolute;
            top: 20%;
            left: 50%;
            transform: translateX(-50%);
            height: 0.2%;
            width: 30%;
            background-color: #ffffff;
        }
        
        h1 {
            font-size: 36px;
        }
    </style>
</head>
<body>
    <header>
        <br>
        <h1>Hola, <%=request.getParameter("nombre")%></h1>
    </header>

    <div class="Titulo"></div>

    <div class="btnEmp" onclick="redirectTo('GestionEmpleados.jsp')">
        <img src="empleado.png" class="empleado"><br><br>
        Gestion de Empleados
    </div>

    <div class="btnInfo" onclick="redirectTo('InformesAdmin.jsp')">
        <img src="Informes.png" class="informes"><br><br>
        Informes
    </div>

    <div class="btnInv" onclick="redirectTo('Inventario.jsp')">
        <img src="Inventario.png" class="inventario"><br><br>
        Inventario
    </div>

    <div class="btnCons" onclick="redirectTo('VentaProductos.jsp')">
        <img src="Consultas.png" class="consultas"><br><br>
        Venta de Productos
    </div>

    <div class="btnRetiros" onclick="redirectTo('Retiros.jsp')">
        <img src="Retiros.png" class="retiros"><br><br>
        Retiros
    </div>

    <div class="decoration"></div>

    <script>
        function redirectTo(url) {
            window.location.href = url;
        }
    </script>
</body>
</html>
