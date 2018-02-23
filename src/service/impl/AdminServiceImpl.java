package service.impl;


import dao.impl.AdminDaoImpl;
import domain.Admin;
import service.IAdminService;

import java.sql.SQLException;

public class AdminServiceImpl implements IAdminService {

    private AdminDaoImpl adminDao = new AdminDaoImpl();

    //管理员登录
    @Override
    public Boolean loginAdmin(Admin admin) throws SQLException {
        boolean result = adminDao.login(admin.getAdminName(),admin.getAdminPwd());
        return  result;
    }
}
