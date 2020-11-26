<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.lxh.smart.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//设置字符编码
	request.setCharacterEncoding("utf-8");
	//得到smartupload对象
	SmartUpload download=new SmartUpload();
	//上传初始化
	download.initialize(pageContext);
	//设置单个文件最大长度
	download.setMaxFileSize(1000000);
	//设置总文件的最大长度
	download.setTotalMaxFileSize(10000000);
	//防止浏览器自动打开图片
	download.downloadFile("/upload/362525199807161534.jpg");
	Files files=download.getFiles();

%>
</body>
</html>