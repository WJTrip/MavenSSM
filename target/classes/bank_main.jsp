
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
<%
    String ID=request.getParameter("ID");
    String passWord=request.getParameter("passWord");
%>
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
                <li class="active"><a href="#">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/queryUser?ID=<%=ID%>&passWord=<%=passWord%>">查询</a></li>
                <li><a href="${pageContext.request.contextPath}/toDepositJsp?ID=<%=ID%>">存款</a></li>
                <li><a href="${pageContext.request.contextPath}/toWithDrawJsp?ID=<%=ID%>">取款</a></li>
                <li><a href="${pageContext.request.contextPath}/toTransferMoneyJsp?ID=<%=ID%>">转账</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>账户基本信息及功能主页面</small>
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
                    <th>密码</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><%=ID%></td>
                    <td><%=passWord%></td>
                    <td><a href="${pageContext.request.contextPath}/lockUser?ID=<%=ID%>">锁定账户</a>
                        &nbsp; | &nbsp;
                        <a href="${pageContext.request.contextPath}/toUpdatePassWordJsp?ID=<%=ID%>">修改密码</a>
                    </td>
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