package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "ResultServlet",urlPatterns = {"/ResultServlet"})
public class ResultServlet extends HttpServlet {
    public ResultServlet(){
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int num = 0;

        HttpSession ms = request.getSession(true);
        String ques[][] = (String[][])ms.getAttribute("topic");

        String s1 = request.getParameter("one");
        String s2 = request.getParameter("two");
        String s3 = request.getParameter("three");
        String s4 = request.getParameter("four");
        String s5 = request.getParameter("five");

        if(s1.equals(ques[0][5])) num = num + 3000;
        if(s2.equals(ques[1][5])) num = num + 3000;;
        if(s3.equals(ques[2][5])) num = num + 3000;;
        if(s4.equals(ques[3][5])) num = num + 3000;;
        if(s5.equals(ques[4][5])) num = num + 3000;;

        String x = request.getParameter("ok");
        if(x.equals("完成答题")) {
            request.setAttribute("score", num);

            request.getRequestDispatcher("/result.jsp").forward(request, response);
        }
        else if(x.equals("返回")){
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
