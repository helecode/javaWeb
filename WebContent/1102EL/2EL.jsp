<%@ page language="java" import="java.util.*"	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
class A{
	public  String name="name";
	public  String password="password";
	
}
%>
<% A a=new A(); 
out.println("a:"+a);
request.setAttribute("a", a);
	List<String> alist=new ArrayList<String>();
	alist.add("A");
	alist.add("B");
	alist.add("C");
	alist.add("D");
request.setAttribute("list", alist);
	Set<String> aset=new TreeSet<String>();
	aset.add("E");
	aset.add("F");
	aset.add("G");
request.setAttribute("set", aset);
Map<String,String> mmap=new TreeMap<String,String>();
	mmap.put("A", "1");
	mmap.put("B", "2");
	mmap.put("C", "3");
	mmap.put("D", "4");
request.setAttribute("map", mmap);
	%>
<%	//jstlImport传参
	String valueValue=(String)request.getParameter("nameName");
	out.println("<br/>valueValue:"+valueValue);
%>
<h2>nameName:${nameName}</h2>	
<h2>${a}</h2>	
<h2>${list}</h2>
<h2>${list[0]}</h2>
<h2>${set}</h2>
<h2>${map.A}</h2>
<h2>${map["A"]}</h2>
</html>