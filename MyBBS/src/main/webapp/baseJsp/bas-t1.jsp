<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %><!-- 可以获取用户名 --><sec:authentication property="name"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息管理系统(zhuzhuxia)</title>
<style type="text/css">
	.errorStyle{
		color:red;
	}
</style>
</head>

<body>
<h2>学生信息管理系统</h2>
<br>
<a href="all.do" style="color:red;">点击进入信息管理页面</a>

<form:form modelAttribute="student" action="start" >
<form:errors element="div" cssClass="errorClass" path="*"></form:errors>
	<span><label>名字:</label><input type="text" name="stuName"/>
		<form:errors path="stuName" cssClass="errorStyle" element="div"/>
	</span>
	<input type="submit" value="提交">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form:form>
</body>
</html>