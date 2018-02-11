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
    <title>登录JustEating</title>
        <!-- link样式引入和js引入 -->
    <link rel="icon" href="../images/loginImg/favicon.ico">
        <!-- Custom styles for this template -->
    <link href="../cs/loginBeauty.css" rel="stylesheet">
    <%@include file="../common/linkAndScriptRef.jsp"%>
  </head>

  <body class="text-center">
   <div style="margin 0 auto;">
    
    <form class="form-signin">
      <img class="mb-4" src="../images/loginImg/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h4 mb-3 font-weight-normal">校园论坛</h1>
      <label for="inputEmail" class="sr-only">名称</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="名称" required autofocus><br>
      <label for="inputPassword" class="sr-only">密码</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> 记住密码
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
   </div>
   <script type="text/javascript">
   	$(function(){
   		alert("jquery访问");
   	})
   </script>
  </body>
</html>
