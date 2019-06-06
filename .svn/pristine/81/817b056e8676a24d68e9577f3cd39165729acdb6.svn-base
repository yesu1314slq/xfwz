<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${category.name}</title>
	<meta name="decorator" content="cms_defaultsj_${site.theme}"/>
	<meta name="description" content="${category.description}" />
	<meta name="keywords" content="${category.keywords}" />
	<link href="${ctxStaticTheme}/wz/css/wz.css"  rel="stylesheet" type="text/css">
	<style>
		.focus li h2{height:58px;line-height:58px;}
		.focus li .opacity{height:58px;background: #78a2f8;}
		.focus li{min-height: 58px;}
		.ui-btn-right{top:7px;color:#fff;}
		.todayList li h2{height:30px;line-height:30px;font-weight:700;}
		.todayList li p.onlyheight_60{height:30px;line-height:30px;font-size: 14px;text-indent:20px;}
		.yuan{display:inline-block;width:10px;height:10px;border-radius:50%;background:#68c7a7;margin-right:10px;}
	</style>
</head>
<body>
	<%-- <div id="ui-header_xiao">
		<div class="ui-btn-left" onclick="dourl('${ctx}/index-${site.id}${fns:getUrlSuffix()}')"></div> 
		<a class="ui-btn-right" href="javascript:window.location.reload();"></a>
	</div>--%>
	<div class="Listpage">
		<%-- <div class="top46"></div>--%>
		<%-- <div class="focus">
			<ul>
				<li><div style="max-height:250px;"><img src="${category.image}" ></div>
					<div class="opacity"></div>
					<h2>${category.name}</h2>
					<a class="ui-btn-right" href="javascript:window.location.reload();">
						
					</a>
				</li>
			</ul>
		</div> --%>
		<div id="todayList">
			<ul class="todayList">
				<c:if test="${category.module eq 'article'}">
					<c:forEach items="${page.list}" var="article">
						<li class="only1_xiao" onclick="dourl('${article.url}')">
							<h2><span class="yuan"></span>${fns:abbr(article.title,196)}</h2>
							<%-- <div class="img">
								<img style="width:72px;height:auto;max-height:55px;" src="${article.image}" >
							</div> --%>
							<p class="onlyheight_60"><%-- ${article.description} --%> <fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></p>
							<div class="commentNum"></div>
							
						</li>
					</c:forEach>
				</c:if>
			</ul>
			<div class="page pagination pagination-mini">${page}</div>
			<script type="text/javascript">
				function page(n,s){
					location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;
				}
			</script>
		</div>
	</div>
	<script>
		function dourl(url){
			location.href= url;
		}
	</script>
</body>
</html>