<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>热点专题管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <div style="padding:10px;">
                                <div class="row" style="margin-top: 20px;">
                                    <div class="col-sm-12">
                                        <div class="btn-group">
                                            <!-- <button type="button" class="btn btn-primary" id="button_add">新增</button> -->
                                            <button type="button" class="btn btn-primary" id="button_update">修改</button>
                                            <!-- <button type="button" class="btn btn-primary" id="button_delete">删除</button> -->
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
                                                    <th>热点专题名称</th>
                                                    <th>链接</th>
                                                    <th>最后更新时间</th>
                                                </tr>
                                            </thead>
                                            <tbody id="myApplyTable">
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%@ include file="../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/hot/base-hot.js"></script>
            <script type="text/html" id="myApplyTpl">
                {{each results as info}}
                <tr>
                    <td>
                        <input type='checkbox' class='child' name='hiddenId' value='{{info._id}}' />
                    </td>
                    <td>{{info.title}}</td>
                    <td>
                       <a href='{{info.title}}'>{{info.title}}</a>
                    </td>
                    <td>{{info.lastUpdate}}</td>
                    
                </tr>
                {{/each}}
            </script>

            </html>
