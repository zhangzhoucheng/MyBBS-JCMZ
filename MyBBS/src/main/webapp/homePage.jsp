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
    <link href="${rootPath}/cs/qq/bootstrap.min.css" rel="stylesheet" />
    <%@include file="/common/linkAndScriptRef.jsp"%>
    <script src="${rootPath}/js/qq/index.js"></script>
    <script src="${rootPath}/js/qq/bootstrap.js"></script>
     <script src="${rootPath}/js/qq/jquery-3.3.1.min.js" ></script>
     <script src="${rootPath}/js/jquerySession.js" type="text/javascript"></script>
    
    <style>
        .login{
            line-height: 40px;
            font-size: 16px;
            margin-left: 15px;
        }
    </style>
</head>
<body style="background-image: url('${rootPath}/image/log2.jpg');width: 100%;height: 100%;background-size:100%">
<div class="form-horizontal" style="height: 420px;width: 420px;margin: 13% auto;">
<div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">用户名</label>
    <div class="col-sm-8">
        <input type="text" class="form-control" id="username" placeholder="Username" style="display:inline;" autocomplete="off">
        <label class="sr-only1"  id="prompt" style="color:red;">&nbsp;</label><label style="opacity: 0">women</label><br>
    </div>
</div>
<div class="form-group">
    <label for="userpassword" class="col-sm-4 control-label">密码</label>
    <div class="col-sm-8">
        <input type="password" class="form-control" id="userpassword" placeholder="Password" style="display:inline;">
        <label class="sr-only1"  id="prompt_pas" style="color:red;"></label><label style="opacity: 0">women</label><br>
    </div>
</div>
<div class="form-group">
    <div class="col-sm-offset-4 col-sm-8">
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me" id="remberP" checked="checked" name="remberP" required="required"> 记住密码
            </label>
        </div>
    </div>
</div>
<div class="form-group">
    <div class="col-sm-offset-4 col-sm-4" style="border-right: 1px solid #666">
        <button  class="btn btn-default"  id="btnLogin" >登录</button>
        <button  class="btn btn-default" onclick="window.location.href='baseJsp/register.jsp'">注册</button>
    </div>
    <a href="#" onclick="visitor();return false;" class="login">游客</a>
    <a href="#" class="login">找回密码</a>
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
   	function visitor(){
	  //alert(1);
	//有问题 $.session.set('user1','123');
	 removeSession("user");
	  window.location.href="baseJsp/tourist";
    }
    function removeSession(name){
    	$.ajax({
    		url:"baseJsp/removeSession?name="+name,
  		    type:"post",
  		    dataType:"json",
  		    async:false,
  		    success:function(){
  		    	
  		    },
  		    error:function(){
  		    	alert("removeSession error");
  		    }
    	})
    }
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
   			url:"${rootPath}/baseJsp/checkName?username="+username,
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
   				window.location.href="${rootPath}/baseJsp/index.jsp";
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
			url:"baseJsp/checkPas",
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
					if(flag==2){
						//flag为2表示是按钮调用的此方法，且msg是2，用户存在跳转到首页
						window.location.href="${rootPath}/baseJsp/loginSuccess";
					}
					
				}
			},
			error:function(){
				alert("error1");
				window.location.href="${rootPath}/homePage.jsp";
			}
		})
	}
   	function cookieInputPas(){//当cookie中有该用户时候，则输入记住的密码到iput表单
   		
   		var username=$("#username").val();
   		$.ajax({
   			url:"baseJsp/checkNameCookie?username="+username,
   			type:"get",
   			dataType:"json",
   			success:function(data){
   				$("#userpassword").val(data.pas);
   				
   			},
   			error:function(){
   				alert("error");
   				window.location.href="${rootPath}/homePage.jsp";
   			}
   		})
   	}
   </script>
</body>
</html>