<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="notice-list">
	<div class="top">
		<div class="top-head">通知公告</div>
		<div class="top-more">
			<a href="notice">更多&gt;&gt;</a>
		</div>
	</div>
	<div id="notice-right-div" style="min-height: 180px;">
	</div>
	<div style="clear: both;"></div>
</div>
<div class="timeline-list">
	<div class="top">
		<div class="top-head">时间轴</div>
	</div>
	<div id="timeline-div"></div>

</div>
<script type="text/javascript" src="${contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/student/notice/notice-right.js"></script>
<script type="text/html" id="notice-right-info">
		{{each results as info}}
		    <div class="info-title">
				<a target="_blank" href="notice!detail?entity._id={{info._id}}">{{info.title}}</a>
				<span style="float: right;">{{info.startDate}}</span>
				<div style="clear: both;"></div>
			</div>
	    {{/each}}
</script>
<script type="text/html" id="timeline-info">
		{{each results as info}}
		    <div class="timeline">
				<div class="line"></div>
				{{if info.finished==true}}
					<div class="icon-success">
						<div class="icon-title">{{info.topChar}}</div>
					</div>
					<div class="msg">
						<div>{{info.lastUpdate}}</div>
						<div>成为{{info.name}}</div>
					</div>
				{{else}}
					<div class="icon-fail">
						<div class="icon-title">{{info.topChar}}</div>
					</div>
					<div class="msg-fail"></div>
				{{/if}}

			</div>
	    {{/each}}
</script>