<%-- 
    Document   : ModProd
    Created on : 7 abr 2024, 9:21:56 p.m.
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
        <%
    int idProducto = Integer.parseInt(request.getParameter("id"));
    
    Connection cnx = null;
    PreparedStatement sta = null;
    ResultSet rs = null;

    try {
        // Establecer la conexión a la base de datos (ajusta los detalles según tu configuración)
        Class.forName("com.mysql.cj.jdbc.Driver");
        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");

        // Consulta SQL para obtener los datos actuales del producto
        String query = "SELECT * FROM Productos WHERE Id_Producto = ?";
        sta = cnx.prepareStatement(query);
        sta.setInt(1, idProducto);
        rs = sta.executeQuery();

        if (rs.next()) {
            String nombreProducto = rs.getString("Nombre_Producto");
            String descripcion = rs.getString("Descripción");
            String categoria = rs.getString("Categoría");
            String marca = rs.getString("Marca");
            double precioProov = rs.getDouble("Precio_Proov");
            double precioPub = rs.getDouble("Precio_Pub");
            int stock = rs.getInt("Stock");
            String lote = rs.getString("Lote");
            String ubicacion = rs.getString("Ubicación");
        }
            }
    
%>
        
        <form action="CheckMod.jsp" method="post">
            <!-- Campos del formulario precargados con los datos actuales -->
        <input type="hidden" name="Id_Producto" value="<%= idProducto %>">
        <br><br>
        <input type="text" class="campo" placeholder="Nombre del Producto" name="Nombre_Producto" value="<%= nombreProducto %>">
        <br><br>
        <input type="text" class="campo" placeholder="Descripción" name="Descripción" value="<%= descripcion %>">
        <br><br>
        <input type="text" class="campo" placeholder="Categoría" name="Categoría" value="<%= categoria %>">
        <br><br>
        <input type="text" class="campo" placeholder="Marca" name="Marca" value="<%= marca %>" required>
        <br><br>
        <input type="number" class="campo" placeholder="Precio Proovedor" name="Precio_Proov" value="<%= precioProov %>" step="0.01" min="1">
        <br><br>
        <input type="number" class="campo" placeholder="Precio Público" name="Precio_Pub" value="<%= precioPub %>" step="0.01" min="1">
        <br><br>
        <input type="number" class="campo" placeholder="Stock" name="Stock" value="<%= stock %>" min="0">
        <br><br>
        <input type="text" class="campo" placeholder="Lote" name="Lote" value="<%= lote %>">
        <br><br>
        <input type="text" class="campo" placeholder="Ubicación" name="Ubicación" value="<%= ubicacion %>">
        <br><br>

        <button type="submit">Modificar</button>

</form>
        
<%
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
