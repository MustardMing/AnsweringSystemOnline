package dao.impl;

import dao.IAdminDao;
import util.Conn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDaoImpl implements IAdminDao {

    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    //管理员登陆
    @Override
    public Boolean login(String adminName, String adminPwd) throws SQLException {
        try{
            Boolean name = false;
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM t_admin");
            while(rs.next()){
                if((adminName.equals(rs.getString("Aname")))&&(adminPwd.equals(rs.getString("Apassword")))){
                    name = true;
                }
            }
            con.close();
            return name;
        }
        catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}
