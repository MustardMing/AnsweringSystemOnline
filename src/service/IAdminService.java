package service;

import domain.Admin;

import java.sql.SQLException;

public interface IAdminService {

    /**
     * 管理员登录
     * @param admin
     * @return 是否存在该管理员
     * @throws SQLException
     */
    public Boolean loginAdmin(Admin admin) throws SQLException;
}
