<%--
  Created by IntelliJ IDEA.
  User: parkour
  Date: 2017/11/29
  Time: 下午2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改题目</title>
    <script>
        function validate_required(field,alerttxt)
        {
            with (field)
            {
                if (value==null||value=="")
                {alert(alerttxt);return false}
                else {return true}
            }
        }

        function validate_form(thisform)
        {
            with (thisform)
            {
                if (validate_required(question,"文本不能为空")==false)
                {question.focus();return false}
                if (validate_required(opa,"文本不能为空")==false)
                {opa.focus();return false}
                if (validate_required(opb,"文本不能为空")==false)
                {opb.focus();return false}
                if (validate_required(opc,"文本不能为空")==false)
                {opc.focus();return false}
                if (validate_required(opd,"文本不能为空")==false)
                {opd.focus();return false}
                if (validate_required(ans,"文本不能为空")==false)
                {ans.focus();return false}

            }
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
        #divsubmit{
            float:right;
        }
    </style>
</head>
<body>
<%
    String[][] ques=(String[][])request.getAttribute("top");
    String n = request.getAttribute("updateNum").toString();
    int num = Integer.valueOf(n);num--;
%>
<form action="/UpdateServlet" method="post" name="form" onsubmit="return validate_form(this)">
    <input type="hidden" name="no" value="<%=num%>">
    <table class="bordered" border="1" width="60%" >
        <tr>
            <th>题目</th>
            <td><input type="text" name="question" value="<%=ques[num][0]%>" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>选项A</th>
            <td><input type="text" name="opa" value="<%=ques[num][1]%>" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>选项B</th>
            <td><input type="text" name="opb" value="<%=ques[num][2]%>" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>选项C</th>
            <td><input type="text" name="opc" value="<%=ques[num][3]%>" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>选项D</th>
            <td><input type="text" name="opd" value="<%=ques[num][4]%>" style="width: 90%;font-size: 15px"></td>
        </tr>
        <tr>
            <th>正确答案</th>
            <td><input type="text" name="ans" value="<%=ques[num][5]%>" style="width: 90%;font-size: 15px"></td>
        </tr>
    </table>
    <p>
    <div id="divsubmit">
    <input type="submit" name="update" value="修改" class="submit">
    </div>
</form>
</body>
</html>
