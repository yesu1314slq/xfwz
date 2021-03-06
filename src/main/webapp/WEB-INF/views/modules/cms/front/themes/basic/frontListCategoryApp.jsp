<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>${category.name}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="${ctxStatic}/jquery/jquery-2.1.4.min.js"></script>
    
	<!-- 引入 Bootstrap -->
	<link href="${ctxStatic}/xfwz/Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/xfwz/Css/indexApp.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <div class="backimg">
    <div class="fontcenter">
        <img src="${ctxStatic}/xfwz/Images/imgapp/phone_logo.png" width="46%" style="margin:12px auto;"> 
    </div>
    <div class="weizhi">
	当前位置： <a href="${ctx }">首页</a>	<span>&gt;</span><a href="${ctx}/list-${category.id }${urlSuffix}" class="on">${category.name }</a>
    </div>
    <div class="list">
    <!--更多列表页-->
	<div class="morelist clearfix">
		<!--左侧内容-->
		<c:forEach items="${categoryList}" var="category1" varStatus="status">
		<div>
        	<span class="title"><a href="${ctx}/list-${category1.id }${urlSuffix}" target="_blank"><dt class="on">${category1.name }</dt></a></span>
        	<%-- <a href="${ctx}/list-${category1.id }${urlSuffix}" target="_blank" style="float:right;line-height:34px;">更多>></a> --%>
			<div id="wzList" class="morelist_l_con">
				<ul>
					<c:forEach items="${fnc:getArticleList(site.id, category1.id, 8, '')}" var="article" varStatus="status">
						<li><a href="${article.url }" title="${article.title }" target="_blank">${fns:abbr(article.title,150)}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		</c:forEach>
	</div>
  </div>
  <div style="height:147px;"></div>
  <!-- 底部 -->
  <jsp:include page="footerApp.jsp"></jsp:include>
</body>
</html>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>