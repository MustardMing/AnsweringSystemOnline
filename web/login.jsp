<%--
  Created by IntelliJ IDEA.
  User: parkour
  Date: 2017/11/27
  Time: 下午10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Login</title>	<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ONE PIECE在线答题</title>
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/default.css">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
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

        function validate_requiredl(field,alerttxt)
        { with (field)
        {
            if (value.length>10)
            {alert(alerttxt);return false}
            else {return true}
        }
        }

        function validate_form(thisform)
        {
        with (thisform)
        {
            if (validate_required(rName,"用户名不能为空")==false)
            {rName.focus();return false}
            if (validate_requiredl(rName,"用户名长度不能超过十")==false)
            {rName.focus();return false}
            if (validate_required(rPwd,"密码不能为空")==false)
            {rPwd.focus();return false}
            if (validate_required(cPwd,"验证密码不能为空")==false)
            {cPwd.focus();return false}
            var x=document.forms["rform"]["rPwd"].value;
            var y=document.forms["rform"]["cPwd"].value;
            if(x!=y) {alert("前后密码不一致");return false}
        }
        }
        </script>
    </head>

    <body>
    <div class="htmleaf-container">
        <header class="htmleaf-header">
            <h1>ONE PIECE在线答题 <span></span></h1>
        </header>
        <div class="login-wrap">
            <form action="/LoginServlet" method="post">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">登录</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
                <div class="login-form">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="user" class="label">Username</label>
                            <input id="user" type="text" name="username" class="input">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password</label>
                            <input id="pass" type="password" class="input" data-type="password" name="password">
                        </div>
                        <br><br>
                        <div class="group">
                            <input type="submit" class="button" value="用户登录" name="ok">
                        </div>
                        <div class="group">
                            <input type="submit" class="button" value="管理员登录" name="ok">
                        </div>
                        </form>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="#forgot">Forgot Password?</a>
                        </div>
                    </div>

                    <div class="sign-up-htm">
                        <form action="/Register" onsubmit="return validate_form(this)" method="post" name="rform">
                        <div class="group">
                            <label for="user" class="label">Username</label>
                            <input id="user" type="text" class="input" name="rName">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password</label>
                            <input id="pass" type="password" class="input" data-type="password" name="rPwd">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Repeat Password</label>
                            <input id="cpass" type="password" class="input" data-type="password" name="cPwd">
                        </div>
                        <div class="group">
                            <input type="submit" class="button" value="注册">
                        </div>
                           <%
                               String con=(String)request.getAttribute("confirm");
                               if(con=="yes"){
                                   %>
                            <input type="hidden" id="xxx" value="yes">
                            <script>
                                var x=document.getElementById("xxx").value;
                                if(x=="yes")
                                {
                                    alert("用户名已存在");

                                }
                                else
                                {
                                    alert("注册成功");

                                }
                            </script>
                            <%
                               }

                           %>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <label for="tab-1">我拥有账号</a>
                        </div>
                            <span class="icon-phone"></span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    </body>
</html>
