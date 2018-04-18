<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<style type="text/css">
	body{
		width:100%;
		height:100%;
		margin:0 auto;
	}
	article{
		padding-top:32px;
		margin:0 auto;
		display: flex;
		flex-direction: column;
		flex-wrap:wrap;
		justify-content:center;
		width:86%;
		height:100%;
		
	}
	header{
		height:10%;
		width:100%;
		border:1px solid red;
	}
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
.img-lef{
	width:80px;
	height:30px;
	border-radius:15px;
	
}
.navbar{
	padding-top:32px;
		margin:0 auto;
		display:flex;
		flex-direction:row;
		flex-wrap:nowrap;
		justify-content:space-around;
		width:86%;
		
		
}
.nav-left{
	width:80px;
}
.nav-left .nav-right{
	flex-grow: 1;
}

.tab{
color:black;

}
.tab:hover{
	color:#F37726;
}
.header-col{
	/* color:#FF32FF; */
	color:black;
	opacity:0.5;
}
.nav-hr{
	width:100%;
}
.inp-inner{
	display: inline;
}
.inp-long{
	width:200px;
	height:28px;
}
.sec-mid{
	text-align:center;
}
.input-outline{
	outline:none;
}
textarea{
	border-radius: 15px;
}
.font-mi{
	font-size:20px;
}
</style>

</head>
<body>
	<article>
		<nav class="" role="navigation" id="navbar" >
		   
		        
		          	
		        
		            <!-- Collect the nav links, forms, and other content for toggling -->
		            <div class="im" id="bs-example-navbar-collapse-1">
		           	 <img src="../images/publishPostImgs/publishPostLog.jpg" class="img-lef"><span class="header-col">发表帖子</span>
		                <ul class="nav navbar-nav navbar-right">
		                				
		                               <li style="line-height:50px;">
		                                <input type="text" style="height:22px;width:166px;display:inline;" class="form-control sss input-outline" placeholder="百度查找">   <a href="#" onclick="searchBD();return false;" style="display:inline;" target="_blank" class="tab hre"><span style="font-size:14px;" class="label label-success">搜索</span></a>
		                               </li>
		                               
		                               <li>
		                                 <a href="index.jsp" class="tab" target="_blank">主页</a>
		                               </li>
		              
		                               <li>
		                               <a href="#" onclick="reStart();return false;" class="tab" target="_blank">重登</a>
		                               </li>
		                </ul>
		            </div>
		            <hr class="nav-hr">
		        
		</nav>
		<section class="sec-mid" >
			<form style="width:100%;" id="form-my1" enctype="multipart/form-data" action="#" method="post">
				<p><span>贴子标题：</span><span><input class="inp-inner inp-long form-control input-outline" id="title" name="title"  placeholder="20字数以内"></span></p><br>
				<textarea rows="20" cols="200" style="outline:none;" id="content" name="content" class="input-outline" maxlength="3000" placeholder="输入3000字以内"></textarea><br>
				<div style="width:60%;margin:0 auto;margin-top:16px;text-align:left;"><span style="margin-left:16px;color:#FF3B2F;" >*上传图片</span><label class="btn  btn-success" for="file">选择图片</label><input type="file" id="file" name="file" multiple="multiple" placeholder="上传图片" style="display:none;"></div>
				<div class="progress" style="width:60%;margin:0 auto;opacity:0">
					  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
					    60%
					  </div>
				</div><br><br>
				
				<c:if test="${not empty user}"><span class="label label-success font-mi sub-go">提交</span></c:if>
				<c:if test="${empty user}"><span class="label label-success font-mi ">请重新登录</span></c:if>
				<span class="sub-hid" style="opacity:0;color:red">标题或内容不为空！</span>&nbsp;&nbsp;&nbsp;
				<label class="label label-danger font-mi" for="cz">重置</label><button type="reset" style="display:none;" id="cz"></button>
				
				
			</form>
		</section>
		<br><br>
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
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".sub-go").on("click",function(){
			
				var title=$("#title").val();
				var content=$("#content").val();

				 if(title!=null&&""!=title&&content!=null&&""!=content){alert("33");
					 $("#form-my1").prop("action","fileUp"); 
					$("#form-my1").submit(); 
				}
				else{alert("n");
					$(".sub-hid").css("opacity",1);
				} 
			})
		})
		function searchBD(e){
			var s=$('.sss').val();
			var htt="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd="+s+"&rsv_pq=fc5a936a000540d5&rsv_t=acfdH08hJaoY56UoavgaK%2B%2BE6%2FcklGzzbzG%2B3%2B0uBQM4UDYWyMLag6AAWwY&rqlang=cn&rsv_enter=0&rsv_sug3=7&rsv_sug1=5&rsv_sug7=100&inputT=4377&rsv_sug4=5192";
			$(".hre").prop("href",htt);
			e.target = "_blank"; 
			
			
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