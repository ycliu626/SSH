<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jQuery Version 1.11.0 -->
    <script type="text/javascript" src="${contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="${contextPath}/bower_components/jquery/dist/jquery.rotate.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script type="text/javascript" src="${contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
<%--     <script type="text/javascript" src="${contextPath}/resources/js/plugins/metisMenu/metisMenu.min.js"></script> --%>
    <!-- for ie8 -->
    <!--<script type="text/javascript" src="${contextPath}/js-lib/bootstrap-3.2.0/js/html5shiv.js"></script>
    <script type="text/javascript" src="${contextPath}/js-lib/bootstrap-3.2.0/js/respond.min.js"></script>-->
    <!-- 模板引擎 -->
    <script type="text/javascript" src="${contextPath}/js-lib/template.js"></script>
    <!-- 分页控件 -->
    <script type="text/javascript" src="${contextPath}/js-lib/bootstrap-paginator.js"></script>
    <!-- 日历控件 -->
    <script type="text/javascript" src="${contextPath}/bower_components/bootstrap-datetimepicker-0.0.11/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="${contextPath}/bower_components/bootstrap-datetimepicker-0.0.11/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <!-- Alert控件 -->
    <script type="text/javascript" src="${contextPath}/js-lib/alertify/js/alertify.js"></script>
    <!-- 下拉控件 -->
    <script type="text/javascript" src="${contextPath}/bower_components/bootstrap-select/bootstrap-select.min.js"></script>
    <!-- 表单验证控件 -->
	<script src="${contextPath}/bower_components/bootstrapValidator/dist/js/bootstrapValidator.js"></script>
	<script src="${contextPath}/bower_components/bootstrapValidator/dist/js/language/zh_CN.js"></script>
	<script src="${contextPath}/js-lib/export-excel.js"></script>
	<script type="text/javascript">
		$('.mydate').datetimepicker({
	        format: 'yyyy-mm-dd',
	        language: 'zh-CN',
	        minView: 'year'
	      }).on('changeDate', function(ev){
	    	  $(this).trigger('blur');
	    	});;
	</script>
