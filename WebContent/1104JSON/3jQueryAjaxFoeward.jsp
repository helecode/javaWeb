<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//注意此时在该页面中加入脚本时，html等代码不要加入，否则服务器端响应的数据内容就
//不是true或false
String name=request.getParameter("uname");
//System.out.println("xingming="+name);
//注意此时在该页面中加入脚本时，html等代码不要加入，否则服务器端响应的数据内容就不是true或false
if("li".equals(name)){
out.print("true");
} else{
out.print("false");
}
%>