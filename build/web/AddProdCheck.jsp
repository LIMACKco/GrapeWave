<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*, java.nio.file.*, java.nio.file.attribute.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>AddProdCheck</title>
</head>
<body>

<%
    // Obtener parámetros del formulario
    String nombre = request.getParameter("Nombre_Producto");
    String descripcion = request.getParameter("Descripcion");
    String categoria = request.getParameter("Categoria");
    String marca = request.getParameter("Marca");
<<<<<<< HEAD
    int precio_proov = Integer.parseInt(request.getParameter("Precio_Proov"));
    int precio_pub = Integer.parseInt(request.getParameter("Precio_Pub"));
=======
    int precio = Integer.parseInt(request.getParameter("Precio"));
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
    int stock = Integer.parseInt(request.getParameter("Stock"));
    String lote = request.getParameter("Lote");
    String ubicacion = request.getParameter("Ubicacion");

    // Conectar a la base de datos y realizar la inserción
    Connection cnx = null;
    PreparedStatement sta = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
<<<<<<< HEAD
        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");
        String query = "insert into Productos(Nombre_Producto, Descripción, Categoría, Marca, Precio_Proov, Precio_Pub, Stock, Lote, Ubicación) values (?, ?, ?, ?, ?, ?, ?, ?)";
=======
        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "1234");
        String query = "insert into Productos(Nombre_Producto, Descripción, Categoría, Marca, Precio, Stock, Lote, Ubicación) values (?, ?, ?, ?, ?, ?, ?, ?)";
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
        sta = cnx.prepareStatement(query);
        sta.setString(1, nombre);
        sta.setString(2, descripcion);
        sta.setString(3, categoria);
        sta.setString(4, marca);
<<<<<<< HEAD
        sta.setInt(5,precio_proov);
        sta.setInt(6,precio_proov);
        sta.setInt(7, stock);
        sta.setString(8, lote);
        sta.setString(9, ubicacion);
=======
        sta.setInt(5,precio);
        sta.setInt(6, stock);
        sta.setString(7, lote);
        sta.setString(8, ubicacion);
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7

        sta.executeUpdate();

        // Redireccionar a la página de confirmación o cualquier otra lógica después de la inserción
        response.sendRedirect("AddProdVerified.jsp");
    } catch (SQLException | ClassNotFoundException e) {
        // Manejar excepciones
        out.println(e.toString());
    } finally {
        // Cerrar recursos
        try {
            if (sta != null) sta.close();
            if (cnx != null) cnx.close();
        } catch (SQLException e) {
            // Manejar excepciones al cerrar recursos
            out.println(e.toString());
        }
    }
%>

</body>
</html>
