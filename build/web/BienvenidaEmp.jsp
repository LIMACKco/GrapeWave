<%-- 
    Document   : Bienvenida
    Created on : 22 nov. 2023, 23:00:27
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bienvenido</title>
    <style>
        body {
            background-color: #000000;
            margin: 0;
        }

        .morado {
            position: absolute;
            background-color: #613382;
            width: 100%;
            height: 50%;
        }

        .circulo {
            position: fixed;
            width: 300px;
            height: 300px;
            background-color: #ffffff;
            border-radius: 50%;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .foto {
            position: fixed;
            width: 280px;
            height: 280px;
            background-image: url(64572.png);
            background-size: cover;
            border-radius: 50%;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .texto {
            font-size: 70px;
            position: fixed;
            top: 70%;
            left: 50%;
            transform: translateX(-50%);
            text-align: center;
            color: #ffffff;
            font-family: Arial, sans-serif;
        }

        .texto1 {
            font-size: 70px;
            position: fixed;
            top: 20%;
            left: 50%;
            transform: translateX(-50%);
            text-align: center;
            color: #ffffff;
            font-family: Arial, sans-serif;
        }

        .barra-de-carga {
            position: fixed;
            bottom: 5%; /* Ajusta la posición vertical de la barra de carga */
            left: 50%;
            transform: translateX(-50%);
            width: 50%; /* Ancho de la barra de carga */
            height: 10px;
            background-color: #fff; /* Color de fondo de la barra de carga */
        }

        .barra-de-progreso {
            height: 100%;
            width: 0;
            background-color: #b8ff68; /* Color de la barra de progreso */
        }
    </style>
</head>
<body>
    <div class="morado"></div>
    <div class="texto1"><%= request.getParameter("nombre") %></div>
    <div class="circulo"></div>
    <div class="foto"></div>
    <div class="texto">Bienvenido a GrapeWave</div>

    <!-- Barra de carga -->
    <div class="barra-de-carga">
        <div class="barra-de-progreso" id="barra-de-progreso"></div>
    </div>

    <script>
        // Simular el progreso de la barra de carga
        function simularProgreso() {
            var barraDeProgreso = document.getElementById('barra-de-progreso');
            var progreso = 0;
            var intervalo = setInterval(function() {
                if (progreso >= 100) {
                    clearInterval(intervalo);
                    // Redirigir a otra pantalla cuando la barra esté completa
                    window.location.href = 'MenuEmp.jsp';
                } else {
                    progreso++;
                    barraDeProgreso.style.width = progreso + '%';
                }
            }, 20); // Ajusta la velocidad de la barra de carga
        }

        // Llama a la función de simulación cuando la página está completamente cargada
        window.onload = function() {
            simularProgreso();
        };
    </script>
</body>
</html>
