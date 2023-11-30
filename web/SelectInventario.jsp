<%-- 
    Document   : SelectInventario
    Created on : 29 nov. 2023, 18:56:13
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Limack</title>
    <link rel="stylesheet" href="SelectInventario.css">
</head>
<body>
    <div class="logo-container">
    <a href="index.html">
        <img src="LogoGRPWVE.png" alt="Logo" class="logo">
    </a>
    </div>
    
    <div class="decoration"></div>
    
    <div class="Titulo">
        Inventario
    </div>
    
    <a href="AddProd.jsp">
    <div class="btnAddProd">
        <img src="AddProd.png" class="agregar"><br><br>
        Agregar Productos
    </div>
    </a>
    
    <a href="Inventario.jsp">
    <div class="btnConsProd">
        <img src="ConsProd.png" class="consultar"><br><br>
        Consultar Productos
    </div>
    </a>
    
</body>
</html>


