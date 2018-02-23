package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    public LoginServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = request.getParameter("ok");
        if (user.equals("用户登录")){
            request.getRequestDispatcher("/UserServlet").forward(request, response);
        }
        else if(user.equals("管理员登录")){
            request.getRequestDispatcher("/AdminServlet").forward(request, response);
        }
        else if(user.equals("重新答题")){
            request.getRequestDispatcher("/TestServlet").forward(request, response);
        }
        else if(user.equals("退出登录")){
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
        else if(user.equals("返回")){
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }


}
