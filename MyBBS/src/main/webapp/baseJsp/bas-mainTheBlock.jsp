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

.main1 {
	margin: 0 auto;
}

.hotBlock {
	display: -webkit-flex;
	dispaly: -ms-flex;
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: space-between;
	background-color: #7C919A;
	/* border:1px solid red; */
	width: 75%;
	height: 50px;
}

.hb-left {
	padding-left: 11px;
	line-height: 50px;
	color: white;
	font-size: 21px;
}

.hb-right {
	padding: 4px 4px;
}

.hb-right a span {
	color: white;
	size: 30px;
	font-size: 21px;
	line-height: 50px;
}

.hc-span1 {
	color: #959598;
	font-size: 20px;
}

.hc-span1 {
	color: #959598;
	font-size: 20px;
}

.hc-span2-v {
	color: #7C919A;
}

.hc-spanShow {
	
}

.hc-span1-v {
	font-size: 24px;
}

#a2 ,#a4{
	display: none;
}

.hotBlock-contents {
	width: 75%;
	margin: 0 auto;
	display: flex;
	display: -webkit-flex;
	display: -ms-flex;
	display: -moz-flex;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content: space-between;
}

.hotBlock-content {
	width: 400px;
	/* height: 230px; */
	margin-top: 2%;
	padding: 30px;
	border: 1px #eeeeee solid;
	border-top-color: red;
	border-top-width: 10px;
}

.all-block {
	margin-top: 3%;
}

.wholeBlocks {
	width: 75%;
	display: flex;
	display: -webkit-flex;
	display: -ms-flex;
	display: -moz-flex;
	flex-direction: column;
	flex-wrap: wrap;
	margin-top:16px;
	justify-content: space-between;
}

.wholeBlock {
	width: 100%;
}

.wholeBlock1 {
	width: 100%;
	display: flex;
	display: -webkit-flex;
	display: -ms-flex;
	display: -moz-flex;
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: space-between;
}

.wb-right{
	width:160px;
	margin-right:0px;
}
.whole-hr {
	width: 100%;
}
.wc-span1{
	
}
.wc-author{
width:160px;
	
}
.pagingWhole{
	width:100%;
}
.paging-content{
width:100%;
}
table{
width:100%;
 
}
 table tr{
	height:34px;
	
}
table td{
	border-bottom: 1px solid #eeeeee;
} 
.btn-s1{
	float:right;
	size:20;
	color:#61FE00;

	
}
.btn-s1-f1{
	color:#FF00FE;
}
.btn-s1 span{
font-size:18px;
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
				<li><a href="#" onclick="reStart();return false;"><span class="glyphicon glyphicon-file nav-fon"></span>重登</a>>></li>
				<c:if test="${not empty user}"><li><a href="index.jsp"><span class="glyphicon glyphicon-home nav-fon"></span>主页</a>>></li></c:if>
				<li><a href="tourist"><span
						class="glyphicon glyphicon-align-justify nav-fon"></span>版面列表</a>>></li>
				<li><a href="gotoBlocks?p_id=${p_id }"><span class="glyphicon glyphicon-list-alt nav-fon"></span> ${pageName} </a>>></li>
				<li><a href="#"><span class="glyphicon glyphicon-th-large nav-fon"></span> ${blockName} </a>>></li>

			</ul>
		</nav>

		<div class="main">
			<section class="main1 hotBlock ">
				<div class="hb-left">
					<span class="span-h">热门帖子</span>
				</div>
				<div class=hb-right>
					<a id="a1" onclick="aShow(1);"><span
						class="glyphicon glyphicon-chevron-up"></span></a> <a id="a2"
						onclick="aShow(2);"><span
						class="glyphicon glyphicon-chevron-down"></span></a>
				</div>
			</section>
			<section class="main1 hotBlock-contents " id="tran-sec1">
				<c:forEach items="${posts}" var="p" varStatus="ps">
					<c:if test="${ps.count<=(blocksHotNum+1) }">
						<section class="hotBlock-content section1">
							<p class="hc-p1">
								<span class="glyphicon glyphicon-send"></span>&nbsp;&nbsp; <span
									class="hc-span1 ">帖子主题:</span> <span class="hc-span1-v">${p.title }</span>
								&nbsp;&nbsp;<a href="goToPost?b_id=${b_id}&p_id=${p_id}&pageName=${pageName}&po_id=${p.id}&blockName=${blockName}"><span
									class="glyphicon glyphicon-share-alt"></span>查看</a>
							</p>
							<p class="hc-p2">
								<span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp; <span
									class="hc-span1 hc-span2 ">时间:</span> <span class="hc-span2-v">${p.time }</span>
							</p>
							<hr>
							<span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp; <span
								class="hc-span1 ">作者:</span> <span class="hc-span3-v">${p.user.username }</span>&nbsp;&nbsp;&nbsp;&nbsp;


						</section>

					</c:if>
				</c:forEach>
			</section>
			<section class="main1 hotBlock all-block">
				<div class="hb-left">
					<span class="span-h">所有帖子</span>
				</div>
				<div class=hb-right>
					<a id="a3" onclick="aShow(3);"><span
						class="glyphicon glyphicon-chevron-up"></span></a> <a id="a4"
						onclick="aShow(4);"><span
						class="glyphicon glyphicon-chevron-down"></span></a>
				</div>
			</section>
			<section class="main1 wholeBlocks " id="tran-sec2">
				<c:forEach items="${postsBySetTop}" var="p" varStatus="ps">
					<c:if test="${ps.count<=3}">
						<section class="wholeBlock1">

							<div>
								<a href="goToPost?b_id=${b_id}&p_id=${p_id}&pageName=${pageName}&po_id=${p.id}&blockName=${blockName}"><span
									class="glyphicon glyphicon-share-alt"></span><span class="wc-span-top ">【置顶<span>${ps.count}</span>】</span> <span
									class="glyphicon glyphicon-thumbs-up"></span>&nbsp;&nbsp; <span
									class="wc-span1 ">帖子主题:</span> <span class="wc-span1-v">${p.title }</span>&nbsp;&nbsp;&nbsp;&nbsp;</a>
							</div>
							<div class="wb-right">
								<span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp; <span
									class="wc-span1 ">作者:</span> <span class="wc-span1-v">${p.user.username }</span>&nbsp;&nbsp;&nbsp;&nbsp;
							</div>


						</section>
						<hr class="whole-hr">
					</c:if>


				</c:forEach>
				
				<div class="pagingWhole">
				<span id="b_id" style="display:none" >${b_id}</span><span id="p_id" style="display:none">${p_id}</span><span id="pageName" style="display:none">${pageName}</span><span id="blockName" style="display:none">${blockName}</span>
				<div id="paging">
					<p>
						<a href="#" onclick="paging(1);return false;"><span class="glyphicon glyphicon-step-backward"></span>上一页</a>&nbsp;&nbsp;
						<span>当前页:<span id="nowPage">${nowPage}</span></span>/<span id="allPage">${allCount }</span>
						<span><input class="form-control" id="inPage" value="${inp}" style="width:50px;display:inline;" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"  oninput="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" /></span>
						<a href="#" onclick="paging(2);return false;"><span class="glyphicon glyphicon-hand-left"></span>跳转</a>
						&nbsp;&nbsp;<a href="#" onclick="paging(3);return false;"><span class="glyphicon glyphicon-step-forward"></span>下一页</a><span class="pageJump" style="color:red;"></span>
					</p>
				</div>
				<div class="paging-content">
				<table class="" id="my-table">
					<c:forEach items="${postsByTime}" var="p" varStatus="ps">


						
						<tr>


							<td><a href="goToPost?b_id=${b_id}&p_id=${p_id}&pageName=${pageName}&po_id=${p.id}&blockName=${blockName}"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;
								<span class="wc-span2 ">帖子主题:</span> <span class="wc-span1-v wc-topic">${p.title }</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							
							<td><span class="wc-span2 wc-table ">时间:</span> <span
								class="wc-span2-v">${p.time }</span>
							</td>
							<td><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;
								<span class="wc-span2 wc-author wc-table">作者:</span> <span class="wc-span1-v">${p.user.username }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
							   <button type="button" class="btn btn-default btn-lg btn-s1">
							  		<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> 查看
							   </button>
							    <button type="button" class="btn btn-default btn-lg btn-s1 btn-s1-f1" onclick="window.location.href='goToPost?b_id=${b_id}&p_id=${p_id}&pageName=${pageName}&po_id=${p.id}'">
							  		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span> 关注
							   </button>
							</td>
						</tr>

						

						
					</c:forEach>
				</table>
				</div>
				</div>
			</section>

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
			var colors7 = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62","#FF5C05", "#FF00FE");
			 $(".nav-fon").each(function(index) {
					$(this).css("color", colors7[index % 6]);
				})
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
			var b_id=$("#b_id").html();
			var inp=$("#inPage").val();
			var p_id=$("#p_id").html();
			var pageName=$("#pageName").html();
			var blockName=$("#blockName").html();
			
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
				url:"postPaging",
				data:"nowPage="+nowPage+"&b_id="+b_id+"&inp="+inp+"&p_id="+p_id+"&pageName="+pageName+"&blockName="+blockName,
				type:"get",
				dataType:"json",
				async:false,
				success:function(){//alert(33);
					//$(".paging-content").load(location.href+" .paging-content");按理有用，但妹达到效果
					/* $(".paging-content").html($(".main").html()) */ /* 没用，只是单纯的把原数据加载，而不能让其重新加载$内容 */
					//window.location.reload();刷新浏览器url，重载，
					 $.ajax({
						url:"bas-mainTheBlock.jsp ",
						type:"get",
						dataType:"html",
						success:function(data){
							$(".pagingWhole").html($(data).find(".pagingWhole"));//很经典的处理**，相对于拼接页面，或者取另一个页面
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
		
		 function reStart(){
				$.ajax({
					url:"${rootPath}/baseJsp/reStart",
					type:"get",
					dataType:"json",
					success:function(){
						window.location.href="${rootPath}/homePage.jsp";
					},
					error:function(){
						alert("reStart error");
					}
					
				})
			
			}
	</script>
</body>
</html>