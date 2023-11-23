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
	body{
    	background-color: #000000;
    	margin: 0;
	}

	.morado{
    	position: absolute;
    	background-color: #613382;
    	width: 100%;
    	height: 50%;
	}

	.circulo{
    	position: fixed;
    	width: 300px;
    	height: 300px;
    	background-color: #ffffff;
    	border-radius: 50%;
    	top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
	}

	.foto{
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

	.texto{
        font-size: 70px;
        position: fixed;
        top: 70%; /* Ajusta la posición vertical según sea necesario */
        left: 50%;
        transform: translateX(-50%);
        text-align: center;
        color: #ffffff;
        font-family: Arial, sans-serif;
	}
        
	.texto1{
        font-size: 70px;
        position: fixed;
        top: 20%; /* Ajusta la posición vertical según sea necesario */
        left: 50%;
        transform: translateX(-50%);
        text-align: center;
        color: #ffffff;
        font-family: Arial, sans-serif;
	}

	</style>
</head>
<body>
	<div class="morado"></div>
        <div class="texto1"><%= request.getParameter("nombre") %></div>
	<div class="circulo"></div>
	<div class="foto"></div>
	<div class="texto">Bienvenido a GrapeWave</div>

</body>
</html>

