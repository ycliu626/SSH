<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="student/header.jsp" %>
<link rel="stylesheet" href="">
<title>党校介绍</title>
<style>
        .p-content {
            margin: 20px 0 0 0px;
        }
</style>
</head>

<body>
	<div class="container">
		<%@ include file="home-nav.jsp"%>
		<div class="sub-main clearfix">
			<div class="cur-position"><span>当前位置：</span><span>党校介绍</span></div>
			<div class="article-content">
<%-- 				<div class="title">${entity.d_title}</div>
				<div class="publish-date">${entity.date}</div>
				<div class="content">${entity.d_content}</div>
				<s:if test="entity.attachment!=null&&entity.attachment!=''">
					<p class="p-content">
                       附件：<a href="download.action?fileName=${entity.attachment}">点击下载</a>
                   </p>
				</s:if> --%>
				<div class="title">党校介绍</div>
				<div style="margin: 0 auto;width: 200px;">
					<img alt="" src="${contextPath}/resources/img/home/xh1.jpg" width="200px">
				</div>
				<div class="content">中国共产党对党员和党员干部进行培训、教育的学校。其任务是，通过有计划地培训，提高学员用马克思主义立场、观点、方法观察和处理问题的能力；结合新的形势，提高学员的政治思想观念和科学文化水平，增强党性，进一步发挥先锋模范作用。党校还承担着党的建设理论的研究，以及对党组织和党员状况的调查研究等任务。基层党校还承担对入党积极分子的培训工作，党校基本是每位党员必须经历的一个培训场所。</div>
				<div style="margin: 0 auto;width: 200px;">
					<img alt="" src="${contextPath}/resources/img/home/xh2.jpg" width="200px">
				</div>
				<div class="content">中央党校以学习邓小平理论和“三个代表”重要思想为中心，根据党中央提出的提高干部的理论素养、世界眼光、战略思维、党性修养等基本要求，建立了教学新布局。开设有“马列主义基本问题”、“毛泽东思想基本问题”、“邓小平理论基本问题” 和“三个代表”重要思想以及“当代世界经济”、“当代世界科技”、“当代世界法制”、“当代世界军事和我国国防”、“当代世界和我国的民族与宗教”、“当代世界思潮”等课程，引导学员对国际国内重大现实和战略问题进行研究和讨论，并在教学的全过程贯穿增强党性的要求，开展党性党风教育。定期邀请中央领导和中央有关部门的负责同志以及各方面的专家来校作“形势、国情、政策”的报告。中央党校坚持理论联系实际的原则，实行“实事求是”的校训。教学中坚持自学为主、读原著为主和加强研讨的方法，坚持联系国内大局和国际大局深化理论学习的方法，坚持结合个人工作实际和思想实际促进主观世界改造的方法。中央党校的科研工作，以研究建设中国特色社会主义重大现实和战略问题为重点，以调查研究为基础，努力结合国内国际形势的发展变化进行理论创新，为教学服务，为中央决策服务，为社会主义物质文明、政治文明和精神文明建设服务。根据中央决定，中央党校成立了邓小平理论研究中心，在围绕邓小平理论和“三个代表”重要思想以及重大现实问题的研究中，取得了一批高质量的成果。从1995年起，中央党校先后有一大批优秀专著、论文、电视片等荣获全国精神文明建设“五个一工程”奖和其它奖项。从“七五”至“十五”期间，承担100多项国家科研课题，充分发挥了党校作为思想理论阵地的作用。</div>
				<div style="margin: 0 auto;width: 200px;">
					<img alt="" src="${contextPath}/resources/img/home/xh3.jpg" width="200px">
				</div>
				<div class="content">中共中央党校是轮训培训党的高中级领导干部和马克思主义理论干部的最高学府，是学习、研究、宣传马列主义、毛泽东思想、邓小平理论和“三个代表”重要思想的重要阵地和党性锻炼的熔炉。党的十四大以来，一直到十六大召开以后，中央党校紧紧围绕落实用邓小平理论和“三个代表”重要思想武装全党这一战略任务，以深化改革为动力，全面推进党校建设，教学、科研、行政、后勤等各项工作都取得了新的进展。</div>
			</div>
		</div>
		<%@ include file="student/footer.jsp"%>
	</div>
	<%@include file="student/student-js.jsp"%>
	<script type="text/javascript" src="${contextPath}/js-lib/slick-1.5.0/slick/slick.js"></script>
	<script src="${contextPath}/resources/js/home-nav.js"></script>
</body>
</html>
