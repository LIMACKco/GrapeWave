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
            int telefono = Integer.parseInt(request.getParameter("Telefono"));
            String calle = request.getParameter("Calle");
            int numero = Integer.parseInt(request.getParameter("Numero"));
            String colonia = request.getParameter("Colonia");
            String municipio = request.getParameter("Municipio");
            String email = request.getParameter("Email");
            String contra = request.getParameter("Contrasenia");
            
            Connection cnx = null;//Variable de conexion
            Statement sta = null;//Variable de Statement
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");//Driver JDBC de MySQL  
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false","root","n0m3l0");
                //jdbc:mysql://localhost:Puerto/Nombre de la Base de Datos?autoReconnect=true&useSSL=false","user de MySQL","contraseña de MySQL"
                sta = cnx.createStatement();//Crea el Statement
                sta.executeUpdate("insert into Empleados(Nombre_Empleado, Ap_PatEmp, Ap_MatEmp, Telefono_Empleado, Calle_Empleado, Num_Empleado, Colonia_Empleado, Municipio_Empleado, Correo_Empleado, contrasenia) "
                + "values('"+nombre+"','"+appat+"','"+apmat+"','"+telefono+"','"+calle+"','"+numero+"','"+colonia+"','"+municipio+"','"+email+"','"+contra+"'); ");//executeUpdate sirve para modificar valores 
                //sta.executeUpdate("insert into Nombre de la tabla(columna n) values('"+valor n+"'); ");
                out.print("<script>mensaje();</script");
                sta.close();//Cierra el Statement           
                cnx.close();//Cierra la conexión
                
                 response.sendRedirect("Verificada.jsp");
            }
            catch(SQLException e){
            out.println(e.toString());
            }
        %>
    </body>
</html>
