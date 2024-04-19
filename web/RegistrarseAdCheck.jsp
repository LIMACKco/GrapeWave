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
            long telefono = Long.parseLong(request.getParameter("Telefono"));
            String calle = request.getParameter("Calle");
            int numero = Integer.parseInt(request.getParameter("Numero"));
            String colonia = request.getParameter("Colonia");
            String municipio = request.getParameter("Municipio");
            String estado = request.getParameter("Estado");
            String email = request.getParameter("Email");
            String codigo = request.getParameter("Codigo");
            String contra = request.getParameter("Contrasenia");
            
            Connection cnx = null;
            PreparedStatement sta = null;
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                
                // Verificar si el código de sucursal existe en la tabla Sucursal
                String querySucursal = "select * from Sucursal where Código_Sucursal = ?";
                sta = cnx.prepareStatement(querySucursal);
                sta.setString(1, codigo);
                rs = sta.executeQuery();
                
                if (rs.next()) {
                    // El código de sucursal existe, proceder con la inserción en la tabla Administrador
                    String query = "insert into Administrador(Nombre_Admin, Ap_PatAdmin, Ap_MatAdmin, Teléfono_Admin, Calle_Admin, Num_ExtAdmin, Colonia_Admin, Municipio_Admin, Estado_Admin, Correo_Admin, contraseña) "
                            + "values (?,?,?,?,?,?,?,?,?,?,?)";
                    sta = cnx.prepareStatement(query);
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
                    
                    response.sendRedirect("RegistrarseAdVerified.jsp");
                } 
                else {
                    // El código de sucursal no existe, redirigir a una página de error
                    response.sendRedirect("ErrorSucursal.jsp");
                }
            } 
            catch (SQLException e) {
                out.println(e.toString());
            } 
            finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (sta != null) {
                        sta.close();
                    }
                    if (cnx != null) {
                        cnx.close();
                    }
                } 
                catch (SQLException ex) {
                    out.println(ex.toString());
                }
            }
        %>
        
    </body>
</html>
