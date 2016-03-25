<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation" style="margin-bottom:0px;border-radius:0px;">
        <div class="navbar-header">
            <a class="navbar-brand" href="/home">北京邮电大学</a>
        </div>
        <div>
            <s:if test="#session.loginUser.type<=1">
                <ul class="nav navbar-nav" style="float: right;">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              首页<b class="caret"></b>
            </a>
             <ul class="dropdown-menu">
               <li><a href="user">用户管理</a>
                            </li>
                            <li><a href="new-user">新用户管理</a>
                            </li>
                             </ul>
          </li>
                    <li class="dropdown">
                        <a href="new-user!toAdd">
                        添加
                        </a>
                    </li>
						<!-- <li class="btn-group">
						  <button type="button" class="btn btn-primary" id="button_add">新增</button>
						  <button type="button" class="btn btn-primary" id="button_update">修改</button>
						  <button type="button" class="btn btn-primary" id="button_delete">删除</button>
						</li> -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              修改
            </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        删除
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               查询
            </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            标题
                        </a>
                    </li>
                    <li><a href="#">${sessionScope.loginUser.name}</a>
                    </li>
                    <li><a href="login!userExit.action">退出</a>
                    </li>
                </ul>
            </s:if>
        </div>
    </nav>
    <div class="banner" style="border:0;height: 165px; width: 940px;margin-bottom:0px;border-radius:0px;">
        <img src="../resources/img/student/new-banner.png" alt="红旗飘飘">
    </div>