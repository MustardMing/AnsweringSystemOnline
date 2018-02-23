<%--
  Created by IntelliJ IDEA.
  User: parkour
  Date: 2017/11/29
  Time: 下午12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>删除题目</title>
        <script>
            function myCheck()
            {
                for(var i=0;i<document.form.elements.length-1;i++)
                {
                    if(document.form.elements[i].value=="")
                    {
                        alert("输入不能为空");
                        document.form.elements[i].focus();
                        return false;
                    }
                    var reg = /^[0-9]+$/;
                    if(!reg.test(document.form.num.value)){
                        alert('只能输入数字！');
                        return false;
                    }
                }
                return true;

            }
        </script>
        <style>
            #divsubmit{
                float:right;
                padding-bottom:0;
            }
            .submit {
                background-color: #F0F8FF;
                border: none;
                text-align: center;
                font-size: 13px;

            }
        </style>
    </head>
    <body>
    <jsp:include page="find.jsp" flush="true"/>
    <p>
    <div id="divsubmit">
        <form action="/DeleteServlet" method="post" name="form" onSubmit="return myCheck()">
            <font size=5>请输入您想删除的题目编号</font>
            <input type="text" name="num" style="font-size: 30px;width: 150px">
            <input type="submit" name="de" value="删除" class="submit">
        </form>
    </div>
    </body>
</html>
