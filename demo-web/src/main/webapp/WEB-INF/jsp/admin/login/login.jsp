<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>登录</title>
        </head>

        <body>
            <div class="container">
                <div class="panel panel-default" style="width: 600px; margin: 50px auto;">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <h3 style="text-align: center;">登录系统</h3>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <form id="loginForm" class="form-horizontal" role="form" onsubmit="return false">
                                <div class="form-group">
                                    </label>
                                    <div class="col-sm-12 ">
                                        <div id="msg" style="height: 20px; color: red;text-align: center;"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-1 control-label">帐号：
                                    </label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" name="user.name" id="userName" value="${user.name}" placeholder="请输入帐号">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-1 control-label">密码：
                                    </label>
                                    <div class="col-sm-8">
                                        <input type="password" class="form-control" name="user.password" value="${user.password}" placeholder="请输入密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-5 col-sm-2">
                                        <button style="padding: 6px 30px;" class="btn btn-primary" id="loginBtn">登录</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        <%@include file="../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/login/login.js"></script>

            </html>
