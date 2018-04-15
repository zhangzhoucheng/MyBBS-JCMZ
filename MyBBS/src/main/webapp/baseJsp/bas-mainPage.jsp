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
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<style>

body {
	margin: 0 auto;
	height: 100%;
	width: 100%;
}

.main {
	display: flex;
	display: -webkit-flex;
	display: -ms-flexbox;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content: center;
}

.section {
	width: 480px;
	height: 210px;
	margin-left: 5%;
	margin-top:2%;
	border:1px #eeeeee solid;
	border-top-color: red;
	border-top-width: 5px;
}
.section div{
	padding:8px 16px;
}
.section hr{
	width:420px;
	text-align: center;
	 margin:50px auto 14px;
	
}
.base-border{
    
	
	
	
}
.blank {
	width: 50px;
	height: 210px
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
nav ul li{
	float:left;
	
}
nav ul li{
	list-style:none;
}
</style>
</head>
<body>

	<article> 
		<header class=""> 
			<br>
		</header>
		<nav class="">
		<ul>
			<li><a href="${rootPath}/homePage.jsp"><span class="glyphicon glyphicon-file nav-fon"></span>首页</a>>></li>
			<c:if test="${not empty user}"><li><a href="index.jsp"><span class="glyphicon glyphicon-home nav-fon"></span>主页</a>>></li></c:if>
			<li><a href="#"><span class="glyphicon glyphicon-align-justify nav-fon"></span>版面列表</a>>></li>
		</ul>
		</nav> 
		<br>
	   <div class="main">
		   	<c:forEach items="${pageList}" var="p">
				<section class=" section">
				<div>
					<p>${p.pagename} &nbsp;&nbsp;<a href="gotoBlocks?p_id=${p.id}"><span class="glyphicon glyphicon-share-alt"></span>进入</a></p>
					<p>
					<span>管理员:</span>
					  <c:forEach items="${p.users}" var="manager" varStatus="sta">	
						<a href="#"> ${manager.username} </a><c:if test="${p.users.size()!=sta.count}"><span>|</span></c:if>
					  </c:forEach>
					</p>
					<hr />
					<p>
						<span>热门板块：</span>
						<span>
						  <c:forEach items="${p.blocks}" var="block">
						  	<span>[</span> <a href="gotoBlock?b_id=${block.id }&p_id=${p.id}&pageName=${p.pagename}">${block.blockname }</a><span>]</span>
						  </c:forEach>
						</span>
					</p>
				</div>
				</section>
			</c:forEach>
	   		
			
			
	

		</div>
		<footer id="footer" style="" class="">
			<p>
				<a data-no-pjax="" href="../123/" target="_blank">常用网站</a> - <a
					href="download.php">相关下载</a> - <a href="publication.php">未名站刊</a> - <a
					href="about-us.php">关于我们</a> - <a href="contact.php">联系我们</a> - <a
					href="join-us.php">加入我们</a> - <a href="help.php">帮助中心</a> - <a
					href="mail-new.php?username=SYSOP">意见反馈</a>
			</p>
			<p>© 2017–2018 人文科技BBS</p>
		</footer>
	</article>
	
	<!-- jQuery (Bootstrap 插件需要引入) -->
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 包含了所有编译插件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		 $(function(){
			var colors= new Array("#F7A95E","#5CAE97","#8DB1B6","#E97C62");
			var colors7 = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62","#FF5C05", "#FF00FE");
			 $(".nav-fon").each(function(index) {
					$(this).css("color", colors7[index % 6]);
				})
			 $("section").each(function(index){
				 $(this).css("border-top-color",colors[index%4]);
			 })
			
		 })
	</script>
	</body>
</html>