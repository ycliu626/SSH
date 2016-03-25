<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>学院管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <form id="collegeForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">二级党委信息</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.id" value="${entity.id}">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>二级党委名称：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.value" value="${entity.value}" placeholder="请输入二级党委名称">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 包含学生：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="checkbox" name="entity.hasStudent" style="margin-top: 10px;" value="true" <s:if test="entity==null||entity.hasStudent==true">checked="checked"</s:if>>包含
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
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/support/college/college-update.js"></script>

            </html>
