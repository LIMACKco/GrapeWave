<%-- 
    Document   : EliminarEmp
    Created on : 27 nov. 2023, 00:44:32
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Conexión.Conexion" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email = request.getParameter("correoEmp");

            Connection cnx = null;
            PreparedStatement sta = null;

        try {
            cnx = Conexion.obtenerConexion( Conexion.isLocalHost( request ) );

            String nombreUsuario = null;

            // Verificar en la tabla Empleados
            String Query = "delete from Empleados where Correo_Empleado = ? ";
            sta = cnx.prepareStatement(Query);
            sta.setString(1, email);
            sta.executeUpdate();
            response.sendRedirect("DelEmpVerified.jsp");
            
            sta.close();
            cnx.close();       
        }
        catch(SQLException e) {
            out.println(e.toString());
        }
        
%>
    </body>
</html>
