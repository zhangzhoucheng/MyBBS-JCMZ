<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../common/pageTaglibs.jsp"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>论坛系统BBS</title>
        <!-- link样式引入和js引入 -->
    <link rel="icon" href="../images/loginImg/favicon.ico">
        <!-- Custom styles for this template -->
    <link href="../cs/loginBeauty1.css" rel="stylesheet" >
    <%@include file="../common/linkAndScriptRef.jsp"%>
  </head>

  <body class="text-center">
  	<div id="external">
  
  
		<div class="header-me"  id="top">
			<ul id="ul1" class="ul1">
				<li><a href="#">帮助</a></li>
				<li><a href="register.jsp">注册|</a></li>
				<li><a href="login.jsp">登录|</a></li>
				<li><a href="${rootPath}/baseJsp/index.jsp">首页|</a></li>
			</ul>
		</div>
	  	
	   <div id="div-main" >  
	    <form class="form-signin" action="#">
	      <img class="mb-4" src="../images/loginImg/bootstrap-solid.svg" alt="" width="72" height="72">
	      <h1 class="h4 mb-3 font-weight-normal">校园论坛</h1>
	      <label for="inputEmail" class="sr-only" >名称</label>
	      <input type="email" id="username" class="form-control" placeholder="名称" required autofocus><br>
	      <label class="sr-only1"  id="prompt" style="color:red;">&nbsp;</label><label style="opacity: 0">women</label><br>
	      <label for="inputPassword" class="sr-only" >密码</label> 
	      <input type="password" id="userpassword" class="form-control" placeholder="密码" required>
	      <label class="sr-only1"  id="prompt_pas" style="color:red;"></label><label style="opacity: 0">women</label><br>
	      <div class="checkbox ">
	        <label>
	          <input type="checkbox" value="remember-me" id="remberP" checked="checked" name="remberP" required="required"> 记住密码
	        </label>
	      </div>
	      <button class="btn btn-lg btn-primary btn-block" id="btnLogin">登录</button>
	      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
	    </form>
	   </div>
   </div>
   <script type="text/javascript">
  /*  	$(function(){
   		alert("jquery访问");
   	}) */
   	
   
   	$(function(){
   		//用户名不存在
   		$("#username").blur(function(){
   			
   			checkNameNull();
   		})
   		/* $("#userpassword").blur(function(){
   			
   			checkPasNull(1);
   		}) */
   		$("#btnLogin").click(function(){
   			checkPasNull(2);
   	})
   		//alert("jquery访问");
   		
   	})
   	$(window).resize(function(){
   		//alert("1:"+$(window).height());
   	})
   	function checkNameNull(){
   		var username=$("#username").val();
			if(username==null||username==""){
				$("#prompt").html("用户名不能为空!");
			}else{
				checkName(username);
			}
   	}
   	function checkName(username){
   		$.ajax({
   			url:"checkName?username="+username,
   			type:"get",
   			dataType:"json",
   			success:function(data){
   				
   				$("#prompt").html(data.msg);
   				if(data.msg==""||data.msg==null){
   					cookieInputPas();//用户名存在则显示出记住的密码
   				}
   				else{
   				 $("#userpassword").val("");
   				}
   			},
   			error:function(){
   				alert("error");
   				window.location.href("${rootPath}/homePage.jsp");
   			}
   		})
   	}
   	function checkPasNull(flag){
   		var username=$("#username").val();
   		var userpassword=$("#userpassword").val();
   		
   		
   		if(userpassword==null||userpassword==""){
			$("#prompt_pas").html("密码不能为空!");
			if(username==null||username==""){
				$("#prompt").html("用户名不能为空!");
			}
		}else {
			$("#prompt_pas").html("");
			if(username==null||username==""){
				$("#prompt").html("用户名不能为空!");
			}
			else{
				checkPas(username,userpassword,flag);
			}
		}
   		
   	}
   	function checkPas(username,userpassword,flag) {
   		var remberP=$("#remberP").prop("checked");
   		
		$.ajax({
			url:"checkPas",
			data:"username="+username+"&userpassword="+userpassword+"&remberP="+remberP,
			dataType:"json",
			success:function(data){
				//返回几个状态，用来对应输出。0是用户不存在，1是密码错误，2是可以登录
				if(data.msg==0){
					$("#prompt").html("用户名不存在!");
					$("#prompt_pas").html("");
				}
				else if(data.msg==1){
					$("#prompt_pas").html("密码错误!");
				}
				else{
					if(flag==1){
						$("#prompt").html("");
						$("#prompt_pas").html("");
					}
					if(flag==2){alert(2);
						//flag为2表示是按钮调用的此方法，且msg是2，用户存在跳转到首页
						window.location.href="baseJsp/loginSuccess";
					}
					
				}
			},
			error:function(){
				alert("error");
				window.location.href("${rootPath}/homePage.jsp");
			}
		})
	}
   	function cookieInputPas(){//当cookie中有该用户时候，则输入记住的密码到iput表单
   		var username=$("#username").val();
   		$.ajax({
   			url:"checkNameCookie?username="+username,
   			type:"get",
   			dataType:"json",
   			success:function(data){
   				$("#userpassword").val(data.pas);
   				
   			},
   			error:function(){
   				alert("error");
   				window.location.href("${rootPath}/homePage.jsp");
   			}
   		})
   	}
   </script>

  </body>
</html>
