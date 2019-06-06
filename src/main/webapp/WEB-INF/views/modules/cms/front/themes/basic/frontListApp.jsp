<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>${category.name}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <script src="js/jquery-2.1.4.min.js"></script> -->
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
     	 当前位置： <a href="http://xfj.shanxi.gov.cn/">首页</a><span>&gt;</span><a href="${ctx}/list-${category.id }${urlSuffix}" class="on">${category.name }</a>
    </div>
    <div class="list02">
      <span class="title">${category.name }</span>
      
      
      
      <c:forEach items="${page.list}" var="article" varStatus="status">
		<c:if test="${status.index%5==0 }">
		<ul>
			
		</c:if>
		
			 
		<a href="${article.url }" title="${article.title }" target="_blank"><li>${fns:abbr(article.title,100)}</li></a>
		<c:if test="${status.index%5==4||page.list.size() == status.index+1 }">
		</ul>
		</c:if>
	 </c:forEach>
      
      
      
      <!-- <ul>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
        <a href=""><li>〔工作动态〕晋城：举办信访干部学习新时代 学习新时代 学习新...</li></a>
      </ul> -->
    </div>
  </div>
  <div style="height:147px;"></div>
  <!-- 底部 -->
  <jsp:include page="footerApp.jsp"></jsp:include>
    
</body>
</html>
<script type="text/javascript" src="${ctxStatic}/bootstrap/2.3.1/js/bootstrap.min.js"></script>