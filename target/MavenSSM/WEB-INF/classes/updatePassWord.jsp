<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>主界面</title>
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
                <li><a href="${pageContext.request.contextPath}/queryUser?ID=${user.ID}">查询</a></li>
                <li><a href="${pageContext.request.contextPath}/toDepositJsp?ID=${user.ID}">存款</a></li>
                <li><a href="${pageContext.request.contextPath}/toWithDrawJsp?ID=${user.ID}">取款</a></li>
                <li><a href="${pageContext.request.contextPath}/toTransferMoneyJsp?ID=${user.ID}">转账</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" >
            <form class="form-horizontal" action="${pageContext.request.contextPath}/updatePassWord" method="post">
                <input type="hidden" name="ID" value=${user.ID}>
                <input type="hidden" name="name" value=${user.name}>
                <input type="hidden" name="state" value=${user.state}>
                <input type="hidden" name="balance" value=${user.balance}>
                <div class="form-group">
                    <label class="col-sm-2 control-label">卡&nbsp;&nbsp;&nbsp;&nbsp;号</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${user.ID}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">原密码</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${user.passWord}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">新密码</label>
                    <div class="col-sm-10">
                        <label for="inputPassWord">
                            <input type="text" class="form-control" id="inputPassWord" name="passWord" placeholder="newPassword">
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">确认修改</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
    <p>@WTU.EDU.CN</p>
</div>
</body>
</html>
