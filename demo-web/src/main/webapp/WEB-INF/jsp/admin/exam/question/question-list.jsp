<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>题库管理</title>
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
                                                <span class="input-group-addon">题目</span>
                                                <input type="text" class="form-control" name="entity.title" placeholder="题目">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">课程</span>
                                                <input type="text" class="form-control" name="entity.lesson.title" placeholder="课程">
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
                                                    <th>题目</th>
                                                    <th>课程</th>
                                                    <th>类型</th>
                                                    <th>难度</th>
                                                    <th>启用</th>
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
            <script type="text/javascript" src="${contextPath}/resources/js/admin/exam/question/base-question.js"></script>
            <script type="text/html" id="myApplyTpl">
                {{each results as info}}
                <tr>
                    <td>
                        <input type='checkbox' class='child' name='hiddenId' value='{{info._id}}' />
                    </td>
                    <td style="width:450px;">
                        <!--<a href='javascript:void(0)' data-q-id='{{info._id}}'>{{info.title}}</a>-->
                        <div class="cut-info" style="width:450px;" title="{{info.title}}">{{info.title}}</div>
                    </td>
                    <td style="width:150px;">
 						{{if info.lesson!=null}}
							<div class="cut-info" style="width:150px;" title="{{info.lesson.title}}">{{info.lesson.title}}</div>
						{{/if}}
                    </td>
                    <td>
                        {{if info.qusType==0}}
                            单选题
                        {{/if}}
                        {{if info.qusType==1}}
                            多选题
                        {{/if}}
                        {{if info.qusType==2}}
                            判断题
                        {{/if}}
                    </td>
                    <td>
                        {{if info.level==0}}
                            容易
                        {{/if}}
                        {{if info.level==1}}
                            中等
                        {{/if}}
                        {{if info.level==2}}
                            困难
                        {{/if}}
                    </td>
                    <td>{{info.enable}}
                        {{if info.enable==true}}
                            启用
                        {{else}}
                            禁用
                        {{/if}}
                    </td>
                </tr>
                {{/each}}
            </script>

            </html>