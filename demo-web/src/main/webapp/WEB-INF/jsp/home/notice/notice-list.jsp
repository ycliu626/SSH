<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../../student/header.jsp" %>
<title>通知公告</title>
<style>
.data-panel{
	width: 100%;
	height: 100%;
}
.data-div{
	padding: 10px 30px;
}
.data-div .data-info{
	border-bottom: 1px dotted #666;
}
.data-div .data-info a{
	color: black;
}
.data-div .data-info .date{
	float: right;
	color: #666
}
</style>
</head>

<body>
	<div class="container">
		<%@ include file="../../home-nav.jsp"%>
		<div class="scroll-news" id="scrollNews">
			<ul class="clearfix">
				<s:iterator value="noticeList">
					<li class="info-title"><a  href="${_id}">${title}</a></li>
				</s:iterator>
			</ul>
		</div>
		<div class="sub-main clearfix">
			<div class="cur-position"><span>当前位置：</span><span>${position}</span></div>
			<table class="sub-table">
				<thead>
					<tr class="col-name">
						<th class="width70">文章标题</th>
						<th>发表时间</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="noticeList">
						<td><a target="_blank" href="notice!detail?entity._id=${_id}">${title}</a></td>
						<td><s:date name="startDate" format="yyyy-MM-dd" /></td>
					</s:iterator>
				</tbody>
				<tfoot>
					
				</tfoot>
			</table>
		</div>
		<%@ include file="../../student/footer.jsp"%>
	</div>
	<%@include file="../../student/student-js.jsp"%>
</body>
</html>
