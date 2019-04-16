<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link  style="text/css" rel="stylesheet" href="resource/css/mystyles.css"  />
<script type="text/javascript" src="resource/js/jquery-3.0.0.min.js" ></script>
<script type="text/javascript">

/* 保存代码 */
	function save(){
		$.ajax({
			type:"get",
			url:"add",
			data:$("form").serialize(),
			success:function(rel){
				if(rel)
				{
					alert("成功保存")
					location="list";
				}else
					{
					alert("失败")
					}
			},
			error:function(){
				alert("添加失败,请联系 管理员")
			}
		})
	}
</script>
</head>
<body>
<form action="">
<table>
	
	<tr>
		<td>罪犯名称</td>
		<td><input name='criminalName'  ></td>
	</tr>
	<tr>
		<td>身份证编号</td>
		<td><input name='cardNo'  ></td>
	</tr>
	<tr>
		<td>年龄</td>
		<td><input name="criminalAge"  ></td>
	</tr>
	<tr>
		<td>性别</td>
		<td><input type="radio" name="criminalSex" value='男' >男<input type="radio" name="criminalSex" value='女' >女</td>
	</tr>
	<tr>
		<td>详细信息</td>
		<td><input name="criminalDesc"  ></td>
	</tr>
	<tr>
		<td > <a href="list" >返回</a> </td>
		<td > <a href="javascript:save()" >保存</a> </td>
	</tr>
</table>
</form>
</body>
</html>