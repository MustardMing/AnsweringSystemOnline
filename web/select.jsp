<%--
  Created by IntelliJ IDEA.
  User: parkour
  Date: 2017/11/29
  Time: 下午2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
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
                    if(!reg.test(document.form.updatenum.value)){
                        alert('只能输入数字！');
                        return false;
                    }
                }
                return true;

            }
        </script>
        <style>
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
    <jsp:include page="find.jsp" flush="true"/>
        <div id="divsubmit">
            <form action="/UpdateServlet" method="post" name="form" onSubmit="return myCheck()">
                <font size=5> 请选择要修改的题目编号</font>
                <input type="text" name="updatenum" style="font-size: 30px;width: 150px">
                <input type="submit" name="update" value="确定" class="submit">
            </form>
        </div>
    </body>
</html>
