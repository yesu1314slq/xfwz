<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${category.name}</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="${category.description}" />
	<meta name="keywords" content="${category.keywords}" />
    <link href="${ctxStatic}/xfwz/Css/page.css" rel="stylesheet" type="text/css" />
    <style>
    	.menulist ul li, .lianjie{
    		width:12.5% !important;
    	}
    </style>
</head>

<body>
<div id="main" class="main">
	<div class="wrapper white_bg" id="main_con">
		<div class="main_con" style="padding:16px 60px;"> 
			<!--当前位置-->
		         
			<div class="dqwz"> 
				<span>当前位置：</span>
				<a href="http://xfj.shanxi.gov.cn">首页</a>
				<span>&gt;</span><a href="${ctx}/list-${category.id }${urlSuffix}" class="on">${category.name }</a>
									
			</div>	
		
			<!--更多列表页-->
			<div class="morelist clearfix">
				<!--左侧内容-->
				<c:forEach items="${categoryList}" var="category1" varStatus="status">
				<div class="morelist_l">
				
	                <dl id="tab_nav1" class="tab_nav" style="width:100%;">
	               		<a href="${ctx}/list-${category1.id }${urlSuffix}" target="_blank"><dt class="on">${category1.name }</dt></a>
	               		<a href="${ctx}/list-${category1.id }${urlSuffix}" target="_blank" style="float:right;line-height:34px;">更多>></a>
	                </dl>
					<div id="wzList" class="morelist_l_con">
					<ul>
					 <c:forEach items="${fnc:getArticleList(site.id, category1.id, 8, '')}" var="article" varStatus="status">
					 
					 <li><a href="${article.url }" title="${article.title }" target="_blank"><p>${fns:abbr(article.title,150)}</p><span>[<fmt:formatDate value="${article.updateDate}" pattern="yyyy-MM-dd"/>]</span></a></li>
					
					 </c:forEach>
					 </ul>
					</div>
				</div>
				
				</c:forEach>
				
			
				
			</div>
		</div>
		<!--main_con--> 
	</div>
	<!--wrapper--> 
</div>
</body>
</html>