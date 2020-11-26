<%@ page language="java" import="javax.naming.*" contentType="text/html;charset=utf8 "
    pageEncoding="utf8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Insert title here</title>
</head>
<body>
<%
	//1.取得Context对象
	Context ct=new InitialContext();
	//2.查找资源(java:comp/env格式是固定的)
	String res=(String)ct.lookup("java:comp/env/tjndi");
	//3.输出资源内容
	out.print("内容为："+res);
%>
</body>
</html>