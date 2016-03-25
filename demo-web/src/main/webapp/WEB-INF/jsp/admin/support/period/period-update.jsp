<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>党课学期管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <form id="infoForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">党课学期管理</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>党课学期：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.name" value="${entity.name}" placeholder="请输入党课学期" <s:if test="entity!=null">readonly="readonly"</s:if>>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>学期开始时间：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control  mydate" readonly="readonly"
                                        placeholder="请选择学期开始时间"
                                         name="entity.startDate" value="<s:date name=" entity.startDate " format="yyyy-MM-dd"/>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>学期结束时间：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control mydate" readonly="readonly"
                                        placeholder="请选择学期结束时间"
                                          name="entity.endDate" value="<s:date name=" entity.endDate " format="yyyy-MM-dd"/>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 学时：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.hour" value="${entity.hour}" placeholder="请输入学时">
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
            <script type="text/javascript" src="${contextPath}/resources/js/admin/support/period/period-update.js"></script>

            </html>
