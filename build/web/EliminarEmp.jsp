<%-- 
    Document   : EliminarEmp
    Created on : 27 nov. 2023, 00:44:32
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email = request.getParameter("Correo");

            Connection cnx = null;
            PreparedStatement sta = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");

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
