<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>公开课浏览统计</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../admin-nav.jsp" %>
                    <div class="info-wrap">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <h4 class="channel-title"><span class="glyphicon glyphicon-edit"></span><span class="desc">公开课浏览统计</span></h4>
                                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                                <div id="main" style="height:600px"></div>
                            </div>
                        </div>
                    </div>
                    <%@ include file="../../student/footer.jsp" %>
            </div>
            <!-- 添加时间modal -->
            <div class="modal fade bs-example-modal" id="statisticsModal" tabindex="-1" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <!-- 按公开课显示 人数/转化率饼图 -->
                            <div id="main" style="height:400px"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end添加时间modal -->
            <%@include file="../admin-js.jsp" %>
                <!-- ECharts单文件引入 -->
                <script src="${contextPath}/js-lib/echarts-2.2.1/build/dist/echarts.js"></script>
                <script src="${contextPath}/resources/js/admin/report/report.js"></script>
                <script type="text/javascript">
                $(function() {
                    var option1 = {
                        tooltip: {
                            show: true, 
                            formatter: function (params,ticket,callback) {
                                if (params.seriesName !== '参加人数') {
                                    return params.seriesName + ": " + params.value + '%';
                                } else {
                                    return params.seriesName + ": " + params.value + '人';
                                }
                                
                            }
                        },
                        legend: {
                            data: ['']
                        },
                        xAxis: [{
                            type: 'category',
                            data: ["公开课1", "公开课2", "公开课3"]
                        }],
                        yAxis: [{
                            type: 'value'
                        }],
                        grid: {
                            y2: 100,
                        },
                        series: [{
                            "name": "已转化",
                            "type": "bar",
                            stack: '转化率',
                            "data": [60, 55, 50]
                        }, {
                            "name": "未转化",
                            "type": "bar",
                            stack: '转化率',
                            "data": [40, 45, 50]
                        }, {
                            "name": "参加人数",
                            "type": "bar",
                            "data": [60, 55, 50]
                        }]
                    };

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
                                url: 'statistics!viewOpen.action'
                            }
                            loadData(params);
                        }
                    );
                });
                </script>
        </body>

        </html>