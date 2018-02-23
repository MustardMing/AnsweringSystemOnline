package dao.impl;

import dao.IUserDao;
import domain.User;
import util.Conn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDaoImpl implements IUserDao {

    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    //用户登录
    @Override
    public Boolean login(String userName, String userPwd) throws SQLException {
        try{
            Boolean name = false;
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM t_user");
            while(rs.next()){
                if((userName.equals(rs.getString("Uname")))&&(userPwd.equals(rs.getString("Upassword")))){
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

    //用户注册
    @Override
    public void register(User user) throws SQLException {
        try {
            boolean rg = true;
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT Uname FROM t_user");
            while (rs.next()) {
                if (user.getUserName() == rs.getString("Uname"))
                    rg = false;
            }
            if (rg == true) {
                stmt.execute("INSERT INTO t_user VALUES ('" + user.getUserName() + "','" + user.getUserPwd() + "')");
            }
            con.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    //注册验证
    public Boolean confirmReg(String userName){
        try{
            Boolean name = false;
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT Uname FROM t_user");
            while(rs.next()){
                if(userName.equals(rs.getString("Uname"))){
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
