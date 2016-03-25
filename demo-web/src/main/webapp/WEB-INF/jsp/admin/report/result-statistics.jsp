<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>培训成绩统计</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../admin-nav.jsp" %>
                    <div class="info-wrap">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <h4 class="channel-title"><span class="glyphicon glyphicon-edit"></span><span class="desc">培训成绩统计</span></h4>
                                <form id="queryForm" action="" class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <div class="col-sm-3 col-sm-offset-1">
                                            <select class="form-control" name="periodId">
                                                <option value="">全部</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                                
                                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                                <div class="row" style="margin-top: 20px;">
	                                <div class="col-sm-12">
	                                    <table class="lesson-table" id="lessonTable">
	                                        <thead>
	                                            <tr>
	                                                <th>公开课</th>
	                                                <th>人数</th>
	                                                <th>转化率</th>
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
            <script type="text/javascript">
            $(function() {
                //加载学期
                $.post('period!list.action', function(data) {
                    /*optional stuff to do after success */
                    var optionDom = "";
                    $.each(data, function(i, d) {
                        optionDom += "<option value=" + d._id + ">" + d.name + "</option>"
                    });
                    $("select[name='periodId']").append(optionDom);
                }, 'json');
            });
            </script>
        </body>

        </html>