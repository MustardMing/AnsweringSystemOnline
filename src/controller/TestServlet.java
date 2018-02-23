package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import service.impl.QuestionServiceImpl;

@WebServlet(name = "TestServlet",urlPatterns = {"/TestServlet"})
public class TestServlet extends HttpServlet {

    public TestServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        QuestionServiceImpl questionService = new QuestionServiceImpl();

        String ques[][];
        ques = questionService.test();
        request.setAttribute("topic", ques);

        HttpSession ms = request.getSession(true);
        ms.setAttribute("topic",ques);

        request.getRequestDispatcher("/test.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
