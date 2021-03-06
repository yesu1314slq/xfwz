<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
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
    <div id="myCarousel" class="carousel slide lunbo">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>   
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
	        	<c:forEach items="${fnc:getArticleList(site.id, 3, 3, '')}" var="article" varStatus="status">
	        		<c:if test="${status.index == 0}">
		        		<div class="item active">
							<a href='${article.url}' title="${article.title }" ><img src='${article.image}' border="0" alt='${fns:abbr(article.title,40)}' /></a>
							<div class="carousel-caption"><a href='${article.url}' title="${article.title }"  target="_blank">${fns:abbr(article.title,40)}</a></div>
						</div>
	        		</c:if>
	        		<c:if test="${status.index > 0}">
			        	<div class="item">
				        	<a href='${article.url}' title="${article.title }" ><img src='${article.image}' border="0" alt='${fns:abbr(article.title,40)}' /></a>
							<div class="carousel-caption"><a href='${article.url}' title="${article.title }"  target="_blank">${fns:abbr(article.title,40)}</a></div>
						</div>
					</c:if>
				</c:forEach>
        </div>
    </div>

    <div class="fastenter">
        <div class="fastenter_ico">
            <a href="http://szxx.shanxi.gov.cn/szxx/sy/index.action">
              <img src="${ctxStatic}/xfwz/Images/imgapp/szxx.png">
              <div>省长信箱</div>
            </a>
        </div>
        <div class="fastenter_ico">
            <a href="http://xfj.shanxi.gov.cn/sxxf/BeforGo">
              <img src="${ctxStatic}/xfwz/Images/imgapp/wsxf.png">
              <div>网上信访</div>
            </a>
        </div>
        <div class="fastenter_ico">
            <a href="http://xfj.shanxi.gov.cn/sxxf/BeforGo?showFlag=jyzj">
              <img src="${ctxStatic}/xfwz/Images/imgapp/jyzj.png">
              <div>建议征集</div>
            </a>
        </div>
        <div class="fastenter_ico">
            <a href="http://xfj.shanxi.gov.cn/sxxf/LxlfCx">
              <img src="${ctxStatic}/xfwz/Images/imgapp/cxpj.png">
              <div>查询评价</div>
            </a>
        </div>
        <div class="fastenter_ico">
            <a href="http://xfj.shanxi.gov.cn/sxxf/citylist.html">
              <img src="${ctxStatic}/xfwz/Images/imgapp/sxxf.png">
              <div>市县信访</div>
            </a>
        </div>
        <div style="clear:both;"></div>

    </div>
  
  </div>
  <div style="margin:10px 0px;background:#fff;padding:15px;">
    <a href="http://172.16.1.120:8086/xfwz/list-3405a69824294e36b403a4ee0f57439e"><img src="${ctxStatic}/xfwz/Images/imgapp/xftl.png" style="width:100%;"></a>
  </div>
  <div class="jrgz">
    <span class="title">今日关注</span>
    
    <a href="${ctx}/list-2" class="more pull-right">more>></a>
    <ul>
    	<c:forEach items="${fnc:getArticleList(site.id, '8dbf21fea7984634b524091e06159de6', 5, '')}" var="article">
    		<%-- <a href="${article.url}"><li>${fns:abbr(article.title,46)}</li></a> --%>
    		
        	<li><a href="${article.url}" title="${article.title }">${fns:abbr(article.title,46)}</a></li> 
		</c:forEach>
    </ul>
  </div>

  <div style="height:147px;"></div>

  <!-- 底部 -->
  <jsp:include page="footerApp.jsp"></jsp:include>
    
</body>
</html>
<script type="text/javascript" src="${ctxStatic}/bootstrap/2.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
  $('.carousel').carousel();
  $(".carousel-inner").children(".item").get(0).addClass("active");
</script>
