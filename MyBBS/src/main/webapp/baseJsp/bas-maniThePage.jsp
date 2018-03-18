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
.nav-ul{
	list-style: none;
	
}
.nav-ul li{
	float:left;
}

.main {
	display: flex;
	display: -webkit-flex;
	display: -ms-flexbox;
	flex-direction: column;
	margin-top:80px;
	justify-content: center;
	width:100%;
}
.main1{
	margin:0 auto;
}
.hotBlock{
	display:-webkit-flex;
	dispaly:-ms-flex;
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: space-between;
	background-color:#7C919A;
	/* border:1px solid red; */
	width:75%;
	height:50px;
}
.hb-left{
  padding-left:11px;
  line-height:50px;
  color: white;
  font-size: 21px;
}
.hb-right{
	padding:4px 4px;
}
.hb-right a span{
	color:white;
	size: 30px;
	font-size:21px;
	 line-height:50px;
}
.hc-span1{
	color:#959598;
	font-size:20px;
}
.hc-span1{
	color:#959598;
	font-size:20px;
}
.hc-span2-v{
	color:#7C919A;
}
.hc-spanShow{
	
}
.hc-span1-v{
	font-size:24px;
}
#a2,#a4{
	display:none;
}
.hotBlock-contents{
	width: 75%;
	margin:0 auto;
	
}
.hotBlock-content{
	width: 100%;
	/* height: 230px; */
	margin-top:2%;
	padding:30px;
	border:1px #eeeeee solid;
	border-top-color: red;
	border-top-width: 10px;
}

.all-block{
	margin-top:3%;
}
.wholeBlocks{
	width:75%;
	display: flex;
	display:-webkit-flex;
	display:-ms-flex;
	display:-moz-flex;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content:space-between;
}
.wholeBlock{
	width: 550px;
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
				<li><a href="#"><span class="glyphicon glyphicon-list-alt"></span>${pageName}</a>>></li>

			</ul>
		</nav>

		<div class="main">
			<section class="main1 hotBlock">
							<div class="hb-left">
							<span class="span-h">热门版块</span>
							</div>
							<div class=hb-right>
								<a  id="a1" onclick="aShow(1);"><span class="glyphicon glyphicon-chevron-up"></span></a>
								<a  id="a2" onclick="aShow(2);"><span
									class="glyphicon glyphicon-chevron-down" ></span></a>
							</div>
			</section>
			<section class="main1 hotBlock-contents" id="tran-sec1">
			<c:forEach items="${postpage.blocks}" var="p" varStatus="ps">
					<c:if test="${ps.count<=(blocksHotNum-2) }">
							<section class="hotBlock-content section1">
								<p class="hc-p1">
									<span class="glyphicon glyphicon-th-large"></span>&nbsp;&nbsp;
									<span class="hc-span1 ">板块名称:</span>
									<span class="hc-span1-v">${p.blockname }</span>
									&nbsp;&nbsp;<a href="gotoBlock?b_id=${p.id}&pageName=${pageName}&p_id=${p_id}"><span class="glyphicon glyphicon-share-alt"></span>进入</a>
								</p>
								<p class="hc-p2">
									<span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;
									<span class="hc-span1 hc-span2 ">描述:</span>
									<span class="hc-span2-v">${p.blockremark }</span>
								</p>
								<hr>
								<p>
								  <span class="glyphicon glyphicon-star-empty"></span>&nbsp;&nbsp;
								  <span class="hc-span1 hc-span3">帖子数:</span>
								  <span class="hc-span3-v">${p.countNum}</span>
								</p>
								
								
														</section>
						
					</c:if>		
			</c:forEach>
			</section>
			 <section class="main1 hotBlock all-block">
							<div class="hb-left">
							<span class="span-h">所有版块</span>
							</div>
							<div class=hb-right>
								<a  id="a3" onclick="aShow(3);"><span class="glyphicon glyphicon-chevron-up"></span></a>
								<a  id="a4" onclick="aShow(4);"><span
									class="glyphicon glyphicon-chevron-down" ></span></a>
							</div>
			</section>
			<section class="main1 wholeBlocks" id="tran-sec2">
				<c:forEach items="${postpage.blocks}" var="p" varStatus="ps">
		
					<section class="hotBlock-content section1 wholeBlock">
								<p class="hc-p1">
									<span class="glyphicon glyphicon-th-large"></span>&nbsp;&nbsp;
									<span class="hc-span1 hc-spanShow">板块名称:</span>
									<span class="hc-span1-v">${p.blockname }</span>
  								    &nbsp;&nbsp;<a href="gotoBlock?b_id=${p.id}&pageName=${pageName}&p_id=${p_id}"><span class="glyphicon glyphicon-share-alt"></span>进入</a>
									
								</p>
								<p class="hc-p2">
									<span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;
									<span class="hc-span1 hc-span2 ">描述:</span>
									<span class="hc-span2-v">${p.blockremark }</span>
								</p>
								<hr>
								<p>
								  <span class="glyphicon glyphicon-star-empty"></span>&nbsp;&nbsp;
								  <span class="hc-span1 hc-span3">帖子数:</span>
								  <span class="hc-span3-v">${p.countNum}</span>
								</p>
								<p>
								  <span class="glyphicon glyphicon-star"></span>&nbsp;&nbsp;
								  <span class="hc-span1 hc-span3">热门帖子:</span>
								  <c:forEach items="${p.posts}" var="po" varStatus="ps">
								  	  <c:if test="${ps.count<=5}">
								  		<a href="#"><span>[</span><span>${po.title}</span><span>]</span></a>
								  	  </c:if>
								  </c:forEach>
								</p>
				</section>
						
			
				</c:forEach>
			</section>

		</div>
		<footer id="footer" style="" class="">
			<p>
				<a data-no-pjax="" href="../123/" target="_blank">常用网站</a> - <a
					href="download.php">相关下载</a> - <a href="publication.php">未名站刊</a> -
				<a href="about-us.php">关于我们</a> - <a href="contact.php">联系我们</a> - <a
					href="join-us.php">加入我们</a> - <a href="help.php">帮助中心</a> - <a
					href="mail-new.php?username=SYSOP">意见反馈</a>
			</p>
			<p>© 2017–2018 人文科技BBS</p>
		</footer>
	</article>

	<!-- jQuery (Bootstrap 插件需要引入) -->
	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(function() {
			//$("#a2").css("display","none");
			var colors = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62");
			var colors1=new Array("#FF5C05", "#FF00FE", "#61FE00");
			var colors2=new Array("#FEEE53", "#FB699A", "#BFA656");
			$(".section1").each(function(index) {
				$(this).css("border-top-color", colors[index % 4]);
			})
			$(".hc-span1-v").each(function(index) {
				$(this).css("color", colors2[index % 3]);
			})
			$(".hc-span3-v").each(function(index) {
				$(this).css("color", colors1[index % 3]);
			})
		})
		function aShow(flag){
			if(flag==1||flag==3){//当关闭的时候热门板块
				
				//引入动画待研究
				//$("#tran-sec1").css({"transition-property":" height","transition-delay":"0.5s","transition":"all 2.5s ease","height":"1px"});
				if(flag==1){
					$("#a1").css("display","none");
					$("#a2").css("display","inline");
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
	</script>
</body>
</html>