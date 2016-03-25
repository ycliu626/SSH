<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>学员学习进度详情</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../admin-nav.jsp" %>
                    <div class="info-wrap">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <h4 class="channel-title"><span class="glyphicon glyphicon-edit"></span><span class="desc">学员学习进度详情</span></h4>
                                <form id="queryForm" action="" class="form-horizontal" role="form">
                                    <div class="row">
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="input-group">
                                                <span class="input-group-addon">学期</span>
                                                <select class="form-control" name="periodId">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">二级党委</span>
                                                <select class="form-control" name="collegeId">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <a id="query-btn" class="btn btn-primary">统计</a>
                                        </div>
                                    </div>
                                </form>
                                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                                <div class="row" style="margin-top: 20px;">
                                    <div class="col-sm-12">
                                        <table class="lesson-table" id="lessonTable">
                                            <thead>
                                                <tr>
                                                    <th>学员</th>
                                                    <th>二级党委</th>
                                                    <th>学习进度</th>
                                                    <!-- <th>考试进度</th> -->
                                                    <th>考试成绩</th>
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
                    <%@ include file="../../student/footer.jsp" %>
            </div>
            <%@include file="../admin-js.jsp" %>
                <!-- ECharts单文件引入 -->
                <script src="${contextPath}/js-lib/echarts-2.2.1/build/dist/echarts.js"></script>
                <script src="${contextPath}/resources/js/admin/report/report.js"></script>
                <script type="text/javascript">
                $(function() {

                    $.post('college!list.action', function(data) {
                        /*optional stuff to do after success */
                        var optionDom = "";
                        $.each(data, function(i, d) {
                            optionDom += "<option value=" + d.ID + ">" + d.value + "</option>"
                        });
                        $("select[name='collegeId']").html(optionDom);
                    }, 'json');
                    $.post('period!list.action', function(data) {
                        /*optional stuff to do after success */
                        var optionDom = "";
                        $.each(data, function(i, d) {
                            optionDom += "<option value=" + d._id + ">" + d.name + "</option>"
                        });
                        $("select[name='periodId']").html(optionDom);
                    }, 'json');
                    $("#query-btn").click(function() {
                        var formData = $("#queryForm").serialize();
                        $.ajax({
                                url: "statistics!processing.action",
                                type: 'post',
                                dataType: 'json',
                                data: formData
                            })
                            .done(function(data) {
                                var dataList = '<tr>';
                                /*optional stuff to do after success */
                                $.each(data, function(i, d) {
                                    dataList += "<td><a target='_blank' href='student!showDetail?baseStudents._id=" + d.studentId + "'>" + d.studentName + "</a></td>";
                                    dataList += "<td>" + d.college + "</td>";
                                    dataList += "<td>" + d.learnPercent + "</td>";
                                    dataList += "<td>" + d.result + "</td>";
                                    dataList += '</tr>';
                                });
                                $("#myApplyTable").html(dataList);
                            }, 'json');
                    });
                    $("#query-btn").trigger("click");
                });
                </script>
        </body>

        </html>
