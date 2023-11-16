<%-- 
    Document   : LoginEmp
    Created on : 15 nov. 2023, 19:32:30
    Author     : Aldo Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Check</title>
    </head>
    <body>
        
        <%@page import="java.io.PrintWriter" %>
        <%@page import="java.util.*" %>
        
        <%
            String email = request.getParameter("Email");
            String contra = request.getParameter("Contrasena");
            
            Connection cnx = null;
            PreparedStatement sta = null;
            ResultSet rs = null;
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false","root","n0m3l0");
                
                String query = "select * from Usuarios where Correo_Usuario = ? and contraseña = ?";
                sta = cnx.prepareStatement(query);
                sta.setString(1, email);
                sta.setString(2, contra);
                
                rs = sta.executeQuery();
                
                if(rs.next()) {
                    // Usuario y contraseña válidos
                    response.sendRedirect("Bienvenido.jsp");
                } 
                else {
                    // Usuario o contraseña incorrectos
                    response.sendRedirect("ErrorLoginEmp.jsp");
                }
                
                sta.close();
                cnx.close();
            }
            catch(SQLException e){
                out.println(e.toString());
            }
        %>
        
    </body>
</html>

