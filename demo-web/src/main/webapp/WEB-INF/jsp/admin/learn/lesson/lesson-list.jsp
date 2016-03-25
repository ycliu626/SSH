<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>课程管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <h4 class="channel-title"><span class="glyphicon glyphicon-edit"></span><span class="desc">课程管理</span></h4>
                            <div style="padding:10px;">
                                <form id="searchForm" onsubmit="return false">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">课程编号</span>
                                                <input type="text" class="form-control" name="entity.lessonNo" placeholder="课程编号">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">标题</span>
                                                <input type="text" class="form-control" name="entity.title" placeholder="标题">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <button type="button" class="btn btn-primary" id="queryBtn">查询</button>
                                        </div>
                                    </div>
                                </form>
                                <div class="row" style="margin-top: 20px;">
                                    <div class="col-sm-12">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary" id="button_add">新增</button>
                                            <button type="button" class="btn btn-primary" id="button_update">修改</button>
                                            <button type="button" class="btn btn-primary" id="button_delete">删除</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 20px;">
                                    <div class="col-sm-12">
                                        <table class="lesson-table" id="lessonTable">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <input type="checkBox" class="check-all" />
                                                    </th>
                                                    <th>课程编号</th>
                                                    <th>标题</th>
                                                    <!-- <th>是否必学</th> -->
                                                    <th>学时</th>
                                                    <th>排序</th>
                                                    <th>操作</th>
                                                </tr>
                                            </thead>
                                            <tbody id="myApplyTable">
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td style="text-align: right; border: none;" colspan="10">
                                                        <ul class="pagination" id="page-ul" data-total-pages="${pageEntity.totalPages}" data-page-size="${pageEntity.pageSize}">
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/learn/lesson/base-lesson.js"></script>
            <script type="text/html" id="myApplyTpl">
                {{each results as info}}
                <tr>
                    <td>
                        <input type='checkbox' class='child' name='hiddenId' value='{{info._id}}' />
                    </td>
                    <td>{{info.lessonNo}}</td>
                    <td style="width:400px;">
                        <!--<a href='javascript:void(0)' data-pku-id='{{info._id}}'>{{info.title}}</a>-->
                        <div class="cut-info" style="width:400px;" title="{{info.title}}">{{info.title}}</div>
                    </td>
                    <!--<td>
                        {{if info.mustLearn==true}} 是 {{else}} 否 {{/if}}
                    </td>-->
                    <td>{{info.hour}}</td>
                    <td>{{info.sort}}</td>
                    <td>
                        <a href="lesson!toDetail.action?entity._id={{info._id}}" class="btn btn-primary">查看</a>
                    </td>
                </tr>
                {{/each}}
            </script>

            </html>
