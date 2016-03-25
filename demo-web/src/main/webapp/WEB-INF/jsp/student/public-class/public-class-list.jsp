<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>红旗飘飘公开课</title>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="info-board clearfix">
			<div class="public-class-banner"></div>
			<div class="info-wrapper">
				<table class="lesson-table">
					<thead>
						<tr>
							<th>公开课</th>
							<th>主讲人</th>
							<th>召开时间</th>
						</tr>
					</thead>
					<tbody id="public-class-table">
					</tbody>
					<tfoot>
						<tr>
							<td style="text-align: center; border: none;" colspan="4">
								<ul class="pagination" id="page-ul">
								</ul>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
			<div class="right-panel">
				<%@ include file="../notice-right.jsp"%>
			</div>
		</div>
		<%@ include file="../footer.jsp"%>
<!-- 		<div class="panel panel-default">
	<div class="row">
		<div class="col-sm-8 ">
			<div class="panel panel-default">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="col-sm-4" style="text-align: center;">标题</th>
							<th class="col-sm-2">主讲人姓名</th>
							<th class="col-sm-2">召开地点</th>
							<th class="col-sm-2">召开时间</th>
						</tr>
					</thead>
					<tbody id="public-class-table">
						<s:if test="pagePublicClass.results.size>0">
							<s:iterator value="pagePublicClass.results">
								<tr>
									<td><a href='javascript:void(0)'
										data-pku-id='<s:property value="_id"/>'><s:property
												value="title" /></a></td>
									<td><s:property value="speaker" /></td>
									<td><s:property value="place" /></td>
									<td><s:date name="startDate" format="yyyy-MM-dd" /></td>
								</tr>
							</s:iterator>
						</s:if>

					</tbody>
					<tfoot>
						<tr>
							<td style="text-align: right; border: none;" colspan="2">
								<ul class="pagination" id="page-ul"
									data-total-pages="${pagePublicClass.totalPages}"
									data-page-size="${pagePublicClass.pageSize}">
								</ul>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
		<div class="col-sm-4 ">

			<div class="panel panel-default">
				<div class="panel-heading" style="height: 30px">
					<h3 class="panel-title">
						<div style="float: left">公告栏</div>
						<div style="float: right">
							<a href="#">更多</a>
						</div>
					</h3>
				</div>
				<div class="panel-body">
					<s:iterator value="listNoticeInfo" status="st">
						<s:if test="#st.index <5">
							<div class="info-title">
								<a href="#"> <s:property value="title" />
								</a> <span style="float: right;"><s:date name="releaseDate"
										format="MM-dd" /></span>
							</div>
						</s:if>
					</s:iterator>

				</div>
			</div>
			<div class="panel panel-default" style="height: 300px;">
				<div class="timeline">
					<div class="line"></div>
					<div class="timeline-content">
						<div class="icon-success">
							<div class="icon-title">申</div>
						</div>
						<div class="triangle"></div>
						<div class="msg">2004年12月21日申请加入中国共产党</div>
					</div>
				</div>
				<div class="timeline">
					<div class="line"></div>
					<div class="timeline-content">
						<div class="icon-success">
							<div class="icon-title">积</div>
						</div>
						<div class="triangle"></div>
						<div class="msg">通过考试成为积极分子</div>
					</div>
				</div>
				<div class="timeline">
					<div class="line"></div>
					<div class="timeline-content">
						<div class="icon-success">
							<div class="icon-title">章</div>
						</div>
						<div class="triangle"></div>
						<div class="msg">2005年3月21日通过第一课时的考试</div>
					</div>
				</div>

			</div>
		</div>
	</div>

</div> -->
	</div>
</body>

<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/public-class/public-class-list.js"></script>
<script type="text/html" id="public-class-list-info">
		{{each results as info}}
		    <tr>
				<td><a href='javascript:void(0)' data-bupt-id='{{info._id}}'>{{info.title}}</a></td>
				<td>{{info.speaker}}</td>
				<td>{{info.startDate}}</td>
			</tr>
	    {{/each}}
</script>
</html>