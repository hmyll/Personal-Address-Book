<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.d1 {
	margin-top: 20px;
	border: 1px solid black;
	width: 930px;
	height: 450px;
	border: 1px solid black;
	position: relative;
}

.d2 {
	position: absolute;
	left: 50px;
	top: 100px;
}
</style>
</head>
<body>
	<%
		String user=(String)session.getAttribute("user");
		if(user==null){
			response.sendRedirect("index.jsp");
		}
	%>
	<div class="d1">
		<div class="d2">
			<table id="ttt" border="1" width=800px height=200px >
				<tr>
					<th>姓名</th>
					<th>电话</th>
					<th>家庭住址</th>
					<th colspan="2">操作</th>
				</tr>
				<tr>
					<td align="center">row 1, cell 1</td>
					<td align="center">row 1, cell 2</td>
					<td align="center">row 1, cell 2</td>
					<td align="center"><input type="button" value="修改"></td>
					<td align="center"><input type="button" value="删除" onClick="javascript:this.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode);"></td>
				</tr>
				<tr>
					<td align="center">row 1, cell 1</td>
					<td align="center">row 1, cell 2</td>
					<td align="center">row 1, cell 2</td>
					<td align="center"><input type="button" value="修改"></td>
					<td align="center"><input type="button" value="删除" onClick="javascript:this.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode);"></td>
				</tr>
				<tr>
					<td align="center">row 1, cell 1</td>
					<td align="center">row 1, cell 2</td>
					<td align="center">row 1, cell 2</td>
					<td align="center"><input type="button" value="修改"></td>
					<td align="center"><input type="button" value="删除" onClick="javascript:this.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode);"></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>