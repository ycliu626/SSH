<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>章节测试成绩查看</title>
        </head>

        <body>

            <div class="container">
                <%@include file="../../admin-nav.jsp" %>

                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">

                            <div style="padding:10px;">
                                <form id="searchForm" onsubmit="return false">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="input-group">
                                                <span class="input-group-addon">学号</span>
                                                <input type="text" class="form-control" name="entity.studentPin" placeholder="学号">
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="input-group">
                                                <span class="input-group-addon">姓名</span>
                                                <input type="text" class="form-control" name="entity.studentName" placeholder="姓名">
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="input-group">
                                                <span class="input-group-addon">课程标题</span>
                                                <input type="text" class="form-control" name="entity.lesson.Title" placeholder="课程标题">
                                            </div>
                                        </div>

                                        <div class="col-sm-3">
                                            <button type="button" class="btn btn-primary" id="queryBtn">查询</button>
                                        </div>
                                    </div>
                                </form>
                                <div class="row" style="margin-top: 20px;">
                                    <div class="col-sm-12">
                                        <table class="lesson-table" id="lessonTable">
                                            <thead>
                                                <tr>
                                               <!--      <th>
                                                        <input type="checkBox" class="check-all" />
                                                    </th> -->
                                                    <th>学号</th>
                                                    <th>姓名</th>
                                                    <th>课程编号</th>
                                                    <th>课程标题</th>
                                                    <th>成绩</th>
                                                    <th>是否通过</th>
                                                    <th>考试时间</th>
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
                <%@ include file="../../../student/footer.jsp"%>
            </div>

        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/result/chapter/chapter-result.js"></script>
            <script type="text/html" id="myApplyTpl">
                {{each results as info}}
                <tr>
                   <!--<td>
                       <input type='checkbox' class='child' name='hiddenId' value='{{info._id}}' />
                   </td>-->
                    <td>
                        {{info.studentPin}}
                    </td>
                    <td>
                        <a href="student!showDetail?baseStudents._id={{info.studentId}}">{{info.studentName}}</a>
                    </td>
                    <td>
                        {{if info.lesson!=null}}{{info.lesson.lessonNo}}{{/if}}
                    </td>
                    <td>
                        {{if info.lesson!=null}}{{info.lesson.title}}{{/if}}
                    </td>
                    <td>
                        {{info.result}}
                    </td>
                    <td>
                        {{if info.pass==true}} 通过 {{else}} 未通过 {{/if}}
                    </td>
                    <td>
                        {{info.examTime}}
                    </td>
                </tr>
                {{/each}}
            </script>
            </html>