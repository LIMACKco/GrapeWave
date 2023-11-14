<%-- 
    Document   : SignUp
    Created on : 13 nov. 2023, 17:23:26
    Author     : Aldo Gonzalez
--%>

<%@page import="org.apache.tomcat.dbcp.dbcp2.SQLExceptionList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@page import="java.sql.*" %>
        
        
        <%
            String nombre = request.getParameter("Nombre");
            String appat = request.getParameter("ApPat");
            String apmat = request.getParameter("ApMat");
            String telefono = request.getParameter("Telefono");
            String calle = request.getParameter("Calle");
            int numero = Integer.parseInt(request.getParameter("Numero"));
            String colonia = request.getParameter("Colonia");
            String municipio = request.getParameter("Municipio");
            String email = request.getParameter("Email");
            String contra = request.getParameter("Contrasenia");
            
            Connection cnx = null;//Variable de conexion
            PreparedStatement sta = null;//Variable de Statement
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");//Driver JDBC de MySQL  
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false","root","n0m3l0");
                //jdbc:mysql://localhost:Puerto/Nombre de la Base de Datos?autoReconnect=true&useSSL=false","user de MySQL","contraseña de MySQL"
                String ins = "insert into Usuarios(Nombre_Usuario, Ap_PatUser, Ap_MatUser, Telefono_Usuario, Calle_Usuario, Num_ExtUsuario, Colonia_Usuario, Municipio_Usuario, Correo_Usuario, contraseña) "
                + "values (?,?,?,?,?,?,?,?,?,?)";
                sta = cnx.prepareStatement(ins);//Crea el Statement
                sta.setString(1, nombre);
                sta.setString(2, appat);
                sta.setString(3, apmat);
                sta.setString(4, telefono);
                sta.setString(5, calle);
                sta.setInt(6, numero);
                sta.setString(7, colonia);
                sta.setString(8, municipio);
                sta.setString(9, email);
                sta.setString(10, contra);
                
                sta.executeUpdate();
                //sta.executeUpdate manda los Archivos a la Base de Datos
                sta.close();//Cierra el Statement           
                cnx.close();//Cierra la conexión
                
                response.sendRedirect("Acepta.jsp");
            }
            catch(SQLException e){
                out.println(e.toString());
            }
        %>
    </body>
</html>
