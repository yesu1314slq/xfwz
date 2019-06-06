<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title><sitemesh:title default="欢迎光临"/> - ${site.title}</title>
	<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
 	<link href="${ctxStatic}/xfwz/Css/public.css" rel="stylesheet" type="text/css" />
    <link href="${ctxStatic}/xfwz/Css/index.css?val=1" rel="stylesheet" type="text/css" />
   
    <script src="${ctxStatic}/bootstrap/2.3.1/js/bootstrap.min.js" type="text/javascript"></script>
    
	<sitemesh:head/>
	
</head>


<body style="background:#F5F5F5 url('${ctxStatic}/xfwz/Images/bg.png') top center no-repeat;">
<div class="top indextop" style="margin-top: 0px;">
	
    <div class="nav f-cb">
    	<div class="logo sylogo">
    		<h1><a title="山西省信访局"><img src="${ctxStatic}/xfwz/Picture/big_logo.png"></a></h1>
    	</div> 
		<div>
			<jsp:include page="../siteSearch.jsp"></jsp:include>
		</div>  		
        <div class="clear"></div>
	</div>
</div>

<link href='${ctxStatic}/xfwz/Css/index.css?val=1' rel="stylesheet" type="text/css" />
<div class="menulist">
	<ul>
	<c:choose>
	<c:when test="${not empty flag}">
	    <li><a href="http://xfj.shanxi.gov.cn" target="_self">首页</a></li>
	    <c:forEach items="${fnc:getMainNavList(site.id)}" var="category1" varStatus="status">
<c:if test="${status.index lt 8}">

<c:if test="${category1.name eq '工作培训'}">
<li class="${category1.id eq categoryid?'hover':''}"><a><span>${category1.name}</span></a></li>


<%-- <a class="lianjie" href="${category1.url}" target="${category1.target}"><span>${category1.name}</span></a>
 --%></c:if>
<c:if test="${category1.name ne '工作培训'}">
<li class="${category1.id eq categoryid?'hover':''}"><a href="${category1.url}" target="${category1.target}"><span>${category1.name}</span></a></li>
</c:if>
</c:if>
</c:forEach>
	    </c:when>
	    <c:otherwise>
<c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status">
<c:if test="${status.index lt 8}">

<c:if test="${category.name eq '工作培训'}">
<li class="${category.id eq categoryid?'hover':''}"><a><span>${category.name}</span></a></li>

<%-- <a class="lianjie" href="${category.url}" target="${category.target}"><span>${category.name}</span></a>
 --%></c:if>
<c:if test="${category.name ne '工作培训'}">
<li class="${category.id eq '2'?'hover':''}"><a href="${category.url}" target="${category.target}"><span class="${category.id}">${category.name}</span></a></li>
</c:if>
</c:if>
</c:forEach>
</c:otherwise>
</c:choose>
	</ul>
	
</div>
	
			<sitemesh:body/>
			<div class="bottom" style="margin-top:72px;text-align: center;">
			
	<div>
		
		
		<script type="text/javascript">document.write(unescape("%3Cspan id='_ideConac' %3E%3C/span%3E%3Cscript src='http://dcs.conac.cn/js/06/000/0000/40932919/CA060000000409329190001.js' type='text/javascript'%3E%3C/script%3E"));</script>
		<%-- <a href="http://bszs.conac.cn/sitename?method=show&id=0C934C097C776991E053012819ACED43"><img src="${ctxStatic}/xfwz/Picture/bot_img.png" style="margin-left: 5px"></a> --%>
		<br>
		<style>
			#_ideConac{
				position: relative;
			    top: 0px;
			    left: -236px;	
			}
			.in_fo_font{
				position: relative;
				top: -50px !important;
				text-indent:20px;
			}
			.bottom{
				padding-bottom:0px;
				min-width: 1200px;
			}
			img{
				vertical-align:middle;
			}
		</style>
		<span class="in_fo_font" style="font-size:14px;color:#333;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;山西省信访局 晋ICP备12000773号
			 <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=14010602060557" style="color:#333;" target="_blank">
			 	<img src="${ctxStatic}/xfwz/Images/xf_gongan_icon.png" style="margin-top:0px;vertical-align:middle;">
				 <span>晋公网安备 14010602060557号</span>
			 </a>
		</span>
		
	</div>
	
</div>

</body>
</html>