<%--
  Created by IntelliJ IDEA.
  User: parkour
  Date: 2017/11/28
  Time: 下午4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <style>
            #x{
                text-align:center;
                width: 400px;
                margin:0 auto;
            }
            .submit {
                background-color: #F0F8FF;
                border: none;
                padding: 15px 32px;
                text-align: center;
                font-size: 15px;
                border-radius: 12px;
            }
        </style>
    </head>
    <body>
    <%int score = (int)request.getAttribute("score");%>
        <div id="x" >
            <h1>您的悬赏金额为<%=score%>贝里</h1>
            <form action="/LoginServlet" method="post">
                <input type="submit" name="ok" value="重新答题" class="submit">
                <input type="submit" name="ok" value="退出登录" class="submit">
            </form>
        </div>
        <div>
            <img src="img/opbg.jpg" width="100%" style="position:fixed; bottom:10px;"/>
        </div>
    </body>
</html>
