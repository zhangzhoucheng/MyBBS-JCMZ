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
				<li><a href="#"><span class="glyphicon glyphicon-send"></span> 该贴子 </a>>></li>

			</ul>
		</nav>

		<div class="main">
			<section class="main1 postHostMsg">
				<section class="m1-left">
					<p class="p-center">
					<span class="glyphicon glyphicon-home headFlag"></span>
					<span class="headColor">楼主:</span><span>张三四</span>
					</p>
				
					<img alt="图像" class="photoHead" src="../images/thePostImgs/rb.jpg">
					<p style="margin-top:8px;"><span class="glyphicon glyphicon-send headFlag"></span><span class="headColor">&nbsp;帖子数:</span><span>1000</span></p>
					<p><span class="glyphicon glyphicon-heart-empty headFlag"></span><span class="headColor">&nbsp;关注数:</span><span>1000</span></p>
					<p><span class="glyphicon glyphicon-star-empty headFlag"></span><span class="headColor">&nbsp;收藏数:</span><span>1000</span></p>
					<p><span class="glyphicon glyphicon-tint headFlag"></span><span class="headColor">&nbsp;我的关注:</span><span>1000</span></p>
					
					<span></span>
				</section>
				<section class="m1-right">
					<article class="mr-art">
						<p class="p-center p-marTop"><span class="glyphicon glyphicon-home"></span><span>主题:</span><span>青春岁月我们一起</span></p>
						<p style="text-indent: 2em;">
							送走了凛冽的寒冬，迈着轻盈的脚步，伴着和煦的微风，走进了暖春，迎来了一年一度的樱花盛开的季节。 　　拥有“画中之王”称号的牡丹，有着国色天香，荣华富贵的象征；而荷兰的郁金香也有着“庄严华贵”的雅号，是成功地位的象征，然而，我却独爱那小小的碎碎的樱花，它没有牡丹的青天一色，也没有郁金香的雍容华贵，但当它盛开的时候，总是一树一树的怒放，一簇一簇的展开花瓣，即使花心破碎。正因如此，才决定了它的开放是凄凉的悲壮的美。 　　樱花的生命是如此的短暂，在日本有一句谚语：樱花七日。是说一朵樱花从开放到凋零只有7天的时间，整棵樱桃树从开花到凋谢也只有2周左右。这也形成了樱花边开边落的特点，但它经历短暂的灿烂后随即凋零的壮烈，也更加体现了它的凄美，它死在了生命中最美的一刻，将最美的一面展现给了世人，虽然花期短促，却定格了它永恒的美。 　　这春天派来的使者，最美的时节不在开放，而在凋谢之时，三月里的樱花已悄然绽放，开的如火如荼，貌美无比，极致细腻，深棕的枝干，墨绿的叶子，沾有清晨的露珠，在阳光的照耀下，闪闪发亮，但这并非最美之时。听，那如山下的潺潺流水，又如月下宝石的破碎声，清脆而响亮，在微风的吹拂下，一瓣一瓣的樱花带着股股幽香，像稚嫩的孩子的脸般，从枝桠一泻而下落了一地的樱花雨。 　　“樱花烂漫几多时，柳绿桃红两未知”，李商隐对此给出了最好的解释，。当樱花落尽，余下的只有空荡荡的孤独，那些早日的繁华早已落幕，随着它花瓣的零落而逝去，站在树下，望着一树的寂静，听着最后一朵樱花离落枝头时内心的呐喊以及泪水落地的声音，轻轻的叹息一声，为这凄美而震惊。原来，绚烂之极终归于平静，繁盛之度终归于澹雅，张狂一世的美妙也终会化成一地的缠绵。
						该文章《樱花伤感散文》来源于出国留学网，网址：https://zw.liuxue86.com/z/3636982.html
						</p>
					</article>	
					<footer class="mr-fot">
						<p class="p-li">
						
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>转发 </a>&nbsp;&nbsp;
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>关注</a>&nbsp;&nbsp;
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>点赞</a>&nbsp;&nbsp;							
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>收藏 </a>&nbsp;&nbsp;
							<a href="#" class="art-ope1"><span class="glyphicon glyphicon-send art-ope2"></span>回复 </a>
				
						</p>
					</footer>
				</section>
			</section>
			
			<section class="main1 wholeBlocks " id="tran-sec2">
				
				
				<div class="pagingWhole">
				<div id="paging">
					<p>
						<a href="#" onclick="paging(1);return false;"><span class="glyphicon glyphicon-step-backward"></span>上一页</a>&nbsp;&nbsp;
						<span>当前页:<span id="nowPage">${nowPage}</span></span>/<span id="allPage">${allCount }</span>
						<span><input class="form-control" id="inPage" value="${inp }" style="width:50px;display:inline;" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"  oninput="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" /></span>
						<a href="#" onclick="paging(2);return false;"><span class="glyphicon glyphicon-hand-left"></span>跳转</a>
						&nbsp;&nbsp;<a href="#" onclick="paging(3);return false;"><span class="glyphicon glyphicon-step-forward"></span>下一页</a><span class="pageJump" style="color:red;"></span>
					</p><span id="b_id" style="display:none"> ${b_id} </span>
				</div>
				<div class="paging-content">
				<table class="" id="my-table">
					
				</table>
				</div>
				</div>
			</section>
			
			<section class="main1 postHostMsg">
				<section class="m1-left">
					<p class="p-center">
					<span class="glyphicon glyphicon-home headFlag"></span>
					<span class="headColor">1楼:</span><span>张三四</span>
					</p>
				
					<img alt="图像" class="photoHead" src="../images/thePostImgs/rb.jpg">
					<p style="margin-top:8px;"><span class="glyphicon glyphicon-send headFlag"></span><span class="headColor">&nbsp;帖子数:</span><span>1000</span></p>
					<p><span class="glyphicon glyphicon-send headFlag"></span><span class="headColor">&nbsp;关注数:</span><span>1000</span></p>
					<p><span class="glyphicon glyphicon-star-empty headFlag"></span><span class="headColor">&nbsp;收藏数:</span><span>1000</span></p>
					<p><span class="glyphicon glyphicon-tint headFlag"></span><span class="headColor">&nbsp;我的关注:</span><span>1000</span></p>
					
					<span></span>
				</section>
				<section class="m1-right">
					<article class="mr-art">
						<p class="p-center p-marTop"><span class="glyphicon glyphicon-home"></span><span>主题:</span><span>青春岁月我们一起</span></p>
						<p><span style="color:#299727;">张三</span><span>回复</span><span style="color:#FF571C">李四</span><span>说:</span></p>
						<p style="text-indent: 2em;">
							写的挺不错嘛
						</p>
					</article>	
					<footer class="mr-fot">
						<p class="p-li">
						
							<a href="#" class="art-ope3"><span class="glyphicon glyphicon-send art-ope4"></span>关注 </a>&nbsp;&nbsp;
							<a href="#" class="art-ope3"><span class="glyphicon glyphicon-send art-ope4"></span>点赞</a>&nbsp;&nbsp;
							<a href="#" class="art-ope3"><span class="glyphicon glyphicon-send art-ope4"></span>回复 </a>
				
						</p>
					</footer>
				</section>
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
			var b_id=$("#b_id").html();
			var inp=$("#inPage").val();
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
				data:"nowPage="+nowPage+"&b_id="+b_id+"&inp="+inp,
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
	</script>
</body>
</html>