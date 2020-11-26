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
	pageContext.setAttribute("uname", "张三");
	request.setAttribute("uname", "李四");
	session.setAttribute("uname", "王五");
	application.setAttribute("uname", "赵六");
%>
	<h2>默认：${uname }</h2><!-- 会依次从pageContext>request>session>application范围中寻找uname属性 -->
	<h2>pageContext范围：${pageScope.uname }</h2>
	<h2>requestScope范围：${requestScope.uname }</h2>
	<h2>sessionScope范围：${sessionScope.uname }</h2>
	<h2>applicationScope范围：${applicationScope.uname }</h2>

<form action= "1EL.jsp" method= "post" >
	姓名: <input type= "text" name= "uname" /><br/>
	兴趣爱好： <input type= "checkbox" name= "inst" value= "上网" />上网
	<input type= "checkbox" name= "inst" value= "看书" />看书
	<input type= "checkbox" name= "inst" value= "购物" />购物
	<br/>
	<input type= "submit" value= "提交" />
</form>
	
	<h2>姓名：${param.uname }</h2>
	<h2>兴趣爱好：${paramValues.inst[0] }</h2>
	<h2>兴趣爱好：${paramValues.inst[1] }</h2>
	<h2>兴趣爱好：${paramValues.inst[2] }</h2>
	<h2>ip地址：${request.remoteAddr}</h2>
</body>
</html>