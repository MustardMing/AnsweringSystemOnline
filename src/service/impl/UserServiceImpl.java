package service.impl;

import domain.User;
import dao.impl.UserDaoImpl;
import service.IUserService;

import java.sql.SQLException;

public class UserServiceImpl implements IUserService{

    private UserDaoImpl userDao = new UserDaoImpl();

    //用户登录
    @Override
    public Boolean loginUser(User user) throws SQLException {
        boolean result = userDao.login(user.getUserName(),user.getUserPwd());
        return  result;
    }

    //用户注册
    @Override
    public void registerUser(User user) throws SQLException {
        userDao.register(user);
    }

    //验证注册
    public Boolean confirmReg(User user){
        boolean result = userDao.confirmReg(user.getUserName());
        return  result;
    }
}
