<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>综合测试</title>
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
                                                <span class="input-group-addon">测试名称</span>
                                                <input type="text" class="form-control" name="entity.title" placeholder="测试名称">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">试卷名称</span>
                                                <input type="text" class="form-control" name="entity.testPaper.title" placeholder="试卷名称">
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
                                                    <th>测试名称</th>
                                                    <th>出题方式</th>
                                                    <th>试卷名称</th>
                                                    <th>启用</th>
                                                    <th>计时</th>
                                                    <th>考试时长</th>
                                                </tr>
                                            </thead>
                                            <tbody id="myApplyTable">
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td style="text-align: right; border: none;" colspan="10">
                                                        <ul class="pagination" id="page-ul">
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
                <%@ include file="../../../student/footer.jsp"%>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/exam/complete/base-complete.js"></script>
            <script type="text/html" id="myApplyTpl">
                {{each results as info}}
                <tr>
                    <td>
                        <input type='checkbox' class='child' name='hiddenId' value='{{info._id}}' />
                    </td>
                    <td>
                        <!--<a href='javascript:void(0)' data-q-id='{{info._id}}'>{{info.title}}</a>-->
                        {{info.title}}
                    </td>
                    <td>
                         {{if info.randomQuestion==true}} 随机 {{else}} 固定 {{/if}}
                    </td>
                    <td>
                        {{if info.randomQuestion==false}} {{info.testPaper.title}} {{/if}}
                    </td>
                    <td>
                        {{if info.enable==true}} 是 {{else}} 否 {{/if}}
                    </td>
                    <td>
                        {{if info.enableTimer==true}} 是 {{else}} 否 {{/if}}
                    </td>
                    <td>
                         {{if info.enableTimer==true}}{{info.examLength}}分钟{{/if}}
                    </td>
                </tr>
                {{/each}}
            </script>

            </html>
