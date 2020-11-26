<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib	uri="/WEB-INF/c.tld" prefix="c" %>
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
A a=new A();
pageContext.setAttribute("a", a);
pageContext.setAttribute("name", "pageNameValue");
request.setAttribute("name", "namevalue");

%>
<c:out value="${name }" default="value为空是显示的值1" ></c:out><br/>

<c:set var="password" value="passwordvalue" scope="request"></c:set><br/>
<c:set target="${a }" property="name" value="passwordvalue1" ></c:set><br/>
<h2>${password }</h2>
<h2>${a.name }</h2>
<c:remove var="name" scope="page"/>
<c:out value="${name }" default="value为空是显示的值1" ></c:out><br/><br/>

<c:catch var="err">
	<% out.println(12/0);%>
</c:catch>
<h2>异常信息：${err }</h2>

<c:if test="${1==1}" var="result" scope="request">${result },判断成功执行的语句<br/>
</c:if>

<c:choose>
<c:when test="${2==3}"><h2>第一个结果为true</h2></c:when>
<c:when test="${3==2}"><h2>第二个结果为true</h2></c:when>
<c:otherwise><h2>结果为false</h2></c:otherwise>
</c:choose>

<%
//1. 数组
String s[]={"hello","world","good","very"};
request.setAttribute("info", s);
//2.list
List<String> alist2=new ArrayList<String>();
alist2.add("A");
alist2.add("B");
alist2.add("C");
alist2.add("D");
request.setAttribute("alist2", alist2);
//3.map
Map<String,String> hashMap=new HashMap<String,String>();
hashMap.put("A", "1");
hashMap.put("B", "2");
hashMap.put("C", "3");
hashMap.put("D", "4");
request.setAttribute("hashMap", hashMap);
%>
<!-- 遍历数组的元素-->
<c:forEach items="${info}" var="mem" begin="1" end="8" step="2">
<c:out value="${mem}" /><br/>
</c:forEach><br/><br/>

<c:forEach items="${alist2 }" var="s">
${s}<br/>
</c:forEach>
<br/><br/>
<c:forEach items="${hashMap }" var="s">
${s}-->${s.key}---${s.value}<br/>
</c:forEach>
<br/><br/>

<c:set var="p" value= "你好,中国,南昌,高新区" />
<c:forTokens items="${p}" delims="," var= "m" >
<h2><c:out value="${m}" /></h2>
</c:forTokens>
<!-- 指定开始、结束的位置 -->
<c:forTokens items=" ${p} " delims= "," var= "m" begin= "0" end= "6" step= "2" >
<c:out value="${m}" />
</c:forTokens>

<c:import url="/1102EL/2EL.jsp">
	<c:param name="nameName" value="valueValue"></c:param>
</c:import>


<c:url value="/1102EL/1EL.jsp" var="elr">
</c:url>
<a href="${elr}">elr</a>
<c:redirect url="/1102EL/2EL.jsp">
 <c:param name="namep" value="valuep"></c:param>
</c:redirect>
</body>
</html>