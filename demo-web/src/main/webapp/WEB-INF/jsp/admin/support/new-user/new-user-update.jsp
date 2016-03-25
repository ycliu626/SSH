<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>用户管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <form id="newUserForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-user"></span>
                                    <b style="margin-left: 5px;">新用户信息</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.admin" value="${entity.admin}">
                                <input type="hidden" name="entity.firstLogin" value="${entity.firstLogin}">
                                <input type="hidden" name="oldPwd" value="${entity.password}">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>日期：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="date" class="form-control" name="entity.date" value="${entity.date}" placeholder="请输入日期" <s:if test="entity!=null">readonly="readonly"</s:if>>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>姓名：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.name" value="${entity.name}" placeholder="请输入姓名" <s:if test="entity!=null">readonly="readonly"</s:if>>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 学院：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.collegeName" value="${entity.collegeName}" placeholder="请输入学院">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 用途：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.purpose" value="${entity.purpose}" placeholder="请输入用途">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 数据：
                                    </label>
                                    <div class="col-sm-5">
                                        <select id="type" class="form-control" name="entity.type">
                                            <option value="1" <s:if test="entity.type==1">selected="selected"</s:if>>T_JZG</option>
                                            <option value="2" <s:if test="entity.type==2">selected="selected"</s:if>>T_JZG2</option>
                                            <!-- <option value="0" <s:if test="entity.type==0">selected="selected"</s:if>>系统管理员</option> -->
                                        </select>
                                    </div>
                                </div>
                                    <%-- <div class="col-sm-5">
                                        <select id="college" <s:if test="entity==null||entity.type<2">disabled="disabled"</s:if> class="form-control" name="entity.college">
                                            <s:iterator value="dictCollegeList">
                                                <option value="<s:property value=" id "/>" <s:if test="entity.college==id">selected="selected"</s:if>
                                                    >
                                                    <s:property value="value" />
                                                </option>
                                            </s:iterator>
                                        </select>
                                        <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.purpose" value="${entity.purpose}">
                                    </div>
                                </div> --%>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        邮箱：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.email" value="${entity.email}" placeholder="请输入邮箱">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        电话：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.mobile" value="${entity.mobile}" placeholder="请输入电话">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        备注：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.remark" value="${entity.remark}" placeholder="请输入备注">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-5 col-sm-2">
                                        <button class="btn btn-default" id="queryBtn">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/support/new-user/new-user-update.js"></script>

            </html>
