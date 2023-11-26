<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Menú Empleado</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: black;
            font-family: Arial, sans-serif;
            text-decoration: none;
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

        .btnEmp {
            border-radius: 20px;
            height: 30%;
            width: 16%;
            margin-top: 17%;
            position: absolute;
            justify-content: center;
            align-items: center;
            align-content: center;
            text-align: center;
            left: 13%;
            background-color: #ffffff;
            color: #000000;
        }

        .empleado {
            margin-top: 20%;
            background-color: #ffffff;
            height: 48%;
            width: 48%;
        }

        .btnInfo {
            border-radius: 20px;
            height: 30%;
            width: 16%;
            margin-top: 17%;
            position: absolute;
            justify-content: center;
            align-items: center;
            align-content: center;
            text-align: center;
            left: 33%;
            background-color: #ffffff;
            color: #000000;
        }

        .informes {
            margin-top: 20%;
            background-color: #ffffff;
            height: 48%;
            width: 48%;
        }

        .btnInv {
            border-radius: 20px;
            height: 30%;
            width: 16%;
            margin-top: 17%;
            position: absolute;
            justify-content: center;
            align-items: center;
            align-content: center;
            text-align: center;
            left: 53%;
            background-color: #ffffff;
            color: #000000;
        }

        .inventario {
            margin-top: 20%;
            background-color: #ffffff;
            height: 48%;
            width: 48%;
        }

        .btnCons {
            border-radius: 20px;
            height: 30%;
            width: 16%;
            margin-top: 17%;
            position: absolute;
            justify-content: center;
            align-items: center;
            align-content: center;
            text-align: center;
            left: 73%;
            background-color: #ffffff;
            color: #000000;
        }

        .consultas {
            margin-top: 20%;
            background-color: #ffffff;
            height: 48%;
            width: 48%;
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
    </style>
</head>
<body>
    <div class="Titulo">Empleado</div>

    <a href="#">
        <div class="btnEmp">
            <img src="../Visuals/empleado.png" class="empleado"><br><br>
            Empleados
        </div>
    </a>

    <a href="#">
        <div class="btnInfo">
            <img src="../Visuals/Informes.png" class="informes"><br><br>
            Informes
        </div>
    </a>

    <a href="#">
        <div class="btnInv">
            <img src="../Visuals/Inventario.png" class="inventario"><br><br>
            Inventario
        </div>
    </a>

    <a href="#">
        <div class="btnCons">
            <img src="../Visuals/Consultas.png" class="consultas"><br><br>
            Consultas
        </div>
    </a>

    <div class="decoration"></div>
</body>
</html>
