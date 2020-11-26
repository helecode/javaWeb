<%@ page language="java"  import="javax.naming.*,javax.sql.*,java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Context ct=new InitialContext();
	DataSource ds=(DataSource)ct.lookup("java:comp/env/jdbc/stu");
	Connection conn=ds.getConnection();
	out.println("conn:"+conn);
%>
</body>
</html>