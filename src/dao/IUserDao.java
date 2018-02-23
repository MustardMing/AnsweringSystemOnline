package dao;

import domain.User;

import java.sql.SQLException;

public interface IUserDao {
    /**
     * 用户登录
     * @param userName
     * @param userPwd
     * @return 是否存在该用户
     * @throws SQLException
     */
    public Boolean login(String userName,String userPwd) throws SQLException;

    /**
     * 用户注册
     * @param user
     * @throws SQLException
     */
    public void register(User user) throws SQLException;
}
