<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
//1.定义JSON对象
var person={
		"name":"李四",
		"sex":"男",
		"age":22,
		address:"江西南昌"
}
document.write(person.name+"<br/>");
//2.定义JSON数组
var	arr=["lisi","zhangsan","wangwu"];
document.write(arr[1]+"<br/>");
var persons=[{"name":"李四","sex":"男","age":23,"address":"江西南昌"},
             {"name":"李逵","sex":"男","age":34,"address":"梁山"}
             ];
document.write(persons[1].name+"<br/>");
//3.JSON对象数组嵌套
var objArr={"阿凡达":"左雪昌","特点":"吊毛","特性":["迭代","上下车",{"速度快":{"少读":"少读5分钟"}}]};
document.write(objArr.特性[2].速度快.少读+"<br/>");

var all=[{
		"name":"李连杰",
		"sex":"男",
		"address":[
		{"one":"江西南昌市红谷滩新区23号"},
		{"two":"江西抚州赣东大道213号"}
		]
		},
		{
		"name":"吊毛"	
		}
		]
document.write(all[0].address[1].two);


</script>

<body>
</body>
</html>