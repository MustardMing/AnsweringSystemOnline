package service;

import domain.User;

import java.sql.SQLException;

public interface IUserService {

    /**
     * 用户登录
     * @param user
     * @return 是否存在该用户
     * @throws SQLException
     */
    public Boolean loginUser(User user) throws SQLException;

    /**
     * 普通用户注册
     * @param user
     * @throws SQLException
     */
    public void registerUser(User user) throws SQLException;

}
