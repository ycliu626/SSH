<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>课程管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <h4 class="channel-title"><span class="glyphicon glyphicon-edit"></span><span class="desc">课程编辑</span></h4>
                            <form id="queryForm" class="form-horizontal" role="form" onsubmit="return false">
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.mustLearn" value="true">
                                <input type="hidden" name="entity.studyNum" value="${entity.studyNum}">
                                <input type="hidden" name="entity.createTime" value="${entity.createTime}">
                                <input type="hidden" name="entity.lastUpdate" value="${entity.lastUpdate}">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>课程编号：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.lessonNo" value="${entity.lessonNo}" placeholder="请输入课程编号">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 标题：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}" placeholder="请输入标题">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 简介：
                                    </label>
                                    <div class="col-sm-5">
                                        <textarea class="form-control" rows="6" name="entity.description" placeholder="请输入描述">${entity.description }</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 排序：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.sort" value="${entity.sort}" placeholder="请输入排序">
                                    </div>
                                </div>
<!--                                 <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 必修：
                                    </label>
                                    <div class="col-sm-5">
                                        <select class="form-control" name="entity.mustLearn">
                                            <option value="true" <s:if test="entity.mustLearn==true">selected="selected"</s:if> >是</option>
                                            <option value="false" <s:if test="entity.mustLearn==false">selected="selected"</s:if>>否</option>
                                        </select>
                                    </div>
                                </div> -->
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
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/learn/lesson/lesson-update.js"></script>

            </html>
