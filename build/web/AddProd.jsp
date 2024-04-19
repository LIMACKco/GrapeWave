<%-- 
    Document   : AddProd
    Created on : 29 nov. 2023, 19:13:24
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alta de Productos</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: black;
            font-family: Arial, sans-serif;
            color: white;
        }

        .logo-container {
            position: fixed;
            top: 10px;
            left: 20px;
        }

        .logo {
            max-width: 20%;
            height: auto;
        }

        .Titulo {
            font-size: 60px;
            text-align: center;
            margin-top: 50px;
        }

        .form {
            width: 50%;
            margin: 0 auto;
            margin-top: 30px;
        }

        .campo {
            font-size: 35px;
            border-radius: 30px;
            border: none;
            box-sizing: border-box; /* Esto asegura que el ancho incluya el relleno y el borde */
            display: block;
            margin: 10px auto; /* Añadido para centrar verticalmente */
        }

        .campo:focus {
            background-color: #000000;
            color: #ffffff;
        }

        /* Aumenta la altura del campo de descripción */
        textarea {
            height: 150px; /* Puedes ajustar este valor según tus necesidades */
        }

        input[type="submit"] {
            font-size: 24px;
            background-color: #b8ff68;
            padding: 20px 40px;
            color: black;
            border: none;
            border-radius: 45px;
            text-decoration: none;
            display: block;
            margin: 0 auto;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #9266cc;
            color: #ffffff;
        }

    </style>
</head>

<body>
    <div class="logo-container">
        <img src="LogoGRPWVE.png" alt="Logo" class="logo">
    </div>

    <div class="Titulo">
        Alta de Productos
    </div>

    <div class="form">
        <form action="AddProdCheck.jsp" method="post">
            <input type="text" class="campo" placeholder="Nombre del Producto" name="Nombre_Producto" required>
            <br><br>
            <input type="text" class="campo" placeholder="Descripción" name="Descripcion" required >
            <br><br>
            <input type="text" class="campo" placeholder="Categoría" name="Categoria" required>
            <br><br>
            <input type="text" class="campo" placeholder="Marca" name="Marca" required>
            <br><br>
<<<<<<< HEAD
            <input type="number" class="campo" placeholder="Precio Proovedor" name="Precio_Proov" step="0.01" required min="1" >
            <br><br>
            <input type="number" class="campo" placeholder="Precio Público" name="Precio_Pub" step="0.01" required min="1" >
=======
            <input type="number" class="campo" placeholder="Precio" name="Precio" step="0.01" required min="1" >
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
            <br><br>
            <input type="number" class="campo" placeholder="Stock" name="Stock" required min="0">
            <br><br>
            <input type="text" class="campo" placeholder="Lote" name="Lote" required>
            <br><br>
            <input type="text" class="campo" placeholder="Ubicación" name="Ubicacion" required>
            <br><br>
            <input type="submit" name="Registrar" value="Registrar">
        </form>
    </div>
</body>

</html>

