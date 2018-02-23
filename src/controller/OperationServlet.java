package controller;

import service.impl.QuestionServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "OperationServlet",urlPatterns = {"/OperationServlet"})
public class OperationServlet extends HttpServlet {

    public OperationServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String op = request.getParameter("op");

        QuestionServiceImpl questionService = new QuestionServiceImpl();
        String ques[][] = new String[100][6];

        try {
            ques = questionService.find();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("top", ques);

        HttpSession ms = request.getSession(true);
        ms.setAttribute("top",ques);

        if (op.equals("显示题库")){
            request.getRequestDispatcher("/find.jsp").forward(request, response);
        }
        else if(op.equals("新增题目")){
            request.getRequestDispatcher("/insert.jsp").forward(request, response);
        }
        else if(op.equals("删除题目")){
            request.getRequestDispatcher("/delete.jsp").forward(request, response);
        }
        else if(op.equals("修改题目")){
            request.getRequestDispatcher("/select.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
