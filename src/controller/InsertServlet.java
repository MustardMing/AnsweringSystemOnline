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

@WebServlet(name = "InsertServlet",urlPatterns = {"/InsertServlet"})
public class InsertServlet extends HttpServlet {
    public InsertServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String question = request.getParameter("question");
        String opa = request.getParameter("opa");
        String opb = request.getParameter("opb");
        String opc = request.getParameter("opc");
        String opd = request.getParameter("opd");
        String ans = request.getParameter("ans");

        QuestionServiceImpl questionService = new QuestionServiceImpl();

        Question q = new Question();
        q.setQus(question);
        q.setOptionA(opa);
        q.setOptionB(opb);
        q.setOptionC(opc);
        q.setOptionD(opd);
        q.setAns(ans);

        try {
            questionService.insert(q);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.getRequestDispatcher("/operate.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
