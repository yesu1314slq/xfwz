<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${article.title} - ${category.name}</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="${article.description} ${category.description}" />
	<meta name="keywords" content="${article.keywords} ${category.keywords}" />
	<style>
	
    	.menulist ul li, .lianjie{
    		width:14.285% !important;
    	}
   
.main_wrapper {
    width: 1000px;
    margin: 0 auto;
    overflow: hidden;
    clear: both;
    background-color: #fff;
}
.dqwz {
    width: 1000px;
    height: 18px;
    margin: 18px auto;
}
.dqwz span {
    font: 12px/18px "宋体";
    color: #4b4b4b;
}
.dqwz a {
    font: 12px/18px "宋体";
    color: #4b4b4b;
    padding: 0px 6px;
}
.dqwz a:hover, .dqwz a.on {
    color: #1369C0;
}
.mxycon {
    width: 906px;
    height: auto;
    margin: 25px auto;
}
.mxycon_tit {
    width: 906px;
    height: auto;
    border-bottom: 1px #d9d9d9 solid;
}
.mxycon_tit h2 {
    width: 590px;
    margin: 0 auto;
    font: 21px/42px "Microsoft Yahei";
    color: #2b2b2b;
    text-align: center;
}
.mxycon_tit em {
    font: 12px/30px "宋体";
    color: #1369c0;
    text-align: center;
    margin: 15px 0px;
    display: block;
}
.mxycon_con {
    width: 906px;
    height: auto;
    margin: 20px 0px;
    border-bottom: 1px #d9d9d9 solid;
    padding-bottom: 20px;
}
.mxycon_con p {
    font: 14px/36px "宋体";
    color: #4b4b4b;
    line-height: 30px;
}
.mxycon_con .titlefont{
    width: 500px;
    margin:0px auto;
    text-align: center;
    line-height: 30px;
}
.center{
    text-align: center;
}
.textright{
    text-align: right;
}
.menulist ul li, .lianjie{
	width: 16.6666667%;
}
.in_fo_font {
    position: relative;
    top: -25px;
}
</style>
</head>
<body>
	<div id="main" class="main">
    <div class=" main_wrapper" id="main_con">
        <div class="main_con" style="margin:16px 60px;"> 
            <!--当前位置-->
            
            <div class="dqwz"> 
                <span>当前位置：</span>
                <a href="${ctx }">首页</a>
                <span>&gt;</span><a href="${ctx}/list-${category.id }${urlSuffix}" class="on">${category.name }</a>
                <%-- <span>&gt;</span><a href="${ctx}/view-${category.id }-${article.id}${urlSuffix}" class="on">${article.title }</a>                     --%>
            </div>  
        
            <!--内容-->
            <div class="mxycon">
                <div class="mxycon_tit">
                    <h2 style="width:750px;">${article.title } </h2>
                    <em>来源：
                       ${article.articleData.copyfrom }  &nbsp;&nbsp;发布时间：<fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></em>
                </div>
                <div class="mxycon_con">
                   ${article.articleData.content}
               
                 </div>
            </div><!--main_con-->
        </div><!--wrapper-->
    </div>
</div>

</body>
</html>