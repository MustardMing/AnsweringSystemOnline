package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import domain.User;
import service.impl.UserServiceImpl;

@WebServlet(name = "RegisterServlet",urlPatterns = {"/Register"})
public class RegisterServlet extends HttpServlet {

    public RegisterServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=GB2312");

        String name = request.getParameter("rName");
        String pwd = request.getParameter("rPwd");

        UserServiceImpl userService = new UserServiceImpl();
        User user = new User();
        user.setUserName(name);
        user.setUserPwd(pwd);
        boolean x =userService.confirmReg(user);
        if(x==true){
            request.setAttribute("confirm", "yes");
        }
        else if(x==false) {

            try {
                userService.registerUser(user);
            }
            catch (SQLException e) {
                e.printStackTrace();
            }

            request.setAttribute("confirm", "no");
        }
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
