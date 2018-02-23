package dao;

import java.sql.SQLException;

public interface IAdminDao {

    /**
     * 管理员登录
     * @param adminName
     * @param adminPwd
     * @return 是否存在该管理员
     * @throws SQLException
     */
    public Boolean login(String adminName,String adminPwd) throws SQLException;
}
