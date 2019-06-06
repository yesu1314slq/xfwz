<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>${fns:getConfig('productName')} 登录</title>
	<meta name="decorator" content="blank"/>
    <script src="${ctxStatic}/common/backstretch.min.js"></script>
    <script src="${ctxStatic}/rsa/Barrett.js" type="text/javascript"></script>
    <script src="${ctxStatic}/rsa/BigInt.js" type="text/javascript"></script>
    <script src="${ctxStatic}/rsa/RSA.js" type="text/javascript"></script>
	    <link rel="stylesheet" href="${ctxStatic}/common/typica-login.css">
	<style type="text/css">
		.control-group{border-bottom:0px;}
		.navbar .brand{padding:0px !important;}
	</style>
	<script type="text/javascript">
	function bodyRSA(){
		setMaxDigits(130);//必须加此行且数字不小于129，否则页面会出现死循环
		key = new RSAKeyPair("10001","","9742bd8bede1e598e5d12740448462e6763bd1050caf56e9a989c62e1f03c93d1268ff5835bdb3d4de7ccb82e0e167c0252aaa3d2ccb6736f9f3d959f7bca44a98215b5f5efe599918719105e95ea36bad94e617b0b2a6ffb141646344a8fbf81bfe2b67361e8126cde07bda54a8bb982cb4465b2f031933b5d650e2bd3e36c9");
	}
		$(document).ready(function() {
			$.backstretch([
			  		      "${ctxStatic}/images/bg1.jpg",
			  		      "${ctxStatic}/images/bg1.jpg",
			  		      "${ctxStatic}/images/bg3.jpg"
			  		  	], {duration: 10000, fade: 2000});
			$("#loginForm").validate({
				submitHandler: function(form){
					var password  = $("#password").val();
					bodyRSA();
					var result = encryptedString(key, encodeURIComponent(password));  
					$("#password").val(result);
					//alert(encodeStr);
					loading('正在提交，请稍等...');
					form.submit();
				},
				rules: {
					validateCode: {remote: "${pageContext.request.contextPath}/servlet/validateCodeServlet"}
				},
				messages: {
					username: {required: "请填写用户名."},password: {required: "请填写密码."},
					validateCode: {remote: "验证码不正确.", required: "请填写验证码."}
				},
				errorLabelContainer: "#messageBox",
				errorPlacement: function(error, element) {
					error.appendTo($("#loginError").parent());
				} 
			});
		});
		// 如果在框架或在对话框中，则弹出提示并跳转到首页
		if(self.frameElement && self.frameElement.tagName == "IFRAME" || $('#left').length > 0 || $('.jbox').length > 0){
			alert('未登录或登录超时。请重新登录，谢谢！');
			top.location = "${ctx}";
		}
	</script>
</head>
<body>
 <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="${ctx}"><img src="${ctxStatic}/xfwz/Picture/big_logo.png" alt="山西长河" style="height:80px;"></a>
        </div>
      </div>
    </div>
	<%-- <div class="header">
		<div id="messageBox" class="alert alert-error ${empty message ? 'hide' : ''}"><button data-dismiss="alert" class="close">×</button>
			<label id="loginError" class="error">${message}</label>
		</div>
	</div> --%>
	 <div class="container">
		<%String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);%>
		<div id="messageBox" class="alert alert-error <%=error==null?"hide":""%>"><button data-dismiss="alert" class="close">×</button>
			<label id="loginError" class="error"><%=error==null?"":"com.thinkgem.jeesite.modules.sys.security.CaptchaException".equals(error)?"验证码错误, 请重试.":"用户或密码错误, 请重试." %></label>
		</div>
        <div id="login-wraper">
            <form id="loginForm"  class="form login-form" action="${ctx}/login" method="post">
                <fieldset><legend><span style="color:#08c;"><h1>${fns:getConfig('productName')}</h1></span></legend></fieldset>
                <div class="body">
					<div class="control-group">
						<div class="controls">
							<input type="text" id="username" name="username" class="required"  placeholder="登录名">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="password" id="password" name="password" class="required" placeholder="密码"/>
						</div>
					</div>
					 <c:if test="${isValidateCodeLogin}"> <div class="validateCode">
			<label class="input-label mid" for="validateCode">验证码</label>
			<sys:validateCode name="validateCode" inputCssStyle="margin-bottom:0;"/>
		</div></c:if> 
					<%-- <c:if test="${isValidateCodeLogin}">
						<div class="validateCode">
							<label for="validateCode">验证码：</label>
							<sys:validateCode name="validateCode" inputCssStyle="margin-bottom:0;"/>
						</div>
					</c:if> --%>
                </div>
                <div class="footer">
                    <label class="checkbox inline">
                        <input type="checkbox" id="rememberMe" name="rememberMe"> <span style="color:#08c;">记住我</span>
                    </label>
                    <input class="btn btn-primary" type="submit" value="登 录"/>
                </div>
            </form>
        </div>
    </div>
    <footer class="white navbar-fixed-bottom" style="font-size: 15px">
		&copy; 2017-${fns:getConfig('copyrightYear')} <a href="${pageContext.request.contextPath}${fns:getFrontPath()}">${fns:getConfig('productName')}</a> - Powered By <a href="#" target="_blank">山西长河科技股份有限公司</a> ${fns:getConfig('version')} 
	</footer>
	<script src="${ctxStatic}/flash/zoom.min.js" type="text/javascript"></script>
</body>
</html>