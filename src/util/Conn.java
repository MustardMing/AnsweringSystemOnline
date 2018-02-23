package util;
import java.sql.*;

public class Conn {
    private Connection con = null;
    public Conn(){
       try {
           Class.forName("com.mysql.jdbc.Driver");
       }
       catch (ClassNotFoundException e){
           e.printStackTrace();
       }
    }

    public Connection getCon() {
        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/caoqiming?user=root&password=CAOIRHCL1314c&useUnicode=true&characterEncoding=utf-8");
        }
        catch (SQLException e1){
            e1.printStackTrace();
        }
        return con;
    }
}
