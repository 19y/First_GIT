<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link  style="text/css" rel="stylesheet" href="resource/css/mystyles.css"  />
<script type="text/javascript" src="resource/js/jquery-3.0.0.min.js" ></script>
<script type="text/javascript">
/* 删除代码   */
	function del(id)
	{
		$.ajax({
			type:"get",
			data:{cid:id},
			url:"del",
			success:function(rel){
				if(rel)
				{
					alert("删除成功")
					location ="list"
				}
				else
					alert("删除失败")
			},
			error:function(){
				alert("删除失败，请联系管理员")
			}
		})
	}
</script>
</head>
<body>
<form action="list">
name : <input name="name" value="${name }" > <button>搜索</button>
</form>
<table>
	<tr>
		<td>编号</td>
		<td>罪犯名称</td>
		<td>身份证编号</td>
		<td>年龄</td>
		<td>性别</td>
		<td>操作   || <a href="add.jsp" >添加</a></td>
	</tr>
	<c:forEach items="${list}" var="t" >
		<tr>
			<td>${t.cid }</td>
			<td>${t.criminal_name }</td>
			<td>${t.card_no }</td>
			<td>${t.criminal_age }</td>
			<td>${t.criminal_sex }</td>
			<td> <a href="showSingle.jsp?cid=${t.cid }&name=${t.criminal_name}&no=${t.card_no}
			&age=${t.criminal_age}&sex=${t.criminal_sex}&desc=${t.criminal_desc}" >详情</a>   || <a href="javascript:del(${t.cid })" >删除</a>   ||  <a href="Update.jsp?cid=${t.cid }&name=${t.criminal_name}&no=${t.card_no}
			&age=${t.criminal_age}&sex=${t.criminal_sex}&desc=${t.criminal_desc}" >修改</a> </td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="6" >
			${page}
		</td>
	</tr>
</table>

</body>
</html>