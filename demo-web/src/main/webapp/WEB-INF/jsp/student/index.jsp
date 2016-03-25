<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>党校学习</title>

<link href="js-lib/alertify/css/alertify.core.css" rel="stylesheet">
<link href="js-lib/alertify/css/alertify.bootstrap.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/vendor/bootstrap-3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<%@ include file="./student-nav.jsp"%>
		<div class="panel panel-default">
			<div class="row">
				<div class="col-md-8  ">
					<div class="panel ">
						<h2 style="cursor: pointer;"
							onclick="location.href='study-course'">当前整体学习进度</h2>
						<div class="progress progress-striped active"
							style="margin-left: 60px; margin-top: 20px;">
							<div class="progress-bar progress-bar-success "
								role="progressbar" aria-valuenow="60" aria-valuemin="0"
								aria-valuemax="100" style="width: 40%;">
								<span>40% 完成</span>
							</div>
						</div>
					</div>
					<div class="panel ">
						<h2>当前课程学习进度</h2>
						<div>
							<div  class="col-md-4">
								<img alt="课程图片"  style="width:100%;height:auto;"  src="resources/img/course/imgClass.jpg" >
								
							</div>
							<div style=" word-break: break-all;" class="col-md-8">
								<div>jfnefn;lefeawnfnawelfk;nwefn;aefnmklaw;enfl;wenfwela;kfn;awenfawl;efnawen;fl;awenffwef;asnfl;wenf;awnfw;nefasl;dfn;wenf;</div>
								<div  style="padding: 5px;">
									<button type="button" class="btn btn-link" id="study-course-all">继续学习</button>
									<button type="button" class="btn btn-link" id="study-course-not-test">章节测试</button>
							  </div>
							</div>
						</div>

					</div>
					
				</div>
				<div class="col-md-4 ">

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
										<a href="#"> <s:property value="title" /></a> <span
											style="float: right;"><s:date name="releaseDate"
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
								<div class="mes">2004年12月21日申请加入中国共产党</div>
							</div>
						</div>
						<div class="timeline">
							<div class="line"></div>
							<div class="timeline-content">
								<div class="icon-success">
									<div class="icon-title">积</div>
								</div>
								<div class="triangle"></div>
								<div class="mes">2005年1月21日通过考试成为积极分子</div>
							</div>
						</div>
						<div class="timeline">
							<div class="line"></div>
							<div class="timeline-content">
								<div class="icon-success">
									<div class="icon-title">章</div>
								</div>
								<div class="triangle"></div>
								<div class="mes">2005年3月21日通过第一课时的考试</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>

	</div>
</body>
<%@include file="./student-js.jsp"%>
<script type="text/javascript">
	$(function() {
		$("#text-home").attr("class", "active")
	});
</script>
</html>