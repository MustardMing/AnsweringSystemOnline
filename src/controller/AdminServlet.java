package controller;

import domain.Admin;
import service.impl.AdminServiceImpl;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AdminServlet",urlPatterns = {"/AdminServlet"})
public class AdminServlet extends HttpServlet {
    public AdminServlet(){
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminName = request.getParameter("username");
        String adminPwd = request.getParameter("password");

        AdminServiceImpl adminService = new AdminServiceImpl();
        Admin admin = new Admin();
        admin.setAdminName(adminName);
        admin.setAdminPwd(adminPwd);
        Boolean x = null;

        try {
            x = adminService.loginAdmin(admin);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(x==true){
            request.getRequestDispatcher("/operate.jsp").forward(request, response);
        }
        else if(x==false){
            request.setAttribute("confirm","no");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
