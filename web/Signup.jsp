<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" name="viewport">
    <title>JSP Page</title>
</head>
<script>
    function mensaje(){
        alert("RSegistro dado de alta");
    }
</script>
<body>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        String contrasenia = request.getParameter("Contrasenia");

        Connection cnx = null;
        Statement sta = null;

        try {
            // Cargar el controlador de la base de datos (Driver)
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false","root","n0m3l0");
            sta = cnx.createStatement();
            sta.executeUpdate("insert into Empleados(Nombre_Empleado, Ap_PatEmp, Ap_MatEmp, Telefono_Empleado, Calle_Empleado, Num_Empleado, Colonia_Empleado, Municipio_Empleado, Correo_Empleado, contrasenia) "
            + "values('"+nombre+"','"+appat+"','"+apmat+"','"+telefono+"','"+calle+"','"+numero+"','"+colonia+"','"+municipio+"','"+email+"','"+contrasenia+"');");
            out.print("<script>mensaje();</script>");
            cnx.close();
            sta.close();
        }
        catch(ClassNotFoundException|SQLException e){
            out.print(e.toString());
        }
    %>
</body>
</html>
