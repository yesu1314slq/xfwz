<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<html>
<head>
	<title></title>
	<style type="text/css">
		.ldbox{
			padding: 10px 20px;
			border:1px solid #ddd;
			border-top: 5px solid #1369C0;
			margin-bottom: 20px;
		}
		.zhiwei{
			font-weight:700;
			color: #1369C0;
			margin-left: 20px;
		}
		.zhiweitubiao{
			width: 20px;
			position: relative;
			top: 5px;
		}
		.ldxx{
			width: 100%;
		}
		.ldxx td{
			padding:10px 20px;
		}
		.ldxx td p{
			text-indent: 2em;
		}
		.ldxx .name{
			font-weight: 700;
		}
	</style>
</head>
<body>
	<div class="ldbox">
		<table class="ldxx">
			<c:forEach items="${fnc:getArticleList(site.id, 'e83ea4a924894613a00cc39cc24a070e', 16, '')}" var="article">
				<tr>
					<td colspan="2">
						<img src="${ctxStatic}/xfwz/Images/jianjie.png" class="zhiweitubiao">
						<span class="zhiwei">${article.title}</span>
					</td>
				</tr>
				<tr>
					<td>
						<p><img src="${article.image}" class="touxiang"></p>
					</td>
					<td>
						<p class="name">${article.keywords}</p>
						${article.articleData.content}
					</td>
				</tr>
			</c:forEach>   
		</table>
	</div>
</body>
</html>