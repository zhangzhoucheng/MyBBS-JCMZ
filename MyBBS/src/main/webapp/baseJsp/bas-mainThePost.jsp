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
<title>Insert title here</title>
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
</style>
</head>
<body>

	<article>
		<header class="">
			<br>
		</header>
		<nav class="">
			<ul class="nav-ul">
				<li><a href="tourist"><span
						class="glyphicon glyphicon-home"></span>首页</a>>></li>
				<li><a href="gotoBlocks?p_id=${p_id }"><span class="glyphicon glyphicon-list-alt"></span> ${pageName} </a>>></li>
				<li><a href="gotoBlock?b_id=${b_id}&pageName=${pageName}&p_id=${p_id}"><span class="glyphicon glyphicon-th-large"></span> ${blockName} </a>>></li>
				<li><a href="#"><span class="glyphicon glyphicon-send"></span>  ${userHost.posts[0].title}  </a>>></li>

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
						<p style="text-indent: 2em;">
							${userHost.posts[0].content }
						</p>
						<p class="p-li">
						 	  <a>${userHost.posts[0].time} </a>
						</p>
						
					</article>	
					<footer class="mr-fot">
						<p class="p-li">
						
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>转发 </a>&nbsp;&nbsp;
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>关注</a>&nbsp;&nbsp;
							<a href="#" onclick="praiseToHost();return false;" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span><span class="sp_praise">点赞</span></a>&nbsp;&nbsp;							
							<a href="javascript:collectPost(${po_id},${user.id});return false;" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span><span class="host-col">收藏</span> </a>&nbsp;&nbsp;
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>回复 </a>
				
						</p>
					</footer>
				</section>
			</section>
			
			<div class="mainReplay">
					<section class=" wholeBlocks main1 " id="tran-sec2">
						
						
						
						
							<p>
								<a href="#" onclick="paging(1);return false;"><span class="glyphicon glyphicon-step-backward"></span>上一页</a>&nbsp;&nbsp;
								<span>当前页:<span id="nowPage">${nowPage}</span></span>/<span id="allPage">${allPages }</span>
								<span><input class="form-control" id="inPage" value="${inp }" style="width:50px;display:inline;" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"  oninput="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" /></span>
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
											
												<a href="#" class="art-ope3"><span class="glyphicon glyphicon-send art-ope4"></span>关注 </a>&nbsp;&nbsp;
												<a href="#" onclick="praiseToReply(this,${p.id},${vs.count});return false;"class="art-ope3"><span class="glyphicon glyphicon-send art-ope4"></span><span class="rep-sp-praise">点赞</span></a>&nbsp;&nbsp;
												<a href="#" class="art-ope3"><span class="glyphicon glyphicon-send art-ope4"></span>回复 </a>
									
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
	</article>

	<!-- jQuery (Bootstrap 插件需要引入) -->
	<!-- <script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script> -->
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
	<!-- 包含了所有编译插件 -->
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(function() {
			colorShow();
			
		})
		function colorShow(){
			//$("#a2").css("display","none");
			var colors = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62");
			var colors1=new Array("#FF5C05", "#FF00FE", "#61FE00");
			var colors2=new Array("#FEEE53", "#FB699A", "#BFA656");
			var colors3=new Array("#FF00FE", "#61FE00");
			var colors4 = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62","#FF5C05", "#FF00FE", "#61FE00","#FEEE53", "#FB699A", "#BFA656");
			var colors5 = new Array("#FEF104", "#ED1B24", "#8DB1B6", "#BFA656","#2F841C");
			var colors6 = new Array( "#ED1B24", "#8DB1B6", "#2F841C");
			
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
		function collectPost(po_id,user_id){
			var host_col=$(".host-col").html();
			$.ajax({
				url:"collectPost",
				data:"po_id="+po_id+"&user_id="+user_id+"&host_col="+host_col,
				dataType:"json",
				type:"get",
				success:function(data){
					$.ajax({
						url:"bas-mainThePost.jsp",
						dataType:"html",
					
						type:"get",
						success:function(data1){
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
							alert("collectPost error");
						}
					})
				},
				error:function(){
					alert("collectPost error");
				}
			})
			
		} 
	</script>
</body>
</html>