<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
S3ServletContextListener
<%

//1.添加属性
application.setAttribute("myname", "老牛");
//2.修改属性
application.setAttribute("myname", "李四");
//3.移除属性
application.removeAttribute("myname");
%>
</body>
</html>