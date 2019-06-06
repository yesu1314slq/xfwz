<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
	<script type="text/javascript" src="${ctxStatic}/xfwz/Scripts/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/xfwz/Scripts/js.js"></script>
    <script type="text/javascript" src="${ctxStatic}/xfwz/Scripts/pic.js"></script>
   <%--  <script src="${ctxStatic}/xfwz/Scripts/tjzwwlanguage.js"></script> --%>
    <link href="${ctxStatic}/xfwz/Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    
   <script type="text/javascript">
$(document).ready(function(){
	//访英用焦点图
	try{
	$("#kz_focus").Tab({
		ChangeTime:4000,//转播时间
		Obutton : true // true：数字、圆点；false：缩略图
	});
	}catch(e){}
})
</script>
<style>
.fuwu_list li {float:left; width:70px; background:url(Images/dot_fw_hd.gif) left no-repeat; padding-left:10px; padding-right:10px;}
.fuwu_list li a {line-height:30px; color:#333; font-size:14px;}
.fuwu_rdfw {width:860px; height:248px; margin-left:20px;  overflow:hidden;}
.fuwu_rdfw li {text-align:center; color:#333; font-size:14px; line-height:28px; width:126px; height:72px; float:left; padding-top:10px;line-height: 72px;}
.fuwu_rdfw li a {color:#333; font-size:14px;}
.in_fo_font{
	position: relative;
	/* top: -25px;  */
}
.zhidulist li{
	width:43%;
	float:left;
	margin-left:45px;
}
/*通知公告*/
.tongzhi{
	clear: both;
	text-align: center;
	line-height: 40px;
}
.tongzhi h3{
	font-size: 20px;
	font-weight: 700;
	margin:20px;
}
.tongzhi .btn-blue{
	margin:0px 20px;
	border:none;
	outline: none;
	background: #1369C0;
	color: #fff;
	padding:5px 30px;
	border-radius: 10px;
}
.ullist a{
	color:#323232;
}
.menulist a{
	text-decoration: none;
}
.mainlevel a{
	color:#fff;
	text-decoration:none;
}
/********广告漂浮开始*********/
#ad2{;width:450px; height:300px; background:url(../../../static/xfwz/Images/msg.png) no-repeat; background-size: 100% 100%;position:relative; z-index:999;}
#ad2 .ad2Close{ width:12px; height:12px; background:url(../../../static/xfwz/Images/close.png) no-repeat; display:block; cursor:pointer; float:right; margin:15px 15px 0 0;}
/********广告漂浮结束*********/
</style>
</head>
<body>
<!--广告漂浮 2019/01/10,id是ad2,现要去掉飘窗将下面80行的id改为ad123-->
<div id="ad2" style="position: absolute; left: 803px; top: 454px;">
  <span class="ad2Close" id="ad2Close"></span>
</div>
<div class="contentcont">
	<div class="main indexmain">
		<div class="topNav">
			
		
			<div class="menucon">
				<div class="dis subcon">
					<!-- 首页 -->
					<!-- 首页图片新闻 -->
		            <div class="tpxw">
						<div class="home_c02_img">
							<div id="banner">	
								<div id="banner_bg"></div>  
								<!-- 标题背景 -->
								<div id="banner_info"></div>
								<ul> 
								</ul>
								<div id="banner_list">
									<c:forEach items="${fnc:getArticleList(site.id, 3, 5, '')}" var="article">
										<a href='${article.url}' title="${article.title }"  target="_blank"><img src='${article.image}' border="0" alt='${fns:abbr(article.title,50)}' /></a>
									
									</c:forEach>
				                </div>
							</div>
						</div>
					</div>
					<!-- end  首页图片新闻 -->
					<div class="jrgz left" >
						<ul class="sld_title tjgk_title tztj_title sy_tit" style="background:none; padding-left:0;height:80px;margin:0px;margin-bottom:10px;" id="menun2">
		                	
		                	<li class="hover" onMouseOver="setTabx(2,0)" style="padding:0px;"><a href="${ctx}/list-b5d81ca337e94521acbad4de3480000f${urlSuffix}" target="_blank"><span class="left" style="height:80px;margin-right:8px;"><img src="${ctxStatic}/xfwz/Picture/xftlxcz.jpg" /></span></a><a href="https://tousu.www.gov.cn/dc/index.htm" target="_blank"><span class="left" style="height:80px;"><img src="${ctxStatic}/xfwz/Picture/hlwdc.jpg" /></span></a></li>
		                	
		                </ul>
						<!--
						<ul class="sld_title tjgk_title tztj_title sy_tit" style="background:none; padding-left:0;" id="menun2">
		                	<span class="left" style="margin-top:6px;"><img src="${ctxStatic}/xfwz/Picture/jrgz.jpg" /></span>
		                	<li class="hover" onMouseOver="setTabx(2,0)"><a href="${ctx}/list-8dbf21fea7984634b524091e06159de6${urlSuffix}" target="_blank">今日关注</a></li>
		                	
		                </ul>
						-->
		                <div class="tztjcon" id="mainn2" style="position:relative;">
			                <div class="dis" style="display: block;">
			                    <ul class="jrgzcon">
			                        <c:forEach items="${fnc:getArticleList(site.id, 'b5d81ca337e94521acbad4de3480000f', 7, '')}" var="article">
			                        <li><span>[<fmt:formatDate value="${article.updateDate}" pattern="yyyy-MM-dd"/>]</span><i>
									</i><a href="${article.url}" title="${article.title }" target="_blank">${fns:abbr(article.title,46)}</a></li> 
									</c:forEach>
			                        
			                    </ul>

			                </div>
			               
		                </div>
					</div>

					
					<!-- 首页结束 -->
				</div>
				
				<div class="subcon">
					<!-- 单位职能 -->
					<div class="zfcwh left">
						<div class="sld_title">
							<span><a href="http://xfj.shanxi.gov.cn/view-39f0f6ee65b448059867dc054b7db144-190e4b5d779a499f86592ecc583af565" target="_blank">山西省信访局工作职能</a></span>
							<a href="http://xfj.shanxi.gov.cn/view-39f0f6ee65b448059867dc054b7db144-190e4b5d779a499f86592ecc583af565" target="_blank" style="float:right;font-weight:400;font-size:12px;">更多>></a>
						</div>
						<ul class="ullist">
							<div class="gzzz">
							<p>1.负责处理省内外群众和境外人士给省委、省政府的来信，接待群众来访，保证信访渠道畅通，及时、准确地向省委、省政府领导反映来信来访中提出的重要建议、意见和问题。综合分析信访信息，开展调查研究，提出制定有关方针、政策的建议。
							</p>
							<p>2.承办中央办公厅、国务院办公厅、中央信访联席会议办公室（以下简称中央联席办）、国家信访局和中央各部委交省委、省政府及本局的信访事项。
							</p>
							<p>3.承办省委、省政府领导交办的信访事项，督促检查领导同志有关批示的落实情况；向各市委、市政府和省直部门交办信访事项，督促检查重要信访事项的处理和落实。
							</p>
							</div>	
							<style>
								.gzzz p{
									/*text-indent:20px;*/
									line-height:30px;
								}
								.gzzz li{
									width:50%;
									float:left;
								}
							</style>
						</ul>
					</div>
					<div class="zfcwh left">
						<div class="sld_title"><span><a href="http://xfj.shanxi.gov.cn/view-39f0f6ee65b448059867dc054b7db144-098d8975bd844fdc8ebf38d14b7da186" target="_blank">内设机构</a></span><a href="http://xfj.shanxi.gov.cn/view-39f0f6ee65b448059867dc054b7db144-098d8975bd844fdc8ebf38d14b7da186" target="_blank" style="float:right;font-weight:400;font-size:12px;">更多>></a></div>
						<ul class="ullist gzzz">
							<li>办公室<li>
							<li>机关党委（人事处）<li>
							<li>接待一处、接待二处<li>
							<li>办信处<li>
							<li>综合处<li>
							<li>督查处<li>
							<li>驻京信访处<li>
							<li>复查复核处<li>
							<li>网络电话投诉受理办公室<li>
							<li>信访信息中心（群众来访服务中心）<li>
						</ul>
					</div>
					<!-- 单位职能 -->
				</div>
				
				<div class="subcon">
					<!-- 通知公告 -->
					<div class="zfcwh left">
						<div class="sld_title"><span><a href="${ctx}/list-08fe0bf445ed4e2fbe6f2879d422063a${urlSuffix}" target="_blank">预算决算</a></span></div>
						<ul class="ullist">
		                                     
                        <c:forEach items="${fnc:getArticleList(site.id, '08fe0bf445ed4e2fbe6f2879d422063a', 8, '')}" var="article">
			                <li><a href="${article.url}" title="${article.title }" target="_blank">${fns:abbr(article.title,46)}</a></li>          
			                        
									</c:forEach>
    	                 
		                                     
						</ul>
					</div>
					<div class="zfcwh left">
						<div class="sld_title"><span><a href="${ctx}/list-3a126ca75b464200b9f775c89ce20c9e${urlSuffix}" target="_blank">2019年</a></span></div>
						<ul class="ullist">
		                  <c:forEach items="${fnc:getArticleList(site.id, '3a126ca75b464200b9f775c89ce20c9e', 8, '')}" var="article">
			                <li><a href="${article.url}" title="${article.title }"  target="_blank">${fns:abbr(article.title,46)}</a></li>          
			                        
									</c:forEach>                   

		                                     
						</ul>
					</div>
					<!-- 通知公告 -->
				</div>
				
				<div class="subcon">
					<!-- 信访宣传周 -->
					<div class="">
						<div class="sld_title" style="margin-left:45px;"><span><a href="${ctx}/list-b5d81ca337e94521acbad4de3480000f${urlSuffix}" target="_blank">信访宣传周</a></span></div>
						<ul class="ullist zhidulist">
		                     <c:forEach items="${fnc:getArticleList(site.id, 'b5d81ca337e94521acbad4de3480000f', 16, '')}" var="article">
			                <li><a href="${article.url}" title="${article.title }" target="_blank">${fns:abbr(article.title,46)}</a></li>          
			                        
									</c:forEach>                   

		                                     
						</ul>
					</div>
					
					<!-- 信访宣传周 -->
				</div>
				<div class="subcon">
					<!-- 制度文件 -->
					<div class="">
						<div class="sld_title" style="margin-left:45px;"><span><a href="${ctx}/list-6${urlSuffix}" target="_blank">制度文件</a></span></div>
						<ul class="ullist zhidulist">
		                     <c:forEach items="${fnc:getArticleList(site.id, '6', 16, '')}" var="article">
			                <li><a href="${article.url}" title="${article.title }" target="_blank">${fns:abbr(article.title,46)}</a></li>          
			                        
									</c:forEach>                   

		                                     
						</ul>
					</div>
					
					<!-- 制度文件 -->
				</div>
				
				<div class="subcon">
					<!-- 工作培训 -->
					<!-- <div class="zfcwh left">
						<div class="sld_title"><span>< a href=" ">工作培训</ a></span></div>
						
					</div> -->
					<div class="tongzhi">
						<h3>通知</h3>
						<p>请各单位管理员申请Ukey和动态令牌后，进行本单位个性化定制操作。</p >
						<p>二代身份证读卡器接口请点击左侧的“辅助功能”按钮。</p >
						<p>业务办理系统 使用手册下载或查看，请点击左侧的“培训手册”按钮。</p >
						<br>
						<button class="btn-blue" data-toggle="modal" data-target="#shouce">培训手册</button>
						<a href="http://59.49.32.213:7070/readidcard.jsp" target="_blank"><button class="btn-blue">辅助功能</button></a>
					</div>
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="shouce" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					    <div class="modal-dialog">
					        <div class="modal-content">
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                <h4 class="modal-title" id="myModalLabel">使用手册在线预览与下载</h4>
					            </div>
					            <div class="modal-body">使用手册在线预览 请点击 预览，下载请点击 下载</div>
					            <div class="modal-footer">
					                <a href="http://59.49.32.213:7070/sysc/index.html" target="_blank"><button type="button" class="btn btn-default">预览</button></a>
					               <a href="http://59.49.32.213:7070/Download"> <button type="button" class="btn btn-primary">下载</button></a>
					            </div>
					        </div><!-- /.modal-content -->
					    </div><!-- /.modal -->
					</div>
					<!--工作培训结束 -->
				</div>
				<div class="subcon">
					<!-- 信访广角 -->
					<div>
						<div class="sld_title" style="margin-left:45px;"><span><a href="${ctx}/list-24${urlSuffix}" target="_blank">信访广角</a></span></div>
						
						<ul class="ullist zhidulist">
		                                     
                       <c:forEach items="${fnc:getArticleList(site.id, '24', 16, '')}" var="article">
			                <li><a href="${article.url}" title="${article.title }" target="_blank">${fns:abbr(article.title,46)}</a></li>          
			                        
									</c:forEach>   
                             
    	                  
		                                     
						</ul>
					</div>
					<!-- 信访广角结束 -->
				</div>
				<div class="subcon">
					<!-- 信访广角 -->
					<div>
						<div class="sld_title" style="margin-left:45px;"><span><a href="${ctx}/list-fedd0933245545aa9bd6a461ed6b94a5${urlSuffix}" target="_blank">廉政窗口</a></span></div>
						
						<ul class="ullist zhidulist">
		                                     
                       <c:forEach items="${fnc:getArticleList(site.id, 'fedd0933245545aa9bd6a461ed6b94a5', 16, '')}" var="article">
			                <li><a href="${article.url}" title="${article.title }" target="_blank">${fns:abbr(article.title,46)}</a></li>          
			                        
									</c:forEach>   
                             
    	                  
		                                     
						</ul>
					</div>
					<!-- 信访广角结束 -->
				</div>
				
				


			</div>
			<div class="foot_btn">
				<ul>
					<li class="mainlevel">
						<a href="http://szxx.shanxi.gov.cn/szxx/sy/index.action" target="_blank" class="in_fo_a pur"><span class="in_fo_btn icon3"></span><span class=" fl_l">省长信箱</span></a>
					</li>
					<li class="mainlevel">
						<a href="http://xfj.shanxi.gov.cn/sxxf/BeforGo" target="_blank" class="in_fo_a green"><span class="in_fo_btn icon1"></span><span class=" fl_l">网上信访</span></a>
					</li>
					<li class="mainlevel">
						<a href="http://xfj.shanxi.gov.cn/sxxf/BeforGo?showFlag=jyzj" target="_blank" class="in_fo_a tsjy"><span class="in_fo_btn icon5"></span><span class=" fl_l">建议征集</span></a>
					</li>
					<li class="mainlevel">
						<a href="http://xfj.shanxi.gov.cn/sxxf/LxlfCx" target="_blank" class="in_fo_a blue"><span class="in_fo_btn icon4"></span><span class=" fl_l">查询评价</span></a>
					</li>
					<li class="mainlevel">
						<a href="http://xfj.shanxi.gov.cn/sxxf/citylist.html" target="_blank" class="in_fo_a ore"><span class="in_fo_btn icon2"></span><span class=" fl_l">市县信访</span></a>
					</li>
				</ul>
			</div>
		</div>

		<div class="indexright">
			<ul class="zwwb">
	
				<li><a class="wx bgpng" id="weixin">微信公众号</a>
	            <div id="EWM"><img src="${ctxStatic}/xfwz/Picture/weixin.png" width="150" height="150" /></div>
	            </li>
				<li><a class="yd bgpng">IOS客户端</a>
				<div id="EWM" style="top:100px;"><img src="${ctxStatic}/xfwz/Picture/iosapk.png" width="150" height="150" /></div>
				</li>
				<li><a class="yx bgpng">安卓客户端</a>
				<div id="EWM" style="top:190px;"><img src="${ctxStatic}/xfwz/Picture/apk.png" width="150" height="150" /></div>
				</li>
				<!--<li><a class="ys bgpng shiping" href="${ctxStatic}/xfwz/clientdown/NetMeeting.exe">视频客户端</a>
				</li>-->
				<li><a class="yxx bgpng xinxiang" href="http://xfj.shanxi.gov.cn/sxxf/BeforGo?showFlag=jyzj">部门信箱</a>
				</li>
			</ul>
		</div>
	    <script type="text/javascript">
		
			$(function(){
				$('.zwwb li').hover(function(){
					$(this).find('#EWM').toggle();
				})
				$("#ad2Close").click(function(){
				    $("#ad2").hide();
				})
			})
			
			//广告漂浮
			var x = 50,y = 60 
			var xin = true, yin = true 
			var step = 1 
			var delay = 40 
			var obj=document.getElementById("ad2") 
			document.getElementById("ad2Close").click=function(){
			  this.style.display="none";
			}
			function floatAD() {
			
			  var L=T=0 ;
			  var R = Math.min(document.documentElement.clientWidth, document.body.clientWidth)-obj.offsetWidth; 
			  var B = Math.min(document.documentElement.clientHeight, document.body.clientHeight)-obj.offsetHeight; 
			  obj.style.left = (x + Math.max(document.documentElement.scrollLeft,document.body.scrollLeft))+'px' 
			  obj.style.top = (y + Math.max(document.documentElement.scrollTop,document.body.scrollTop))+'px';
			  x = x + step*(xin?1:-1) 
			  if (x < L) { xin = true; x = L}
			  if (x > R){ xin = false; x = R} 
			  y = y + step*(yin?1:-1)
			  if (y < T) { yin = true; y = T } 
			  if (y > B) { yin = false; y = B }
			  
			}
			var itl= setInterval("floatAD()", delay) 
			obj.onmouseover=function(){clearInterval(itl)} 
			obj.onmouseout=function(){itl=setInterval("floatAD()", delay)}
			
			
		</script>

	</div>

</div>
 
</body>
</html>