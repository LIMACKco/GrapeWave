<%-- 
    Document   : ConfirmarMod
    Created on : 7 abr 2024, 9:48:45 p.m.
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@ page import="java.sql.*" %>
<%
    int idProducto = Integer.parseInt(request.getParameter("idProducto"));
    String nuevoNombre = request.getParameter("Nombre_Producto");
    String nuevaDescripcion = request.getParameter("Descripción");
    String nuevaCategoria = request.getParameter("Categoría");
    String nuevaMarca = request.getParameter("Marca");
    double nuevoPrecioProov = Double.parseDouble(request.getParameter("Precio_Proov"));
    double nuevoPrecioPub = Double.parseDouble(request.getParameter("Precio_Pub"));
    int nuevoStock = Integer.parseInt(request.getParameter("Stock"));
    String nuevoLote = request.getParameter("Lote");
    String nuevaUbicacion = request.getParameter("Ubicación");

    Connection cnx = null;
    PreparedStatement sta = null;

    try {
        // Establecer la conexión a la base de datos (ajusta los detalles según tu configuración)
        Class.forName("com.mysql.cj.jdbc.Driver");
        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");

        // Consulta SQL para actualizar los datos del producto
        String query = "UPDATE Productos SET Nombre_Producto = ?, Descripción = ?, Categoría = ?, Marca = ?, Precio_Proov = ?, Precio_Pub = ?, Stock = ?, Lote = ?, Ubicación = ? WHERE Id_Producto = ?";
        sta = cnx.prepareStatement(query);
        sta.setString(1, nuevoNombre);
        sta.setString(2, nuevaDescripcion);
        sta.setString(3, nuevaCategoria);
        sta.setString(4, nuevaMarca);
        sta.setDouble(5, nuevoPrecioProov);
        sta.setDouble(6, nuevoPrecioPub);
        sta.setInt(7, nuevoStock);
        sta.setString(8, nuevoLote);
        sta.setString(9, nuevaUbicacion);
        sta.setInt(10, idProducto);

        int filasActualizadas = sta.executeUpdate();

        if (filasActualizadas > 0) {
            // Redirigir a la página principal o mostrar un mensaje de éxito
            response.sendRedirect("inventario.jsp");
        } else {
            // Mostrar un mensaje de error
            out.println("No se pudo actualizar el producto.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        try {
            if (sta != null) {
                sta.close();
            }
            if (cnx != null) {
                cnx.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
    </body>
</html>
