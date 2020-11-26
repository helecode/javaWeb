<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.print("reqContextPath:"+request.getContextPath()+"<br/>");
	out.print("reqServletPath:"+request.getServletPath()+"<br/>");
	out.print("reqURL:"+request.getRequestURI()+"<br/>");
	out.print("reqRealPath:"+request.getRealPath("/")+"<br/>");
%>
<form method="post" action="S2upload02upload.jsp"  enctype= "multipart/form-data">
上传文件1：<input type="file" name="filename"><br/>
上传文件2：<input type="file" name="filename"><br/>
上传姓名：<input type="text" name="filename"><br/>
<input type="submit" value="提交"> 
</body>
</html>