<%-- 
    Document   : Signup
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
        <%@page import="Conexión.Conexion"%>
        <%
            String nombre = request.getParameter("Nombre");
            String appat = request.getParameter("ApPat");
            String apmat = request.getParameter("ApMat");
            long telefono = Long.parseLong(request.getParameter("Telefono"));/*Se usa long por la extensión del numero, 
            no se puede usar un int porque es demasiado grande*/
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
                cnx = Conexion.obtenerConexion( Conexion.isLocalHost( request ) );
                String query = "insert into Empleados(Nombre_Empleado, Ap_PatEmp, Ap_MatEmp, Telefono_Empleado, Calle_Empleado, Num_ExtEmpleado, Colonia_Empleado, Municipio_Empleado, Estado_Empleado, Correo_Empleado, contraseña) "
                + "values (?,?,?,?,?,?,?,?,?,?,?)";
                sta = cnx.prepareStatement(query);//Crea el Statement
                sta.setString(1, nombre);
                sta.setString(2, appat);
                sta.setString(3, apmat);
                sta.setLong(4, telefono);
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
                
                response.sendRedirect("SignUpEmpCheck.jsp");
            }
            catch(SQLException e){
                out.println(e.toString());
            }
        %>
    </body>
</html>
