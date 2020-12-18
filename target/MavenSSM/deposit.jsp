
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>存款</title>
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
                <li class="active"><a href="#">存款</a></li>
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
                    <small>存款</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column" >
            <form class="form-horizontal" action="${pageContext.request.contextPath}/deposit?ID=${user.ID}" method="post">
<%--                <input type="hidden" name="ID" value=${user.ID}>--%>
<%--                <input type="hidden" name="name" value=${user.name}>--%>
<%--                <input type="hidden" name="state" value=${user.state}>--%>
<%--                <input type="hidden" name="balance" value=${user.balance}>--%>
<%--                <input type="hidden" name="passWord" value=${user.passWord}>--%>
                <div class="form-group">
                    <label class="col-sm-2 control-label">卡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${user.ID}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">账户余额</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${user.balance}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="money" class="col-sm-2 control-label">存入金额</label>
                    <div class="col-sm-10">
                        <label for="money">
                            <input type="text" class="form-control" id="money" name="money" placeholder="money">
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">确认存款</button>
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
