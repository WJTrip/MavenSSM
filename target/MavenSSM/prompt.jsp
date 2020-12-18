<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>提示</title>
    <style>
        p{
            color: #0f0f0f;
            font-size: 15px;
        }
    </style>
    <script src="bootstrap-3.3.7-dist/js/prompt.js"></script>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
    <h1>网上银行ATM系统</h1>
</div>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">ATM Online</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="row-sm-12" style="text-align: center">
            <p>操作成功完成!</p>
            <p><span id="leaveTime">10</span>秒后自动返回到登录页面</p>
            <p>点击<a href="${pageContext.request.contextPath}/bank_welcome.html">这里</a>回到登录页面</p>
        </div>
    </div>
</div>



<%--<div>--%>
<%--    <div style="text-align: center">--%>
<%--        <p>操作成功完成!</p>--%>
<%--        <p><span id="leaveTime">10</span>秒后自动返回到登录页面</p>--%>
<%--        <p>点击<a href="${pageContext.request.contextPath}/bank_welcome.html">这里</a>回到登录页面</p>--%>
<%--    </div>--%>
<%--</div>--%>
</body>
</html>
