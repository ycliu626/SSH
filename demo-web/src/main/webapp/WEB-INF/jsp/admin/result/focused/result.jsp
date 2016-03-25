<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <style type="text/css">
    @media screen {
        #printSection {
            display: none;
        }
    }
    
    @media print {
        body * {
            visibility: hidden;
        }
        #printSection,
        #printSection * {
            visibility: visible;
        }
        #printSection {
            position: absolute;
            left: 120px;
            top: 60px;
        }
        .lesson-table {
            width: 100%;
        }
        .lesson-table thead {
            height: 47px;
        }
        .lesson-table thead tr {
            height: 40px;
        }
        .lesson-table thead tr th {
            text-align: center;
            font-size: 16px;
            font-weight: normal;
            padding: 0px 20px;
            color: #eee;
            border: 1px solid #888;
        }
        .lesson-table tbody tr {
            height: 35px;
            background-color: #eceae8;
        }
        .lesson-table tbody tr td {
            text-align: center;
            font-size: 14px;
            font-weight: normal;
            padding: 0px 20px;
            border: 1px solid #888;
        }
        .lesson-table tbody tr td a {
            text-decoration: none;
        }
        .lesson-table tbody tr td a:hover,
        .lesson-table tbody tr td a:focus {
            cursor: pointer;
        }
    }
    </style>>
    <div class="modal fade" id="resultPringModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" style="width:1200px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">打印预览</h4>
                </div>
                <div class="modal-body">
                    <div id="printPage" class="clearfix">
                        <h3 style="text-align:center;margin: 30px 0;">集中考试成绩</h3>
                        <input type="hidden" name="entity._id">
                        <div class="h-time"></div>
                        <div class="issue-content">
                            <table class="lesson-table">
                                <thead>
                                    <tr>
                                        <th style="width: 150px;">党校学期</th>
                                        <th style="width: 150px;">党校班级</th>
                                        <th style="width: 150px;">学号</th>
                                        <th style="width: 150px;">姓名</th>
                                        <th style="width: 150px;">考试时间</th>
                                        <th style="width: 150px;">成绩</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td id="period"></td>
                                        <td id="className"></td>
                                        <td id="studentPin"></td>
                                        <td id="name"></td>
                                        <td id="time"></td>
                                        <td id="result"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="prin" class="modal-footer">
                    <button type="button" style="align:center" class="btn btn-default modal-confirm-btn" onclick="dprint()">打印</button>
                </div>
            </div>
        </div>
    </div>
