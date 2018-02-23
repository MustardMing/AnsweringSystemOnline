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

@WebServlet(name = "UpdateServlet",urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet {
    public UpdateServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String update = request.getParameter("update");
        QuestionServiceImpl questionService = new QuestionServiceImpl();
        String ques[][] = new String[100][6];

        try {
            ques = questionService.find();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        if(update.equals("确定")){
            String updateNum = request.getParameter("updatenum");
            request.setAttribute("updateNum", updateNum);

            request.setAttribute("top", ques);
            request.getRequestDispatcher("/update.jsp").forward(request, response);

        }
        else if(update.equals("修改")){

            String question = request.getParameter("question");
            String opa = request.getParameter("opa");
            String opb = request.getParameter("opb");
            String opc = request.getParameter("opc");
            String opd = request.getParameter("opd");
            String ans = request.getParameter("ans");
            String no = request.getParameter("no");

            int x = Integer.valueOf(no);
            Question q = new Question();

            q.setQus(question);
            q.setOptionA(opa);
            q.setOptionB(opb);
            q.setOptionC(opc);
            q.setOptionD(opd);
            q.setAns(ans);

            try {
                questionService.update(q,ques[x][0]);
            }
            catch (SQLException e) {
                e.printStackTrace();
            }

            request.getRequestDispatcher("/operate.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
