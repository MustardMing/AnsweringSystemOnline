package controller;

import domain.User;
import service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "UserServlet",urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {

    public UserServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String userPwd = request.getParameter("password");

        UserServiceImpl userService = new UserServiceImpl();
        User user = new User();
        user.setUserName(userName);
        user.setUserPwd(userPwd);
        Boolean x = null;

        try {
            x = userService.loginUser(user);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        if(x==true){
            request.getRequestDispatcher("/TestServlet").forward(request, response);
        }

        else if(x==false){
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

}
