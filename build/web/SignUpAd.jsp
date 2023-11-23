<%-- 
    Document   : SignUpAd
    Created on : 21 nov. 2023, 13:14:41
    Author     : Alumno
--%>

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
            String estado = request.getParameter("Estado");
            String email = request.getParameter("Email");
            String codigo = request.getParameter("Codigo");
            String contra = request.getParameter("Contrasenia");
            
            Connection cnx = null;//Variable de conexion
            PreparedStatement sta = null;//Variable de Statement
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");//Driver JDBC de MySQL  
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false","root","n0m3l0");
                //jdbc:mysql://localhost:Puerto/Nombre de la Base de Datos?autoReconnect=true&useSSL=false","user de MySQL","contraseña de MySQL"
                String ins = "insert into Administrador(Nombre_Admin, Ap_PatAdmin, Ap_MatAdmin, Teléfono_Admin, Calle_Admin, Num_ExtAdmin, Colonia_Admin, Municipio_Admin, Estado_Admin, Correo_Admin, contraseña) "
                + "values (?,?,?,?,?,?,?,?,?,?,?)";
                sta = cnx.prepareStatement(ins);//Crea el Statement
                sta.setString(1, nombre);
                sta.setString(2, appat);
                sta.setString(3, apmat);
                sta.setInt(4, telefono);
                sta.setString(5, calle);
                sta.setInt(6, numero);
                sta.setString(7, colonia);
                sta.setString(8, municipio);
                sta.setString(9, estado);
                sta.setString(10, email);
                sta.setString(11, contra);
                
                sta.executeUpdate();
                //sta.executeUpdate manda los Archivos a la Base de Datos
                sta.close();//Cierra el Statement           
                cnx.close();//Cierra la conexión
                
                response.sendRedirect("SignUpAdCheck.jsp");
            }
            catch(SQLException e){
                out.println(e.toString());
            }
        %>
    </body>
</html>
