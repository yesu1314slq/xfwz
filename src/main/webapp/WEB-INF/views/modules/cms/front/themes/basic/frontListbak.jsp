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
				<a href="${ctx }">首页</a>
				<span>&gt;</span><a href="${ctx}/list-${category.id }${urlSuffix}" class="on">${category.name }</a>
									
			</div>	
		
			<!--更多列表页-->
			<div class="morelist clearfix">
				<!--左侧内容-->
				<div class="morelist_l">
	                <dl id="tab_nav1" class="tab_nav" style="width:100%;">
	               		<dt class="on">${category.name }</dt>
	                </dl>
					<div id="wzList" class="morelist_l_con">
					 <c:forEach items="${page.list}" var="article" varStatus="status">
					 <c:if test="${status.index%5==0 }">
					 <ul>
							
					 </c:if>
					 <li><a href="${article.url }" title="${article.title }" target="_blank"><p>${fns:abbr(article.title,150)}</p><span>[<fmt:formatDate value="${article.updateDate}" pattern="yyyy-MM-dd"/>]</span></a></li>
					<c:if test="${status.index%5==4||page.list.size() == status.index+1 }">
					</ul>
					</c:if>
					 </c:forEach>
					</div>
					<!---页码-->
					<div class="pagination">${page}</div>
			     <script type="text/javascript">
				function page(n,s){
					location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;
				}
			</script>
				</div>
			
				
			</div>
		</div>
		<!--main_con--> 
	</div>
	<!--wrapper--> 
</div>
</body>
</html>