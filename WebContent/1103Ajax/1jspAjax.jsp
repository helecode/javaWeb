<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
//1.创建XMLHttpRequest对象
var xmlHttpRequest;
function doAjax(){
	xmlHttpRequest =  new XMLHttpRequest();
}
//2.定义一个函数
function checkName(){
	var name=document.getElementById("um").value;
	//1.创建XMLHttpRequest对象
	doAjax();
	//2.与服务器取得连接
	xmlHttpRequest.open("get","userServlet?name="+name,true);
	//3.向服务端发送请求信息
	xmlHttpRequest.send("a=10");//以get方式请求提交，请求信息不能到达服务端
	//4.通过回调函数接收响应信息
	xmlHttpRequest.onreadystatechange=reback;
}
//3.回调函数
function reback(){
	alert("xmlHttpRequest.readyState:"+xmlHttpRequest.readyState+"\txmlHttpRequest.status:"+xmlHttpRequest.status)
	var span=document.getElementById("sp");//找到span元素
	//匿名函数
	if(xmlHttpRequest.readyState==4){//服务器响应结束
		if(xmlHttpRequest.status==200){//服务器响应成功
			var res=xmlHttpRequest.responseText;
			if(res!=null){
				span.innerHTML=res;
			}else{
				span.innerHTML="接收到的响应信息为空";
			}	
		}
	}
}
</script>
<body>
<h2>用户注册</h2>
<form action= "" method= "post" >
用户名: <input type= "text" id= "um" onBlur="checkName()" name= "uname" /><span
id= "sp" ></span><br/>
密码: <input type= "password" name= "upass1" /><br/>
确认密码: <input type= "password" name= "upass2" /><br/>
Email: <input type= "text" name= "uemail" /><br/>
</form>
</body>
</html>