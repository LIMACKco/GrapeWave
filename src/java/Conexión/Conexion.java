package Conexión;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;

public class Conexion 
{
    public static Connection obtenerConexion( boolean localhost ) throws SQLException {
        try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            if( localhost )
            {
                return DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "n0m3l0");
            }
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/GrapeWave?autoReconnect=true&useSSL=false", "root", "1234");
        } 
        catch (ClassNotFoundException | SQLException e) {
            throw new SQLException("Error al obtener la conexión a la base de datos", e);
        }
    }
    
    public static boolean isLocalHost( HttpServletRequest httpServletRequest ) 
    {
        if( httpServletRequest == null )
        {
            return true;
        }
        System.out.println( httpServletRequest.getRequestURL( ).toString( ) );
        return !httpServletRequest.getRequestURL( ).toString( ).contains(".gerdoc.com" );
    }
}
