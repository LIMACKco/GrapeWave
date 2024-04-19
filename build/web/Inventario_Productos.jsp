<%-- 
    Document   : Inventario
    Created on : 29 nov. 2023, 16:35:46
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Consulta de Productos</title>
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
            left: 50%;
            transform: translateX(-50%);
            text-align: center;
            color: #ffffff;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            color: #ffffff;
        }

        th, td {
            border: 1px solid #ffffff;
            padding: 10px;
            text-align: left;
            white-space: nowrap; /* Evita que el texto se ajuste automáticamente a una nueva línea */
        }

        th {
            background-color: #9266cc;
        }

        td {
            background-color: #000000;
        }

        .data {
            text-align: left;
        }
        
        .search-container {
            margin-top: 20px;
        }
        
        .campo{
            font-size: 35px;
            border-radius: 30px;
            border: none;
        }
        
        .campo:focus {
            background-color: #000000;
            color: #ffffff;
        }
    </style>
    
    <script>
        function searchEmployee() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("employeeTable");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { // Comienza desde 1 para omitir la fila de encabezado
                var found = false;

                for (var j = 1; j < tr[i].cells.length; j++) {
                    td = tr[i].getElementsByTagName("td")[j];

                    if (td) {
                        txtValue = td.textContent || td.innerText;

                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            found = true;
                            break; // Sale del bucle interno si se encuentra un resultado positivo
                        }
                    }
                }

                if (found) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }

        function fetchData() {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {
                    // Crear elementos de la tabla dinámicamente
                    var newTable = document.createElement("table");
                    newTable.id = "employeeTable";

                    // Agregar estilos a la nueva tabla
                    newTable.style.width = "80%";
                    newTable.style.margin = "20px auto";
                    newTable.style.borderCollapse = "collapse";
                    newTable.style.color = "#ffffff";

                    // Obtener el contenedor de la tabla existente
                    var tableContainer = document.getElementById("tableContainer");
                    tableContainer.innerHTML = ""; // Limpiar el contenedor

                    // Agregar la nueva tabla al contenedor
                    tableContainer.appendChild(newTable);

                    // Agregar los datos obtenidos
                    newTable.innerHTML = this.responseText;
                }
            };
            xmlhttp.open("GET", "fetchDataInventario.jsp", true);
            xmlhttp.send();
        }

        window.onload = function () {
            fetchData();
        };
    </script>
    
</head>
<body>

    <div class="logo-container">
        <a href="index.html">
            <img src="LogoGRPWVE.png" alt="Logo" class="logo">
        </a>
    </div>

    <div class="decoration"></div>

    <div class="Titulo">
        Consulta de Productos
    </div>

    <br><br><br><br><br><br><br><br><br>
    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="searchEmployee()" class="campo" placeholder="Buscar...">
    </div>
    <br><br><br><br>
    
    <div id="tableContainer"></div>

</body>
</html>
