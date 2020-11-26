<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.lxh.smart.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	//设置字符编码
	request.setCharacterEncoding("utf-8");
	//得到smartupload对象
	SmartUpload upload=new SmartUpload();
	//上传初始化
	upload.initialize(pageContext);
	//设置单个文件最大长度
	upload.setMaxFileSize(1000000);
	//设置总文件的最大长度
	upload.setTotalMaxFileSize(10000000);
	//文件上传
	upload.upload();
	//上传文件保存路径
	//int k=upload.save("/upload");
	//out.print("文件上传个数："+k+"<br/>");
	
	Files files=upload.getFiles();
	out.print(files.getCount()+"<br/>");
	out.print(files.getSize()+"<br/>");
	for(int i=0;i<files.getCount()-1;i++){
		out.print("ssss:"+files.getFile(i).getFieldName()+"\t"+files.getFile(i).getFilePathName()+"\t"+files.getFile(i).getSize()+"\t"+"<br/>");
		String filename=files.getFile(i).getFilePathName()+"."+files.getFile(i).getFileExt();
		out.println("filename:"+filename+"<br/>");
		files.getFile(i).saveAs("/upload/"+filename);	
	}	
%>
</body>
</html>