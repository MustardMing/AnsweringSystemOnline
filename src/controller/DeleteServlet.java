package controller;

import domain.Question;
import service.impl.QuestionServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteServlet",urlPatterns = {"/DeleteServlet"})
public class DeleteServlet extends HttpServlet {
    public DeleteServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String t = request.getParameter("num");
        int x = Integer.valueOf(t);

        Question q = new Question();
        QuestionServiceImpl questionService = new QuestionServiceImpl();

        String ques[][] = new String[100][6];
        try {
            ques = questionService.find();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        q.setQus(ques[x-1][0]);

        try {
            questionService.delete(q);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.getRequestDispatcher("/operate.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
