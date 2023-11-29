<%-- 
    Document   : DelEmpCheck
    Created on : 26 nov. 2023, 23:58:12
    Author     : Aldo Gonzalez
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
        <%@page import="Conexión.Conexion"%>
        
        <%
            String correoEmp = request.getParameter("Correo");
            String contra = request.getParameter("Contrasenia");
            
            Connection cnx = null; // Variable de conexión
            PreparedStatement sta = null; // Variable de Statement
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                
                // Verifica la existencia del empleado antes de redirigir a ConfirmarDelEmp.jsp
                String verificarQuery = "SELECT * FROM Empleados WHERE Correo_Empleado = ?";
                sta = cnx.prepareStatement(verificarQuery);
                sta.setString(1, correoEmp);
                
                ResultSet rs = sta.executeQuery();
                
                if (rs.next()) {
                    // Guarda los datos del empleado en atributos de solicitud para pasarlos a ConfirmarDelEmp.jsp
                    request.setAttribute("IdEmp", rs.getInt("Id_Empleado"));
                    request.setAttribute("NombreEmp", rs.getString("Nombre_Empleado"));
                    request.setAttribute("ApPatEmp", rs.getString("Ap_PatEmp"));
                    request.setAttribute("ApMatEmp", rs.getString("Ap_MatEmp"));
                    request.setAttribute("TelefonoEmp", rs.getLong("Telefono_Empleado"));
                    request.setAttribute("CalleEmp", rs.getString("Calle_Empleado"));
                    request.setAttribute("NumExtEmp", rs.getInt("Num_ExtEmpleado"));
                    request.setAttribute("ColoniaEmp", rs.getString("Colonia_Empleado"));
                    request.setAttribute("MunicipioEmp", rs.getString("Municipio_Empleado"));
                    request.setAttribute("EstadoEmp", rs.getString("Estado_Empleado"));
                    request.setAttribute("CorreoEmp", rs.getString("Correo_Empleado"));
                    request.setAttribute("ContraseñaEmp", rs.getString("contraseña"));
                    
                    // Redirige a ConfirmarDelEmp.jsp
                    RequestDispatcher dispatcher = request.getRequestDispatcher("ConfirmarDelEmp.jsp");
                    dispatcher.forward(request, response);
                } 
                else {
                    response.sendRedirect("ErrorDelEmp.jsp");
                }
            } 
            catch (SQLException e) {
                out.println(e.toString());
            } 
        %>
    </body>
</html>