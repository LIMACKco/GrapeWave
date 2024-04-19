<%-- 
    Document   : fetchDataInventario
    Created on : 29 nov. 2023, 16:43:02
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
Connection cnx = null;
PreparedStatement sta = null;
ResultSet rs = null;

try {
    // Establecer la conexión a la base de datos (ajusta los detalles según tu configuración)
    Class.forName("com.mysql.cj.jdbc.Driver");
<<<<<<< HEAD
    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");
=======
    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "1234");
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7

    // Consulta SQL para obtener todos los empleados
    String query = "select * from Productos";
    sta = cnx.prepareStatement(query);
    rs = sta.executeQuery();
%>
    <table id="employeeTable">
        <tr>
            <th class="data">Id Producto</th>
            <th class="data">Nombre Producto</th>
            <th class="data">Descripción</th>
            <th class="data">Categoría</th>
            <th class="data">Marca</th>
<<<<<<< HEAD
            <th class="data">Precio de Proveedor</th>
            <th class="data">Precio Público</th>
=======
            <th class="data">Precio</th>
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
            <th class="data">Stock</th>
            <th class="data">Lote</th>
            <th class="data">Ubicación</th>
            <th class="data">Editar</th>
            <th class="data">Eliminar</th>
            
        </tr>

        <%
            // Mostrar atributos y valores
            while (rs.next()) {
        %>
                <tr>
                    <td class="data"><%= rs.getInt("Id_Producto") %></td>
                    <td class="data"><%= rs.getString("Nombre_Producto") %></td>
                    <td class="data"><%= rs.getString("Descripción") %></td>
                    <td class="data"><%= rs.getString("Categoría") %></td>
                    <td class="data"><%= rs.getString("Marca") %></td>
<<<<<<< HEAD
                    <td class="data"><center>$ <%= rs.getInt("Precio_Proov") %></center></td>
                    <td class="data"><center>$ <%= rs.getInt("Precio_Pub") %></center></td>
                    <td class="data"><center><%= rs.getInt("Stock") %></center></td>
                    <td class="data"><%= rs.getString("Lote") %></td>
                    <td class="data"><%= rs.getString("Ubicación") %></td>
                    <td class="data">
                        <a href="ModProd.jsp?id=<%= rs.getInt("Id_Producto") %>">
=======
                    <td class="data"><%= rs.getInt("Precio") %></td>
                    <td class="data"><%= rs.getInt("Stock") %></td>
                    <td class="data"><%= rs.getString("Lote") %></td>
                    <td class="data"><%= rs.getString("Ubicación") %></td>
                    <td class="data">
                        <a href="editarProducto.jsp?id=<%= rs.getInt("Id_Producto") %>">
>>>>>>> 321f186049ddd467afa11a75ae4b39f0e32fcaa7
                            <img src="Edit.png" alt="Editar" width="50" height="50">
                        </a>
                    </td>
                    <td class="data">
                        <a href="eliminarProducto.jsp?id=<%= rs.getInt("Id_Producto") %>">
                            <img src="Delete.png" alt="Eliminar" width="50" height="50">
                        </a>
</td>
                </tr>
        <%
            }
        %>
    </table>
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
