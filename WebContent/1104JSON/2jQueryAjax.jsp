<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type= "text/javascript" src= "../js/jquery-1.8.2.js" ></script>
<script type= "text/javascript" >
$( function(){
	$("#um").blur(
		function(){
				$.ajax({
					type:"get",
					url: "3jQueryAjaxFoeward.jsp",
					data: "uname="+this.value,
					dataType:"json",
					timeout:3000,
					success:  function(msg){
				//表示响应成功
				// alert(msg);
				if($.trim(msg)=="true"){
					$("#sp").html("该用户名存在!");
					} else{
					$("#sp").html("该用户名不存在，可以使用!");
					}
						},
				error: function() { //请求失败后要执行的代码
					alert("Ajax请求失败");
			}
		}
		);	
	});
});
</script>
<body>
用户名: <input type= "text" name= "uname" id= "um" />
<span id= "sp" /></span>
</body>
</html>