<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Menú Administrador</title>
    <style>
        body {
            background-color: #000000;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        header {
            background-color: #613382;
            color: #ffffff;
            text-align: center;
            padding: 15px 0;
        }

        nav {
            display: flex;
            justify-content: center;
            background-color: #613382;
            padding: 10px 0;
        }

        nav a {
            color: #ffffff;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: #8464a5;
        }

        section {
            padding: 20px;
            color: #ffffff;
        }

        h2 {
            color: #ffffff;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Menú Administrador</h1>
    </header>

    <nav>
        <a href="#">Inicio</a>
        <a href="#">Gestión de Usuarios</a>
        <a href="#">Informes</a>
        <a href="#">Cerrar Sesión</a>
    </nav>

    <section>
        <h2>Inicio</h2>
        <p>Bienvenido al sistema de gestión de GrapeWave. Aquí encontrarás las funciones principales para llevar a cabo tus tareas.</p>

        <!-- Secciones específicas para el rol de Administrador -->
        <h2>Gestión de Usuarios</h2>
        <ul>
            <li>Registrar Usuarios</li>
            <li>Modificar Información de Usuarios</li>
            <li>Dar de Baja Usuarios</li>
        </ul>

        <h2>Informes</h2>
        <ul>
            <li>Ver Informe de Inventario</li>
            <li>Ver Informe de Ventas</li>
            <li>Ver Informe de Gastos</li>
        </ul>
    </section>
</body>
</html>
