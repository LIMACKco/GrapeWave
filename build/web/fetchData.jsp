<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
Connection cnx = null;
PreparedStatement sta = null;
ResultSet rs = null;

try {
    // Establecer la conexión a la base de datos (ajusta los detalles según tu configuración)
    Class.forName("com.mysql.cj.jdbc.Driver");
    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "1234");

    // Consulta SQL para obtener todos los empleados
    String query = "select * from Empleados";
    sta = cnx.prepareStatement(query);
    rs = sta.executeQuery();
%>
    <table id="employeeTable">
        <tr>
            <th class="data">Id Empleado</th>
            <th class="data">Nombre Empleado</th>
            <th class="data">Apellido Paterno</th>
            <th class="data">Apellido Materno</th>
            <th class="data">Teléfono</th>
            <th class="data">Calle</th>
            <th class="data">Número Exterior</th>
            <th class="data">Colonia</th>
            <th class="data">Municipio</th>
            <th class="data">Estado</th>
            <th class="data">Correo</th>
        </tr>

        <%
            // Mostrar atributos y valores
            while (rs.next()) {
        %>
                <tr>
                    <td class="data"><%= rs.getInt("Id_Empleado") %></td>
                    <td class="data"><%= rs.getString("Nombre_Empleado") %></td>
                    <td class="data"><%= rs.getString("Ap_PatEmp") %></td>
                    <td class="data"><%= rs.getString("Ap_MatEmp") %></td>
                    <td class="data"><%= rs.getLong("Telefono_Empleado") %></td>
                    <td class="data"><%= rs.getString("Calle_Empleado") %></td>
                    <td class="data"><%= rs.getInt("Num_ExtEmpleado") %></td>
                    <td class="data"><%= rs.getString("Colonia_Empleado") %></td>
                    <td class="data"><%= rs.getString("Municipio_Empleado") %></td>
                    <td class="data"><%= rs.getString("Estado_Empleado") %></td>
                    <td class="data"><%= rs.getString("Correo_Empleado") %></td>
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
