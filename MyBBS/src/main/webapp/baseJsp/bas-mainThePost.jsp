<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../common/pageTaglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>论坛系统BBS</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style>
body {
	margin: 0 auto;
	height: 100%;
	width: 100%;
}
article{
	width:100%;
}
.nav-ul {
	list-style: none;
}

.nav-ul li {
	float: left;
}

.main {
	display: flex;
	display: -webkit-flex;
	display: -ms-flexbox;
	flex-direction: column;
	margin-top: 80px;
	justify-content: center;
	width: 100%;
}
.main1{
	margin:0 auto;
	width:75%;
	margin-top: 20px;
}
.mainReplay{
	margin:0 auto;
	width:100%;
	margin-top:20px;
}
.postHostMsg{
	
	
	display: flex;
	display:-webkit-flex;
	display:-ms-flex;
	display:-moz-flex;
	flex-direction: row;
	flex-wrap: nowrap;
	
	justify-content:center;
}

.m1-left{
	padding:16px;
	width:232px;
	border:1px #eeeeee solid;
	border-top:10px #FF00FE solid;
	height:360px;
	flex-grow: 0;
	
}
.headFlag{
	color:#FF00FE;
}
.m1-right{
	display: flex;
	display:-webkit-flex;
	display:-ms-flex;
	display:-moz-flex;
	flex-direction: column;
	width:600px;
	border:1px #eeeeee solid;
	border-top:10px #E5E5E5 solid;
	height:360px;
	flex-grow:1;
	
}

.photoHead{
	height:167px;
	width:200px;
}
.p-center{
	text-align:center;
}
.p-li{
	margin-right:16px;
	
}
.p-li a{
	float: right;
}
.p-marTop{
	margin-top:32px;
}
.mr-art{
	width:100%;
	padding-left:16px;
	flex-grow:1;
	overflow: auto;
}
.mr-fot{
	width:100%;
	margin-top: 16px;
	flex-grow: 0;
}
#a2 ,#a4{
	display: none;
}


.pagingWhole{
	width:100%;
}
.paging-content{
width:100%;
}
.title1{
	font-weight: 700p;
}
.down1{
	width:100%;
	margin:0 auto;
}
/*footter的样式*/
#footer {
	width: 100%;
	padding: 20px 0;
	background-color: #e5e5e5;
	text-align: center;
	font: 10px -apple-system, "BlinkMacSystemFont", "Helvetica Neue",
		"Arial", "PingFang SC", "Hiragino Sans GB", "STHeiti",
		"Microsoft YaHei", "Microsoft JhengHei", "Source Han Sans SC",
		"Noto Sans CJK SC", "Source Han Sans CN", "Noto Sans SC",
		"Source Han Sans TC", "Noto Sans CJK TC", "WenQuanYi Micro Hei",
		SimSun, sans-serif;
	color: #696969;
}

#footer a {
	color: inherit;
}

.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	z-index: 1001;
  /*   background-color:#808080;  
	
	 -moz-opacity: 0.4;
	opacity: .40;
	filter: alpha(opacity=48);  */
}
			
		
.prompt_pop{
	display: none;
	position: absolute;
	top: 25%;
	left: 27.5%;
	width: 45%;
	height: 55%;
	padding: 20px;
	border:1px solid #EEEEEE;
	border-top: 10px solid orange; 
	background-color: white;
	z-index: 1002;
	overflow: auto;
	color:black;
	text-align:center;
	
	
}
.text-area{
	margin-top:40px;
	width:90%;
	resize:none;
	outline:none;
}
.post-img:hover{
	width:677px;
	height:800px;
}

.reply-host{
	color:	#FE0000;
}
.b-size{
	font-size:16px;
	/* //line-height:19px; */
}
</style>
</head>
<body>

	<article class="my-all">
		<header class="">
			<br>
		</header>
		<nav class="">
			<ul class="nav-ul">
				<li><a href="${rootPath}/homePage.jsp"><span class="glyphicon glyphicon-file nav-fon"></span>首页</a>>></li>
				<c:if test="${not empty user}"><li><a href="index.jsp"><span class="glyphicon glyphicon-home nav-fon"></span>主页</a>>></li></c:if>
				<li><a href="tourist"><span
						class="glyphicon glyphicon-align-justify nav-fon"></span>版面列表</a>>></li>
				<li><a href="gotoBlocks?p_id=${p_id }"><span class="glyphicon glyphicon-list-alt nav-fon"></span> ${pageName} </a>>></li>
				<li><a href="gotoBlock?b_id=${b_id}&pageName=${pageName}&p_id=${p_id}"><span class="glyphicon glyphicon-th-large nav-fon"></span> ${blockName} </a>>></li>
				<li><a href="#"><span class="glyphicon glyphicon-send nav-fon"></span>  ${userHost.posts[0].title}  </a>>></li>

			</ul>
		</nav>

		<div class="main">
			<section class="main1 postHostMsg">
				<section class="m1-left host-left">
					<p class="p-center">
					<span class="glyphicon glyphicon-home headFlag"></span>
					<span class="headColor">楼主:</span><span>${userHost.username }</span>      
					</p>
				
					<img alt="图像" class="photoHead" src="../images/thePostImgs/rb.jpg">
					<p style="margin-top:8px;"><span class="glyphicon glyphicon-send headFlag"></span><span class="headColor">&nbsp;帖子数:</span><span>${userHost.postNum }</span>
												&nbsp;&nbsp;<span class="glyphicon glyphicon-hand-right headFlag"></span><span class="headColor">&nbsp;点赞数:</span><span>${userHost.posts[0].postisfocus}</span>
					</p>
					<p><span class="glyphicon glyphicon-heart-empty headFlag"></span><span class="headColor">&nbsp;关注数:</span><span>${userHost.beFocusedNum }</span>
						&nbsp;&nbsp;<span class="glyphicon glyphicon-tree-deciduous headFlag"></span><span class="headColor">&nbsp;收藏数:</span><span>${userHost.posts[0].collectedNum}</span>
					</p>
					<p><span class="glyphicon glyphicon-star-empty headFlag"></span><span class="headColor">&nbsp;我的收藏:</span><span>${userHost.collectNum }</span></p>
					<p><span class="glyphicon glyphicon-tint headFlag"></span><span class="headColor">&nbsp;我的关注:</span><span>${userHost.focusOtherNum }</span></p>
					
					<span></span>
				</section>
				<section class="m1-right">
					<article class="mr-art">
						<h3 class="p-center p-marTop"><span class="glyphicon glyphicon-home headFlag"></span><span class="title1">主题:</span><span class="title1">${userHost.posts[0].title }</span></h3>
						<img alt="不见了·" src="/imgRoot/${userHost.posts[0].imgPath}" width="100px;" height="100px;" class="post-img">
						<p style="text-indent: 2em;">
						
							${userHost.posts[0].content}
							我们一起就发生了放假哦我金额返去破解紧迫非问卷去拍风景哦为附件配件发票就哦我i附件评价哦i发票就怕·佛经飞机票哦积分2风景破防金额皮肤就破额发奖金
							去附近外婆风景区颇为费解去破解为其服务几千万佛俄方剧情片风景区金额为i求富婆我级风景区哦福气哦姐姐哦fjweapoppppipppppppppppppppipipipi我们一起就发生了放假哦我金额返去破解紧迫非问卷去拍风景哦为附件配件发票就哦我i附件评价哦i发票就怕·佛经飞机票哦积分2风景破防金额皮肤就破额发奖金
							去附近外婆风景区颇为费解去破解为其服务几千万佛俄方剧情片风景区金额为i求富婆我级风景区哦福气哦姐姐哦fjweapoppppipppppppppppppppipipipi我们一起就发生了放假哦我金额返去破解紧迫非问卷去拍风景哦为附件配件发票就哦我i附件评价哦i发票就怕·佛经飞机票哦积分2风景破防金额皮肤就破额发奖金
							去附近外婆风景区颇为费解去破解为其服务几千万佛俄方剧情片风景区金额为i求富婆我级风景区哦福气哦姐姐哦fjweapoppppipppppppppppppppipipipi我们一起就发生了放假哦我金额返去破解紧迫非问卷去拍风景哦为附件配件发票就哦我i附件评价哦i发票就怕·佛经飞机票哦积分2风景破防金额皮肤就破额发奖金
							去附近外婆风景区颇为费解去破解为其服务几千万佛俄方剧情片风景区金额为i求富婆我级风景区哦福气哦姐姐哦fjweapoppppipppppppppppppppipipipi我们一起就发生了放假哦我金额返去破解紧迫非问卷去拍风景哦为附件配件发票就哦我i附件评价哦i发票就怕·佛经飞机票哦积分2风景破防金额皮肤就破额发奖金
							去附近外婆风景区颇为费解去破解为其服务几千万佛俄方剧情片风景区金额为i求富婆我级风景区哦福气哦姐姐哦fjweapoppppipppppppppppppppipipipi我们一起就发生了放假哦我金额返去破解紧迫非问卷去拍风景哦为附件配件发票就哦我i附件评价哦i发票就怕·佛经飞机票哦积分2风景破防金额皮肤就破额发奖金
							去附近外婆风景区颇为费解去破解为其服务几千万佛俄方剧情片风景区金额为i求富婆我级风景区哦福气哦姐姐哦fjweapoppppipppppppppppppppipipipi我们一起就发生了放假哦我金额返去破解紧迫非问卷去拍风景哦为附件配件发票就哦我i附件评价哦i发票就怕·佛经飞机票哦积分2风景破防金额皮肤就破额发奖金
							去附近外婆风景区颇为费解去破解为其服务几千万佛俄方剧情片风景区金额为i求富婆我级风景区哦福气哦姐姐哦fjweapoppppipppppppppppppppipipipi我们一起就发生了放假哦我金额返去破解紧迫非问卷去拍风景哦为附件配件发票就哦我i附件评价哦i发票就怕·佛经飞机票哦积分2风景破防金额皮肤就破额发奖金
							去附近外婆风景区颇为费解去破解为其服务几千万佛俄方剧情片风景区金额为i求富婆我级风景区哦福气哦姐姐哦
						</p>
						<p class="p-li">
						 	  <a>${userHost.posts[0].time} </a>
						</p>
						
					</article>	
					<footer class="mr-fot">
						<p class="p-li">
						
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>转发 </a>&nbsp;&nbsp;
							<a href="#" class="art-ope1" onclick="focusPostHost(${po_id});return false;"><span class="glyphicon glyphicon-send art-ope2"></span><span class="host-foc">关注</span></a>&nbsp;&nbsp;
							<a href="#" onclick="praiseToHost();return false;" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span><span class="sp_praise">点赞</span></a>&nbsp;&nbsp;							
							<a href="#" class="art-ope1" onclick="collectPost(${po_id});return false;"><span class="glyphicon glyphicon-send art-ope2"></span><span class="host-col">收藏</span> </a>&nbsp;&nbsp;
							<a href="#" onclick="replyHost(${po_id},'${userHost.username}');return false;" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>回复 </a>
				
						</p>
					</footer>
				</section>
			</section>
			
			<div class="mainReplay">
					<section class=" wholeBlocks main1 " id="tran-sec2">
						
						
						
						
							<p>
								<a href="#" onclick="paging(1);return false;"><span class="glyphicon glyphicon-step-backward"></span>上一页</a>&nbsp;&nbsp;
								<span>当前页:<span id="nowPage">${nowPage}</span></span>/<span id="allPage">${allPages}</span>
								<span><input class="form-control" id="inPage" value="${inp}" style="width:50px;display:inline;" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"  oninput="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" /></span>
								<a href="#" onclick="paging(2);return false;"><span class="glyphicon glyphicon-hand-left"></span>跳转</a>
								&nbsp;&nbsp;<a href="#" onclick="paging(3);return false;"><span class="glyphicon glyphicon-step-forward"></span>下一页</a><span class="pageJump" style="color:red;"></span>
							</p><span id="po_id" style="display:none">${po_id}</span>
					
						
					
					</section>
					<div class="down1">
					
						<c:forEach items="${Postreplys}" var="p" varStatus="vs">
						
						<section class="main1 postHostMsg users">
							
									<section class="m1-left">
										<p class="p-center">
										<span class="glyphicon glyphicon-home headFlag"></span>
										<span class="headColor"> ${vs.count} 楼:</span><span>${p.user.username }</span>
										</p>
									
										<img alt="图像" class="photoHead" src="../images/thePostImgs/rb.jpg">
										<p style="margin-top:8px;"><span class="glyphicon glyphicon-send headFlag"></span><span class="headColor">&nbsp;帖子数:</span><span>${p.user.postNum }</span>
										 <span class="glyphicon glyphicon-thumbs-up headFlag"></span><span class="headColor">&nbsp;点赞数:</span><span>${p.praiseNum }</span>
										</p>
										<p>
										<span class="glyphicon glyphicon-send headFlag"></span><span class="headColor">&nbsp;关注数:</span><span>${p.user.beFocusedNum }</span>
										
										</p>
										<p><span class="glyphicon glyphicon-star-empty headFlag"></span><span class="headColor">&nbsp;我的收藏:</span><span>${p.user.collectNum }</span></p>
										<p><span class="glyphicon glyphicon-tint headFlag"></span><span class="headColor">&nbsp;我的关注:</span><span>${p.user.focusOtherNum }</span></p>
										
										<span></span>
									</section>
									<section class="m1-right">
										<article class="mr-art">
											<h3 class="p-center p-marTop"><span class="glyphicon glyphicon-home headFlag"></span><span class="title1">主题:</span><span class="title1">${userHost.posts[0].title }</span></h3>
											<p><span style="color:#299727;">${p.user.username}</span><span>回复</span><span style="color:#FF571C"> ${p.toWhoName} </span><span>说:</span></p>
											<p style="text-indent: 2em;">
												${p.replycontet}
											</p>
											<p class="p-li">
							 	  				<a>${p.time} </a>
											</p>
										</article>	
										<footer class="mr-fot">
											<p class="p-li">
											
												<a href="#" class="art-ope3" onclick="focusReplyUser(this,${p.userid},${vs.count});return false;"><span class="glyphicon glyphicon-send art-ope4"></span><span class="rep-sp-focus">关注</span> </a>&nbsp;&nbsp;
												<a href="#" onclick="praiseToReply(this,${p.id},${vs.count});return false;"class="art-ope3"><span class="glyphicon glyphicon-send art-ope4"></span><span class="rep-sp-praise">点赞</span></a>&nbsp;&nbsp;
												<a href="#" class="art-ope3" onclick="replyReply(${p.postid},'${p.user.username }',' ${vs.count}');return false;"><span class="glyphicon glyphicon-send art-ope4"></span>回复 </a>
									
											</p>
										</footer>
									</section>
							
						</section>
					
						</c:forEach>
					</div>
			</div>
		</div>
		<footer id="footer" style="" class="">
			<p>
				<a data-no-pjax="" href="#" target="_blank">常用网站</a> - <a
					href="#">相关下载</a> - <a href="publication.php">未名站刊</a> -
				<a href="#">关于我们</a> - <a href="contact.php">联系我们</a> - <a
					href="#">加入我们</a> - <a href="help.php">帮助中心</a> - <a
					href="#">意见反馈</a>
			</p>
			<p>© 2017–2018 人文科技BBS</p>
		</footer>
		<div class="black_overlay"></div>
		<div class="prompt_pop">
				<p style="visibility: hidden;"><span class="po_id-hid"></span><span class="toWho-hid"></span></p>
				<span style="font-size:28px;font-weight:450">回复<span class="floor1"></span><span class="reply-host"></span>(限制500字)</span>
			   <textarea class="text-area" rows="10" cols="90" maxlength="500" ></textarea><br><br>
			   <a href="#" class="label label-warning b-size" onclick="cancleRep();return false;">取消</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="opacity:0;color:red" class="re-re-pro">回复不为空</span> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="label label-success b-size" onclick="goRep();return false;">回复</a>
		</div>
	</article>
	
	<!-- jQuery (Bootstrap 插件需要引入) -->
	<!-- <script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script> -->
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
	<!-- 包含了所有编译插件 -->
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
	
		//有时间把div弹窗以及能够移动封装起来，直接通过class就可以引用，**
	    var staX,staY;//鼠标的初始位置
	    var mouseSta=false;
	    var proNowX;//当前弹窗位置，定义在这里是优化，点击弹窗自动居中的bug
	    var proNowY;
	    var sTop;//滚轮位置
	    var winTop;//浏览器高度
		var winLeft;//浏览器宽度
		var nowTop//弹窗的初始位置纵坐标
		var nowLeft;//弹窗的初始位置横坐标
		var mouX,mouY;//当前鼠标位置
		var befTop;
		$(function() {
			colorShow();//颜色渲染函数
			
			//初始化div移动和滚轮滚动相关的参数
			sTop=$(window).scrollTop();
			winTop=$(window).height();
			winLeft=$(window).width();
			nowTop=sTop+winTop*0.25;
			nowLeft=winLeft*0.275;
			movX=0;movY=0;staX=0;staY=0;
			proNowX=nowLeft;
			proNowY=nowTop;
			befTop=winTop*0.25;
			
			
			
			//绑定函数
			$(window).on("scroll",setMoveLock);//滚动条滚动，弹窗保持浏览器中部不移动
			$(".prompt_pop").on("mousedown",mouseDow);
			$(".prompt_pop").on("mousemove",mouseMov);//待优化
			$(".prompt_pop").on("mouseup",mouseUp);
			$(".prompt_pop").on("mouseleave",function(e){mouseSta=false;})
			$(".prompt_pop").children().on("mousedown mouseup mousemove",function(e){ mouseSta=false;e.stopPropagation();e.cancelBubble=true;});//阻止事件冒泡，不触发父元素
			
			//禁止复制等
			document.oncontextmenu=new Function('event.returnValue=false;');
			document.onselectstart=new Function('event.returnValue=false;');
			
			
		})
		function mouseDow(e){
			console.log("t1");
		    $(".prompt_pop").css("cursor","Move");
			  e = e||window.event;//由于不是通过function(e)传参格式，所以要这样获取参数，表示是事件
			staX = e.pageX || e.clientY ;
			staY = e.pageY || e.clientY + document.body.scrollTop;
			console.log(staX+","+staY);
			mouseSta=true;
			//$(".prompt_pop").css({"top":""+proNowY+"px","left":""+proNowX+"px"});
			
		    
		}
		function mouseMov(){
			console.log("t2");
			if(mouseSta){
			sTop=$(window).scrollTop();//滚轮到顶部高度
			console.log("b:"+sTop);
			var  e = window.event;//由于不是通过function(e)传参格式，所以要这样获取参数，表示是事件
			mouX = e.pageX || e.clientY ;//当前鼠标位置
			mouY = e.pageY || e.clientY + document.body.scrollTop;
	        proNowX=nowLeft+mouX-staX;
		    proNowY=nowTop+mouY-staY;
			$(".prompt_pop").css({"top":""+proNowY+"px","left":""+proNowX+"px"});
			}
		}
		function mouseUp(){
			befTop=proNowY-sTop;
			nowLeft=proNowX;
			nowTop=proNowY;
			$(".prompt_pop").css("cursor","default");
			mouseSta=false;
		}
		function setMoveLock(e){
			//给大的窗口即在外部的滚轮加上事件,让弹窗一直保持屏幕中
				//alert(1);
				sTop=$(window).scrollTop();//获取滚动条高度
				befTop=befTop;//获取上次状态的距离window上边缘的高度
				nowTop=sTop+befTop;//获取上次状态的距离window上边缘的高度
				$(".prompt_pop").css("top",""+nowTop+"px");/* $(".prompt_pop").css("display","block"); */
				
				
	
			/* $(".mr-art").on("scroll",function(){
				//alert(1);
				var sTop=$(".mr-art").scrollTop();
				console.log("b:"+sTop);
				alert("b:"+sTop);
			}) */
		}
		function colorShow(){
			//$("#a2").css("display","none");
			var colors = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62");
			var colors1=new Array("#FF5C05", "#FF00FE", "#61FE00");
			var colors2=new Array("#FEEE53", "#FB699A", "#BFA656");
			var colors3=new Array("#FF00FE", "#61FE00");
			var colors4 = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62","#FF5C05", "#FF00FE", "#61FE00","#FEEE53", "#FB699A", "#BFA656");
			var colors5 = new Array("#FEF104", "#ED1B24", "#8DB1B6", "#BFA656","#2F841C");
			var colors6 = new Array( "#ED1B24", "#8DB1B6", "#2F841C");
			var colors7 = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62","#FF5C05", "#FF00FE");
			$(".section1").each(function(index) {
				$(this).css("border-top-color", colors[index % 4]);
			})
			$(".hc-span1-v,.wc-span-top").each(function(index) {
				$(this).css("color", colors2[index % 3]);
			})
			$(".hc-span3-v").each(function(index) {
				$(this).css("color", colors1[index % 3]);
			})
			$(".wc-span1,.wc-table").each(function(index) {
				$(this).css("color", colors3[index % 2]);
			})
			$(".wc-topic").each(function(index) {
				$(this).css("color", colors4[index % 10]);
			})
			$(".headColor").each(function(index) {
				$(this).css("color", colors5[index % 5]);
			})
			$(".art-ope1").each(function(index) {
				$(this).css("color", colors5[index % 5]);
			})
			$(".art-ope2").each(function(index) {
				$(this).css("color", colors5[index % 5]);
			})
			$(".art-ope3").each(function(index) {
				$(this).css("color", colors6[index % 3]);
			})
			$(".art-ope4").each(function(index) {
				$(this).css("color", colors6[index % 3]);
			})
			$(".nav-fon").each(function(index) {
				$(this).css("color", colors7[index % 6]);
			})
		}
		function aShow(flag){
			if(flag==1||flag==3){//当关闭的时候热门板块
				
				//引入动画待研究
				//$("#tran-sec1").css({"transition-property":" height","transition-delay":"0.5s","transition":"all 2.5s ease","height":"1px"});
				if(flag==1){
					$("#a1").css("display","none");
					$("#a2").css("display","inline");
			   		//$("#tran-sec1").delay(100).hide(0);
			   		$("#tran-sec1").slideUp("2s");
				}
				if(flag==3){
					$("#a3").css("display","none");
					$("#a4").css("display","inline");
					$("#tran-sec2").slideUp("2s");

				}
				
			}
			
			else{//打开热门板块
				if(flag==2){
				$("#a2").css("display","none");
				$("#a1").css("display","inline");
				$("#tran-sec1").slideDown("2s");
				}
				if(flag==4){
					$("#a4").css("display","none");
					$("#a3").css("display","inline");
					$("#tran-sec2").slideDown("2s");
				}
			}
		}
		
		function paging(flag){//alert(1);
			var nowPage=$("#nowPage").html();
			var po_id=$("#po_id").html();
			var inp=$("#inPage").val();
			//alert(15);
			if(flag==1){
				
				if(nowPage<=1){
					
				}else{
					nowPage--;
				}
				
			}
			if(flag==2){
				nowPage=$("#inPage").val();
				//inp=$("#inPage").val();
			}
			if(flag==3){
				
				nowPage++;
			}
			$.ajax({
				url:"postReplyPaging",
				data:"nowPage="+nowPage+"&po_id="+po_id+"&inp="+inp,
				type:"get",
				dataType:"json",
			
				success:function(){//alert(33);
					//$(".paging-content").load(location.href+" .paging-content");按理有用，但妹达到效果
					/* $(".paging-content").html($(".main").html()) */ /* 没用，只是单纯的把原数据加载，而不能让其重新加载$内容 */
					//window.location.reload();刷新浏览器url，重载，
					 $.ajax({
						url:"bas-mainThePost.jsp",
						type:"get",
						dataType:"html",
						success:function(data){//alert(44);
							$(".mainReplay").html($(data).find(".mainReplay").html());//很经典的处理**，相对于拼接页面，或者取另一个页面
							colorShow();
						},
					 error:function(){
						 alert("error2");
					 }
						
					}) 
				},
				error:function(){
					alert("error1");
				}
				
			});
			
		}
		
		function praiseToHost() {
			var sp_praise=$(".sp_praise").html();
			var po_id=$("#po_id").html();
			
			$.ajax({
				url:"praiseToHost",
				data:"sp_praise="+sp_praise+"&po_id="+po_id,
				dataType:"json",
				type:"get",
				success:function(data){
					$(".sp_praise").html(data.sta);
					$.ajax({
						url:"bas-mainThePost.jsp",
						dataType:"html",
						type:"get",
						success:function(data1){
							$(".host-left").html($(data1).find(".host-left").html());
							colorShow();
						},
						error:function(){
							alert("praiseToHost error");
						}
					})
					
				},
				error:function(){
					alert("praiseToHost error");
				}
			})
			
		}
		
		function praiseToReply(v,reply_id,c) {
			var nowPage=$("#nowPage").html();
			var s1=$(v).children(".rep-sp-praise");//获取子元素，锁定到该行的span，点赞
			//var flashLeft=$(v).parents(".m1-right").prev();//获取到需要ajax刷新的元素//发现这样局部刷新某个回复，有点难度，且比较麻烦，所以直接刷新所有的回复就行了，好处理多。当然除了这种jquery选择器方式，还有可以用迭代出的id进行规律化设置id属性，这样完成小部分的局部刷新也很容易
			var sp_praise=s1.html();
			var po_id=$("#po_id").html();
			var inp=$("#inPage").val();
			$.ajax({
				url:"praiseToReply",
				data:"sp_praise="+sp_praise+"&po_id="+po_id+"&reply_id="+reply_id+"&nowPage="+nowPage+"&inp="+inp,
				dataType:"json",
				//async:"false",
				type:"get",
				success:function(data){
					
					$.ajax({
						url:"bas-mainThePost.jsp",
						dataType:"html",
					//	async:"false",
						type:"get",
						success:function(data1){
							//$(".flashLeft").html(data1.find(v).parents(".m1-right").prev().html());
							//$(".mainReplay").empty();
							
							$(".down1").html( $(data1).find(".down1").html() );//刷新
							//s1.html(data.sta);//当请求是"bas-mainThePost.jsps"此时并不能改变span内值，由于刷新之后this不再指向之前的span.所以有三种解决方法：1》把通过reply_id给每个栏目加上对应标识id，这样就可以找到，2》或者仅仅刷新左侧（有难度，因为它和右侧是公用的c:foreach)
							//3》下是第三种,通过当前获取的第几个c:foreach迭代内容，从而就可以取到该 需要改变的span，从而完成值的刷新。
							$(".rep-sp-praise").eq(c-1).html(data.sta);//
							colorShow();
							
						},
						error:function(){
							alert("praiseToHost1 error");
						}
					})
				
					
				},
				error:function(){
					alert("praiseToHost2 error");
				}
			}) 
			
		} 
		function collectPost(po_id){//alert(11);
			var host_col=$(".host-col").html();
			var nowPage=$("#nowPage").html();
			$.ajax({
				url:"collectPost",
				data:"po_id="+po_id+"&host_col="+host_col+"&nowPage="+nowPage,
				dataType:"json",
				type:"get",
				success:function(data){
					$.ajax({
						url:"bas-mainThePost.jsp",
						dataType:"html",
					
						type:"get",
						success:function(data1){//alert(22);
							if(data.msg=="0"||data.msg==0){
								//没登录，请登录，弹窗登录，
								alert("请先去登录才能收藏");
							}else{
							$(".host-left").html( $(data1).find(".host-left").html() );//刷新
							$(".host-col").html(data.msg);//
							colorShow();
							}
						},
						error:function(){
							alert("collectPost1 error");
						}
					})
				},
				error:function(){
					alert("collectPost2 error");
				}
			})
			
		} 
		
		function focusPostHost(po_id){
			//alert(11);
		var host_foc=$(".host-foc").html();
	
		$.ajax({
			url:"focusPostHost",
			data:"po_id="+po_id+"&host_foc="+host_foc,
			dataType:"json",
			type:"get",
			success:function(data){
				$.ajax({
					url:"bas-mainThePost.jsp",
					dataType:"html",
				
					type:"get",
					success:function(data1){//alert(22);
						if(data.msg=="0"||data.msg==0){
							//没登录，请登录，弹窗登录，
							alert("请先去登录才能关注");
						}else{
						$(".host-left").html( $(data1).find(".host-left").html() );//刷新
						$(".host-foc").html(data.msg);//
						colorShow();
						}
					},
					error:function(){
						alert("focusPostHost1 error");
					}
				})
			},
			error:function(){
				alert("focusPostHost2 error");
			}
		})
		
	} 
		
		
		function focusReplyUser(v,reply_id,c) {
			var nowPage=$("#nowPage").html();
			var s1=$(v).children(".rep-sp-focus");//获取子元素，锁定到该行的span，关注
			//var flashLeft=$(v).parents(".m1-right").prev();//获取到需要ajax刷新的元素//发现这样局部刷新某个回复，有点难度，且比较麻烦，所以直接刷新所有的回复就行了，好处理多。当然除了这种jquery选择器方式，还有可以用迭代出的id进行规律化设置id属性，这样完成小部分的局部刷新也很容易
			var sp_praise=s1.html();
			var po_id=$("#po_id").html();
			var inp=$("#inPage").val();
			$.ajax({
				url:"focusReplyUser",
				data:"sp_focus="+sp_praise+"&po_id="+po_id+"&reply_userId="+reply_id+"&nowPage="+nowPage+"&inp="+inp,
				dataType:"json",
				//async:"false",
				type:"get",
				success:function(data){
					
					$.ajax({
						url:"bas-mainThePost.jsp",
						dataType:"html",
					//	async:"false",
						type:"get",
						success:function(data1){
							//$(".flashLeft").html(data1.find(v).parents(".m1-right").prev().html());
							//$(".mainReplay").empty();
							if(data.sta=="0"||data.sta==0){
								//没登录，请登录，弹窗登录，
								alert("请先去登录才能关注");
							}else{
							$(".down1").html( $(data1).find(".down1").html() );//刷新
							//s1.html(data.sta);//当请求是"bas-mainThePost.jsps"此时并不能改变span内值，由于刷新之后this不再指向之前的span.所以有三种解决方法：1》把通过reply_id给每个栏目加上对应标识id，这样就可以找到，2》或者仅仅刷新左侧（有难度，因为它和右侧是公用的c:foreach)
							//3》下是第三种,通过当前获取的第几个c:foreach迭代内容，从而就可以取到该 需要改变的span，从而完成值的刷新。
							$(".rep-sp-focus").eq(c-1).html(data.sta);//
							colorShow();
							}
							
						},
						error:function(){
							alert("focusReplyUser1 error");
						}
					})
				
					
				},
				error:function(){
					alert("focusReplyUser2 error");s
				}
			}) 
			
		} 
		
		/* function GetPageScroll() 
		{ 
		    var x, y; if(window.pageYOffset) 
		    {    // all except IE    
		        y = window.pageYOffset;    
		        x = window.pageXOffset; 
		    } else if(document.documentElement && document.documentElement.scrollTop) 
		    {    // IE 6 Strict    
		        y = document.documentElement.scrollTop;    
		        x = document.documentElement.scrollLeft; 
		    } else if(document.body) {    // all other IE    
		        y = document.body.scrollTop;    
		        x = document.body.scrollLeft;   
		    } 
		    return {X:x, Y:y};
		} */
		function replyHost(po_id,user){//回复楼主
			$(".my-all").children().not(".prompt_pop").css({"opacity":"0.5"});
			$(".black_overlay").css("display","block");
			$(".prompt_pop").css({"display":"block"});
			$(".floor1").html("楼主:");
			$(".reply-host").html(user);
			$(".toWho-hid").html(user);
			$(".po_id-hid").html(po_id);
			setMoveLock();
			
		}
		function replyReply(replyToPostId,user,floor){//点击回复后弹窗
			$(".my-all").children().not(".prompt_pop").css({"opacity":"0.5"});
			$(".black_overlay").css("display","block");
			$(".prompt_pop").css({"display":"block"});
			$(".floor1").html(floor+"楼:");
			$(".reply-host").html(user);
			$(".toWho-hid").html(user);
			$(".po_id-hid").html(replyToPostId);
			setMoveLock();
		}
		function goRep(){//弹窗确认回复
			var poid=$(".po_id-hid").html();
			var toWho=$(".toWho-hid").html();
			var textArea=$(".text-area").val();
			var nowPage=$("#nowPage").html();
			var inp=$("#inPage").val();
			console.log("po:"+poid+",wo:"+toWho+",te:"+textArea+",no:"+nowPage+",in:"+inp);
			if(textArea==null||""==textArea){
				$(".re-re-pro").css("opacity","1");
				return;
			}
			else{
				$(".re-re-pro").css("opacity","0");
			}
			$.ajax({
				url:"goRep",
				data:"poid="+poid+"&toWho="+toWho+"&textArea="+textArea+"&nowPage="+nowPage+"&inp="+inp,
				dataType:"json",
				type:"post",
				success:function(data){
					if(data.sta==0){
						alert("请先去登录！")
					}else{
						$.ajax({
							url:"bas-mainThePost.jsp",
							dataType:"html",						
							type:"get",
							success:function(data1){
							
								$(".down1").html( $(data1).find(".down1").html() );//刷新
								$(".my-all").children().not(".prompt_pop").css({"opacity":"1"});
								$(".black_overlay").css("display","none");
								$(".prompt_pop").css({"display":"none"});
								$(".re-re-pro").css("opacity","0");
								colorShow();
							
								
							},
							error:function(){
								alert("focusReplyUser1 error");
							}
							
							
						});
					}
					
				},
				error:function(){
					alert("goRep error");
				}
			})
			
		}
		
		function cancleRep(){//弹窗取消回复
			$(".re-re-pro").css("opacity","0");
		    $(".text-area").val("");
			$(".my-all").children().not(".prompt_pop").css({"opacity":"1"});
			$(".black_overlay").css("display","none");
			$(".prompt_pop").css({"display":"none"});
		}
	</script>
</body>
</html>