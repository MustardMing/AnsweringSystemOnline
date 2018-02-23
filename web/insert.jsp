<%--
  Created by IntelliJ IDEA.
  User: parkour
  Date: 2017/11/28
  Time: 下午8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>插入题目</title>
    <script>
            function myCheck()
            {
                for(var i=0;i<document.form.elements.length-1;i++)
                {
                    if(document.form.elements[i].value=="")
                    {
                        alert("当前表单不能有空项");
                        document.form.elements[i].focus();
                        return false;
                    }
                }
                return true;

            }
    </script>
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

    .bordered {
    border: solid #ccc 1px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: 0 1px 1px #ccc;
    -moz-box-shadow: 0 1px 1px #ccc;
    box-shadow: 0 1px 1px #ccc;
    }

    .bordered tr:hover {
    background: #fbf8e9;
    -o-transition: all 0.1s ease-in-out;
    -webkit-transition: all 0.1s ease-in-out;
    -moz-transition: all 0.1s ease-in-out;
    -ms-transition: all 0.1s ease-in-out;
    transition: all 0.1s ease-in-out;
    }

    .bordered td, .bordered th {
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
    padding: 10px;
    text-align: left;
    }

    .bordered th {
    background-color: #dce9f9;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
    background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
    border-top: none;
    text-shadow: 0 1px 0 rgba(255,255,255,.5);
    }

    .bordered td:first-child, .bordered th:first-child {
    border-left: none;
    }

    .bordered th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;
    }

    .bordered th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
    }

    .bordered th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
    }

    .bordered tr:last-child td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
    }

    .bordered tr:last-child td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
    }
    .submit {
        background-color: #F0F8FF;
        border: none;
        padding: 15px 32px;
        text-align: center;
        font-size: 15px;
        border-radius: 12px;
    }
    .divsubmit{
        float:right;
    }
</style>
</head>
<body>
    <form action="/InsertServlet" method="post" name="form" onSubmit="return myCheck()">
    <table table class="bordered" border="1" width="60%">
        <tr>
            <th>题目</th>
            <td><input type="text" name="question" style="width: 90%;font-size: 15px" ></td>
        </tr>
        <tr>
            <th>选项A</th>
            <td><input type="text" name="opa" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>选项B</th>
            <td><input type="text" name="opb" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>选项C</th>
            <td><input type="text" name="opc" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>选项D</th>
            <td><input type="text" name="opd" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>正确答案</th>
            <td><input type="text" name="ans" style="width: 90%;font-size: 15px"></td>
        </tr>
    </table>
    <p>
    <div class="divsubmit">
        <p>
        <input type="submit" name="ok" value="确定加入" class="submit">
    </form>
    <div class="divsubmit">
        <form action="/operate.jsp" method="post" name="form2">
        <input type="submit" name="ok" value="返回" class="submit">
        </form>
    </div>
    </div>
</body>
</html>
