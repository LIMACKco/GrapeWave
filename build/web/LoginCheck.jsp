<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Verificación de Inicio de Sesión</title>
</head>
<body>

<%
    String email = request.getParameter("Email");
    String contra = request.getParameter("Contrasena");

    Connection cnx = null;
    PreparedStatement sta = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");

        String nombreUsuario = null;

        // Verificar en la tabla Empleados
        String empleadoQuery = "select Nombre_Empleado from Empleados where Correo_Empleado = ? and contraseña = ?";
        sta = cnx.prepareStatement(empleadoQuery);
        sta.setString(1, email);
        sta.setString(2, contra);
        rs = sta.executeQuery();

        if (rs.next()) {
            nombreUsuario = rs.getString("Nombre_Empleado");
        } else {
            // Verificar en la tabla Administrador
            String adminQuery = "select Nombre_Admin from Administrador where Correo_Admin = ? and contraseña = ?";
            sta = cnx.prepareStatement(adminQuery);
            sta.setString(1, email);
            sta.setString(2, contra);
            rs = sta.executeQuery();

            if (rs.next()) {
                nombreUsuario = rs.getString("Nombre_Admin");
            } else {
                // Verificar en la tabla Dueño
                String duenoQuery = "select Nombre_Master from Dueño where Correo_Master = ? and contraseña = ?";
                sta = cnx.prepareStatement(duenoQuery);
                sta.setString(1, email);
                sta.setString(2, contra);
                rs = sta.executeQuery();

                if (rs.next()) {
                    nombreUsuario = rs.getString("Nombre_Master");
                }
            }
        }

        if (nombreUsuario != null) {
            // Redirigir a la página de bienvenida con el nombre del usuario
            response.sendRedirect("Bienvenida.jsp?nombre=" + nombreUsuario);
        } else {
            // Usuario o contraseña incorrectos
            response.sendRedirect("ErrorLoginEmp.jsp");
        }

        sta.close();
        cnx.close();
    } catch (SQLException | ClassNotFoundException e) {
        out.println(e.toString());
    }
%>

</body>
</html>
