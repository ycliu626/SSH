<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>学院管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <div style="padding:10px;">
                                <form id="searchForm" onsubmit="return false">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">二级党委名称</span>
                                                <input type="text" class="form-control" name="dictCollege.value" placeholder="请输入二级党委名称">
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
                                        <table class="lesson-table">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <input type="checkBox" class="check-all" />
                                                    </th>
                                                    <th>序号</th>
                                                    <th>二级党委名称</th>
                                                    <th>是否包含学生</th>
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
            <script type="text/javascript" src="${contextPath}/resources/js/admin/support/college/base-college.js"></script>
            <script type="text/html" id="myApplyTpl">
                {{each results as info}}
                <tr>
                    <td>
                        <input type='checkbox' class='child' name='hiddenId' value='{{info._id}}' />
                    </td>
                    <td>{{info.ID}}</td>
                    <td>{{info.value}}</td>
                    <td>
                        {{if info.hasStudent==true}}是{{/if}} {{if info.hasStudent==false}}否{{/if}}
                    </td>
                </tr>
                {{/each}}
            </script>

            </html>
