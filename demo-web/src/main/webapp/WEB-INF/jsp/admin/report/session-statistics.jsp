<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>党校分期统计</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../admin-nav.jsp" %>
                    <div class="info-wrap">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <h4 class="channel-title"><span class="glyphicon glyphicon-edit"></span><span class="desc">培训分期统计</span></h4>
                                      <form id="queryForm" action="" class="form-horizontal" role="form">
                                    <div class="row">
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="input-group">
                                                <span class="input-group-addon">开始时间</span>
                                               <input type ="date" class="form-control" name="startDate" min="2010-01-01" value="2010-01-01">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">结束时间</span>
                                               <input type ="date" class="form-control" name="endDate" max="2020-01-01" value="2020-01-01">
                                            </div>
                                        </div>
                                       
                                        <div class="col-sm-2">
                                            <a id="query-btn" class="btn btn-primary">统计</a>
                                        </div>
                                    </div>
                                </form>
                                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                                <div id="main" style="height:600px"></div>
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
                    // 路径配置
                    require.config({
                        paths: {
                            echarts: '${contextPath}/js-lib/echarts-2.2.1/build/dist'
                        }
                    });
                    // 使用
                    require(
                        [
                            'echarts',
                            'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
                        ],
                        function(ec) {
                            // 基于准备好的dom，初始化echarts图表
                            var myChart = ec.init(document.getElementById('main'));
                            var params = {
                                myChart: myChart,
                                url: 'statistics!session.action',
                                formId: '#queryForm'
                            };
                            loadData(params);
                            $("#query-btn").click(function() {
                                loadData(params);
                            });

                            $("#query-btn").trigger("click");
                        }
                    );
                });
                </script>
        </body>

        </html>