<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="/WEB-INF/c.tld"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public class A{
	private String name="333";
	public String getName() {
		return name;
		}
	public void setName(String name) {
		this.name = name;
		}
}
%>
<%
request.setAttribute("name", "namevalue");
A a=new A();
pageContext.setAttribute("a", a);
%>
<c:out value="输出到页面的值" default="value为空是显示的值"></c:out><br/>
<c:out value="${name }" default="value为空是显示的值1" ></c:out><br/>

<c:set var="password" value="passwordvalue" scope="request"></c:set><br/>
<c:set target="${a }" property="name" value="passwordvalue1" ></c:set><br/>
<h2>${password }</h2>
<h2>${a.name }</h2>

<c:remove var="name" scope="request"/>
<c:out value="${name }" default="value为空是显示的值1" ></c:out><br/><br/>

<c:catch var="err">
<%out.print(12/0); %>
</c:catch>
${err }<br/><br/>
<c:if test="${1==1}" var="result" scope="request">${result }<br/></c:if>
<br/><br/>
<c:choose>
<c:when test="${2==3}"><h2>结果为true</h2></c:when>
<c:otherwise><h2>结果为false</h2></c:otherwise>
</c:choose>
<%
List<String> alist2=new ArrayList<String>();
alist2.add("A");
alist2.add("B");
alist2.add("C");
alist2.add("D");
request.setAttribute("alist2", alist2);
Map<String,String> hashMap=new HashMap<String,String>();
hashMap.put("A", "1");
hashMap.put("B", "2");
hashMap.put("C", "3");
hashMap.put("D", "4");
request.setAttribute("hashMap", hashMap);
%>
<c:forEach items="${alist2 }" var="s">
${s}<br/>
</c:forEach>
<br/><br/>
<c:forEach items="${hashMap }" var="s">
${s.key}---${s.value}<br/>
</c:forEach>
<br/><br/>

</body>
</html>