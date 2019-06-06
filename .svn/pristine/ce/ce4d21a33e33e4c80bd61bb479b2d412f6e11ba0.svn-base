// JavaScript Document


/* (function($){
	$.fn.Tab = function(options){
		var defaults = {
			ChangeTime:3000,
			Obutton : false
		};

		var opts = $.extend(defaults, options);
		
		return this.each(function(){
			var oThis = $(this);
			var index = 0;
			var timer;
			var cTimer = opts.ChangeTime;
			var len = $('ul li',oThis).length; 
			
			
			if (opts.Obutton){
				var arr = [];
				arr.push('<ol>')
				for(i = 1; i <= $('li',oThis).length; i++){
					arr.push('<li>' + ' '+ '</li>');
				};
				arr.push('</ol>');
				var _IndexBtnHtml = $(arr.join(''));
				oThis.append(_IndexBtnHtml);
			}else{
				oThis.append(document.createElement("ol"));
				$('ol',oThis).html($('ul',oThis).html());
				$('ol a',oThis).click(function(evt){
					evt.preventDefault();
				})
			}
			
			$('ol li',oThis).click(function(){
				index = $('ol li',oThis).index(this);
				showPic(index);
			}).eq(0).click();
		
			oThis.hover(function(){
				clearInterval(timer);
				},function(){
					timer = setInterval(function(){
						showPic(index);
						index++;
						
						if(index==len){index=0;}
				},cTimer)
			}).trigger("mouseleave");
			
			function showPic(index){
				$('ol li',oThis).removeClass("active").eq(index).addClass("active");
				$('ul li',oThis).eq(index).stop(true,true).fadeIn(600).siblings("li").fadeOut(600);
			};
		});
	};
})(jQuery); */
///tab
function setTab(m,n){
 var tli=document.getElementById("menu"+m).getElementsByTagName("li");
 var mli=document.getElementById("main"+m).getElementsByTagName("div");
 for(i=0;i<tli.length;i++){
  tli[i].className=i==n?"hover":"";
  mli[i].style.display=i==n?"block":"none";
 } 
}

function setTabx(a,b){
 var tli=document.getElementById("menun"+a).getElementsByTagName("li");
 var mli=document.getElementById("mainn"+a).getElementsByTagName("div");
 for(i=0;i<tli.length;i++){
  tli[i].className=i==b?"hover":"";
  mli[i].style.display=i==b?"block":"none";
  if(!$('#mainb2 .sbcon iframe').hasClass('loadok')){
	var $iframe=$('#mainb2 .sbcon iframe')
	$iframe.attr('src',$iframe.attr('src'));
	$iframe.addClass('loadok');
	}
 }
}
function setTabu(a,b){
 var tli=document.getElementById("menuu"+a).getElementsByTagName("li");
 var mli=document.getElementById("mainu"+a).getElementsByTagName("div");
 for(i=0;i<tli.length;i++){
  tli[i].className=i==b?"hover":"";
  mli[i].style.display=i==b?"block":"none";
 }
}
function setTabb(a,b){
 var tli=document.getElementById("menub"+a).getElementsByTagName("li");
 var mli=document.getElementById("mainb"+a).getElementsByTagName("div");
 for(i=0;i<tli.length;i++){
  tli[i].className=i==b?"hover":"";
  mli[i].style.display=i==b?"block":"none";
 }
}
function setTabz(a,b){
 var tli=document.getElementById("menuz"+a).getElementsByTagName("li");
 var mli=document.getElementById("mainz"+a).getElementsByTagName("div");
 for(i=0;i<tli.length;i++){
  tli[i].className=i==b?"hover":"";
  mli[i].style.display=i==b?"block":"none";
 }
}
function setTabc(a,b){
 var tli=document.getElementById("menuc"+a).getElementsByTagName("li");
 var mli=document.getElementById("mainc"+a).getElementsByTagName("div");
 for(i=0;i<tli.length;i++){
  tli[i].className=i==b?"hover":"";
  mli[i].style.display=i==b?"block":"none";
 }
}

/*首页导航切换*/
$(function(){
	/*Nav*/
	//$(".topNav").hover(function(){
		//$(".topNav .menuCon").addClass("borSecond");
	//},function(){
		//$(".topNav .menuCon").removeClass("borSecond");
		//$(".topNav .menuList ul li").removeClass("hover");
		//$(".topNav .menuCon .subcon").hide();
		//$(".nav-tabg").hide()
	//})
	$(".menulist ul li").find("a").hover(function(){
	//alert(1111);
		index = $(".menulist ul li").find("a").index(this);
		//alert($(this).parent().html())
        curNav=$(this).parent().addClass("hover").siblings().removeClass("hover");
        
        $(".topNav .menucon").find(".subcon").eq(index).addClass("dis").siblings().removeClass("dis");
		
        //$(".topNav .menuCon").addClass("borSecond");        
       // $(".nav-tabg").show()
        //var pos=122*index;
        //$(".nav-tabg").stop().animate({"left":pos},500)     
        //setTimeout("curNav",2000)
    })
})


/*首页图片滚动*/
 