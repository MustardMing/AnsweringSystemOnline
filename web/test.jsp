<%--
  Created by IntelliJ IDEA.
  User: parkour
  Date: 2017/12/2
  Time: 下午7:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线测试</title>
    <style>

        body {
            width: 600px;
            margin: 40px auto;
            font-family: 'trebuchet MS', 'Lucida sans', Arial;
            font-size: 14px;
            color: #444;
        }

        table {
            *border-collapse: collapse; /* IE7 and lower */
            border-spacing: 0;
            width: 100%;
        }

        .zebra td, .zebra th {
            padding: 10px;
            border-bottom: 1px solid #f2f2f2;
        }

        .zebra th {
            text-align: left;
            text-shadow: 0 1px 0 rgba(255,255,255,.5);
            border-bottom: 1px solid #ccc;
            background-color: #eee;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#eee));
            background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
            background-image:    -moz-linear-gradient(top, #f5f5f5, #eee);
            background-image:     -ms-linear-gradient(top, #f5f5f5, #eee);
            background-image:      -o-linear-gradient(top, #f5f5f5, #eee);
            background-image:         linear-gradient(top, #f5f5f5, #eee);
        }

        .zebra th:first-child {
            -moz-border-radius: 6px 0 0 0;
            -webkit-border-radius: 6px 0 0 0;
            border-radius: 6px 0 0 0;
        }

        .zebra th:last-child {
            -moz-border-radius: 0 6px 0 0;
            -webkit-border-radius: 0 6px 0 0;
            border-radius: 0 6px 0 0;
        }

        .zebra th:only-child{
            -moz-border-radius: 6px 6px 0 0;
            -webkit-border-radius: 6px 6px 0 0;
            border-radius: 6px 6px 0 0;
        }

        .zebra tfoot td {
            border-bottom: 0;
            border-top: 1px solid #fff;
            background-color: #f1f1f1;
            -moz-border-radius: 0 0 0 6px;
            -webkit-border-radius: 0 0 0 6px;
            border-radius: 0 0 0 6px;
        }
        .submit {
            background-color: #F0F8FF;
            border: none;
            padding: 15px 32px;
            text-align: center;
            font-size: 15px;
            border-radius: 12px;
        }
        #divsubmit{
        float:right;
        }
    </style>
</head>
<body>

<h1><font size=5>欢迎进入海贼王船员考核</font></h1>
<%
    String[][] ques=(String[][])request.getAttribute("topic");
%>
<p>每答对一题，你的悬赏金将会提升3000贝里：</p>
<form action="/ResultServlet" method="post" >
    <table class="zebra">
        <thead>
        <tr>
            <th colspan="2">1.<%out.print(ques[0][0]);%></th>
        </tr>
        </thead>
        <tr>
            <td><input type="radio" name="one" value="A" checked="aa">A.<%out.print(ques[0][1]);%></td>
            <td><input type="radio" name="one" value="B">B.<%out.print(ques[0][2]);%></td>
        </tr>
        <tr>
            <td><input type="radio" name="one" value="C">C.<%out.print(ques[0][3]);%></td>
            <td><input type="radio" name="one" value="D">D.<%out.print(ques[0][4]);%></td>
        </tr>
        <tr></tr>

        <thead>
        <tr>
            <th colspan="2">2.<%out.print(ques[1][0]);%></th>
        </tr>
        </thead>
        <tr>
            <td><input type="radio" name="two" value="A" checked="aa">A.<%out.print(ques[1][1]);%></td>
            <td><input type="radio" name="two" value="B">B.<%out.print(ques[1][2]);%></td>
        </tr>
        <tr>
            <td><input type="radio" name="two" value="C">C.<%out.print(ques[1][3]);%></td>
            <td><input type="radio" name="two" value="D">D.<%out.print(ques[1][4]);%></td>
        </tr>
        <tr></tr>

        <thead>
        <tr>
            <th colspan="2">3.<%out.print(ques[2][0]);%></th>
        </tr>
        </thead>
        <tr>
            <td><input type="radio" name="three" value="A" checked="aa">A.<%out.print(ques[2][1]);%></td>
            <td><input type="radio" name="three" value="B">B.<%out.print(ques[2][2]);%></td>
        </tr>
        <tr>
            <td><input type="radio" name="three" value="C">C.<%out.print(ques[2][3]);%></td>
            <td><input type="radio" name="three" value="D">D.<%out.print(ques[2][4]);%></td>
        </tr>
        <tr></tr>

        <thead>
        <tr>
            <th colspan="2">4.<%out.print(ques[3][0]);%></th>
        </tr>
        </thead>
        <tr>
            <td><input type="radio" name="four" value="A" checked="aa">A.<%out.print(ques[3][1]);%></td>
            <td><input type="radio" name="four" value="B">B.<%out.print(ques[3][2]);%></td>
        </tr>
        <tr>
            <td><input type="radio" name="four" value="C">C.<%out.print(ques[3][3]);%></td>
            <td><input type="radio" name="four" value="D">D.<%out.print(ques[3][4]);%></td>
        </tr>
        <tr></tr>

        <thead>
        <tr>
            <th colspan="2">5.<%out.print(ques[4][0]);%></th>
        </tr>
        </thead>
        <tr>
            <td><input type="radio" name="five" value="A" checked="aa">A.<%out.print(ques[4][1]);%></td>
            <td><input type="radio" name="five" value="B">B.<%out.print(ques[4][2]);%></td>
        </tr>
        <tr>
            <td><input type="radio" name="five" value="C">C.<%out.print(ques[4][3]);%></td>
            <td><input type="radio" name="five" value="D">D.<%out.print(ques[4][4]);%></td>
        </tr>
        <tr></tr>

    </table>
    <br>
    <div id="divsubmit">
    <input type="submit" name="ok" value="完成答题" class="submit">
    <input type="submit" name="ok" value="返回" class="submit">
    </div>
</form>
</body>
</html>
