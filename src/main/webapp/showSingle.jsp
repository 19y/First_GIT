<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link  style="text/css" rel="stylesheet" href="resource/css/mystyles.css"  />
<script type="text/javascript" src="resource/js/jquery-3.0.0.min.js" ></script>
</head>
<body>

<table>
	<tr>
		<td>编号</td>
		<td>${param.cid }</td>
	</tr>
	<tr>
		<td>罪犯名称</td>
		<td>${param.name }</td>
	</tr>
	<tr>
		<td>身份证编号</td>
		<td>${param.no }</td>
	</tr>
	<tr>
		<td>年龄</td>
		<td>${param.age }</td>
	</tr>
	<tr>
		<td>性别</td>
		<td>${param.sex }</td>
	</tr>
	<tr>
		<td>详细信息</td>
		<td>${param.desc }</td>
	</tr>
	<tr>
		<td colspan="2" > <a href="list" >返回</a> </td>
	</tr>
</table>

</body>
</html>