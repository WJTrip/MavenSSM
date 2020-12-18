<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查询账户余额</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="bootstrap-3.3.7-dist/js/jquery-3.5.0.min.js"></script>
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
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">ATM Online</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/bank_main.jsp?ID=${user.ID}&passWord=${user.passWord}">主页</a></li>
                <li class="active"><a href="#">查询</a></li>
                <li><a href="${pageContext.request.contextPath}/toDepositJsp?ID=${user.ID}">存款</a></li>
                <li><a href="${pageContext.request.contextPath}/toWithDrawJsp?ID=${user.ID}">取款</a></li>
                <li><a href="${pageContext.request.contextPath}/toTransferMoneyJsp?ID=${user.ID}">转账</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>账户余额查询</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column" >
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>卡号</th>
                        <th>姓名</th>
                        <th>余额</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>${user.ID}</td>
                        <td>${user.name}</td>
                        <td>${user.balance}</td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
    <p>@WTU.EDU.CN</p>
</div>
</body>
</html>
