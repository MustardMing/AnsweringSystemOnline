<%--
  Created by IntelliJ IDEA.
  User: parkour
  Date: 2017/12/2
  Time: 上午10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员操作</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/demo_styles.css">
    <link rel="stylesheet" href="css/demo2.css">
    <link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>

</head>
<body class="dm-demo2">
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>ONE PIECE<span>在线答题系统题库</span></h1>
        <a href="/login.jsp" style="color: #BEBEBE" >注销登录</a>
    </header>
    <!-- Demo Navigation -->
    <form action="/OperationServlet" method="post">
        <nav class="nav clearfix">
            <button class="nav-el" id="el-topleft" data-id="ov-topleft" name="op" value="显示题库" >
                <span class="fa fa-search" style="position: absolute;top: 50%;left: 50%;line-height: 0;margin-left: -0.5em;"></span></button>
            <button class="nav-el" id="el-topright" data-id="ov-topright" name="op" value="修改题目">
                <span class="fa fa-edit" style="position: absolute;top: 50%;left: 50%;line-height: 0;margin-left: -0.5em;"></span></button>
            <button class="nav-el" id="el-btmleft" data-id="ov-btmleft" name="op" value="删除题目">
                <span class="fa fa-minus" style="position: absolute;top: 50%;left: 50%;line-height: 0;margin-left: -0.5em;"></span></button>
            <button class="nav-el" id="el-btmright" data-id="ov-btmright" name="op" value="新增题目">
                <span class="fa fa-plus" style="position: absolute;top: 50%;left: 50%;line-height: 0;margin-left: -0.5em;"></span></button>
        </nav>
    </form>
</div>

<script src="js/vendor/jquery-1.10.2.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/demo.js"></script>
</body>
</html>
