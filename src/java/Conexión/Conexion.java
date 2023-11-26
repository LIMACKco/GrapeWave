package Conexión;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    public static Connection obtenerConexion() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");
        } 
        catch (ClassNotFoundException | SQLException e) {
            throw new SQLException("Error al obtener la conexión a la base de datos", e);
        }
    }
}
