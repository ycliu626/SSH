<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>学员学习进度统计</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../admin-nav.jsp" %>
                    <div class="info-wrap">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <h4 class="channel-title"><span class="glyphicon glyphicon-edit"></span><span class="desc">学员学习进度统计</span></h4>
                                <form id="queryForm" action="" class="form-horizontal" role="form">
                                    <div class="row">
                                        <div class="col-sm-3 col-sm-offset-1">
                                            <div class="input-group">
                                                <span class="input-group-addon">学期</span>
                                                <select class="form-control" name="periodId">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="input-group">
                                                <span class="input-group-addon">类别</span>
                                                <select class="form-control" name="studentType" id="studentType">
                                                    <option value="1">学生</option>
                                                    <option value="2">教职工</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="input-group">
                                                <span class="input-group-addon">维度</span>
                                                <select class="form-control" name="category">
                                                    <option value="1">按学院统计</option>
                                                    <option value="2">按入学年份统计</option>
                                                    <option value="3">按专业统计</option>
                                                </select>
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
                    //加载学期
                    $.post('period!list.action', function(data) {
                        /*optional stuff to do after success */
                        var optionDom = "";
                        $.each(data, function(i, d) {
                            optionDom += "<option value=" + d._id + ">" + d.name + "</option>"
                        });
                        $("select[name='periodId']").append(optionDom);
                    }, 'json');

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
                            // myChart.setOption(option1);
                            var params = {
                                myChart: myChart,
                                url: 'statistics!process',
                                formId: '#queryForm'
                            };
                          
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
