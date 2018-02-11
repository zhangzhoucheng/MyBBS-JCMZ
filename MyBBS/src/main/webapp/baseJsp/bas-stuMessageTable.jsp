<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		
		<div id="main"><table border="1">
			<tr>
				<td>编码</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年纪</td>
				<td>学校</td>
				<td>学院</td>
				<td>专业</td>
				<td>班级</td>
				<td>入学日期</td>
				<td>籍贯</td>
				<td>爱好</td>
				<td>特长</td>	
			</tr>
			
			<c:forEach items="${list1}" var="l" >
			<tr id="flushTr">
				<td>${l.stuCode }</td>
				<td>${l.stuName }</td>
				<td>${l.stuGender }</td>
				<td>${l.stuAge }</td>
				<td>${l.stuSchool }</td>
				<td>${l.stuAcademy }</td>
				<td>${l.stuMajor }</td>
				<td>${l.stuClass }</td>
				<td>${l.stuTimeGotoshcool }</td>
				<td>${l.stuOrigin }</td>
				<td>${l.stuHobby }</td>
				<td>${l.stuSpecialty }</td>
				
			</tr>
			</c:forEach>
		</table>
		</div>
</body>
</html>