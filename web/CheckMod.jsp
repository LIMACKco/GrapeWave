<%-- 
    Document   : CheckMod
    Created on : 7 abr 2024, 9:45:49 p.m.
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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

    // Obtener los nuevos datos del formulario
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
    ResultSet rs = null;

    try {
        // Establecer la conexión a la base de datos (ajusta los detalles según tu configuración)
        Class.forName("com.mysql.cj.jdbc.Driver");
        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");

        // Consulta SQL para obtener los datos antiguos del producto
        String query = "SELECT * FROM Productos WHERE Id_Producto = ?";
        sta = cnx.prepareStatement(query);
        sta.setInt(1, idProducto);
        rs = sta.executeQuery();

        if (rs.next()) {
            String antiguoNombre = rs.getString("Nombre_Producto");
            String antiguaDescripcion = rs.getString("Descripción");
            String antiguaCategoria = rs.getString("Categoría");
            String antiguaMarca = rs.getString("Marca");
            double antiguoPrecioProov = rs.getDouble("Precio_Proov");
            double antiguoPrecioPub = rs.getDouble("Precio_Pub");
            int antiguoStock = rs.getInt("Stock");
            String antiguoLote = rs.getString("Lote");
            String antiguaUbicacion = rs.getString("Ubicación");
%>
<h2>Confirmación de modificación</h2>
<h3>Datos antiguos:</h3>
<p>Nombre del Producto: <%= antiguoNombre %></p>
<p>Descripción: <%= antiguaDescripcion %></p>
<p>Categoría: <%= antiguaCategoria %></p>
<p>Marca: <%= antiguaMarca %></p>
<p>Precio de Proveedor: $<%= antiguoPrecioProov %></p>
<p>Precio Público: $<%= antiguoPrecioPub %></p>
<p>Stock: <%= antiguoStock %></p>
<p>Lote: <%= antiguoLote %></p>
<p>Ubicación: <%= antiguaUbicacion %></p>

<h3>Nuevos datos:</h3>
<p>Nombre del Producto: <%= nuevoNombre %></p>
<p>Descripción: <%= nuevaDescripcion %></p>
<p>Categoría: <%= nuevaCategoria %></p>
<p>Marca: <%= nuevaMarca %></p>
<p>Precio de Proveedor: $<%= nuevoPrecioProov %></p>
<p>Precio Público: $<%= nuevoPrecioPub %></p>
<p>Stock: <%= nuevoStock %></p>
<p>Lote: <%= nuevoLote %></p>
<p>Ubicación: <%= nuevaUbicacion %></p>

<form action="ConfirmarMod.jsp" method="post">
    <input type="hidden" name="idProducto" value="<%= idProducto %>">
    <input type="hidden" name="Nombre_Producto" value="<%= nuevoNombre %>">
    <input type="hidden" name="Descripción" value="<%= nuevaDescripcion %>">
    <input type="hidden" name="Categoría" value="<%= nuevaCategoria %>">
    <input type="hidden" name="Marca" value="<%= nuevaMarca %>">
    <input type="hidden" name="Precio_Proov" value="<%= nuevoPrecioProov %>">
    <input type="hidden" name="Precio_Pub" value="<%= nuevoPrecioPub %>">
    <input type="hidden" name="Stock" value="<%= nuevoStock %>">
    <input type="hidden" name="Lote" value="<%= nuevoLote %>">
    <input type="hidden" name="Ubicación" value="<%= nuevaUbicacion %>">
    <button type="submit">Aceptar</button>
</form>
<%
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
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
