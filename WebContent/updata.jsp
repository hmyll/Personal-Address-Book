<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>修改</title>
	<link rel="stylesheet" href="Mycss/add.css"/>
	<script type="text/javascript" src="Myjs/updata.js"></script>
</head>
<body>
	<%
		String user=(String)session.getAttribute("user");
		if(user==null){
			response.sendRedirect("index.jsp");
		}
	%>
<h2>修改用户</h2>
	<div>
		<form  name="addform">
			<div class="d1">
				姓名：<input class="txt" type="text" name="name" value=<%=request.getParameter("name")%>><br>
			</div>
			<div class="d2">
				电话：<input class="txt" type="text" name="phone" value=<%=request.getParameter("phone")%>><br>
			</div>
			<div class="d3">
				住址：<input class="txt" type="text" name="address" value=<%=request.getParameter("address")%>><br>
			</div>
			<% request.getSession().setAttribute("key",request.getParameter("key"));%>
			<input class="bt1" type="submit" value="添加" onclick="queren()" value=<%=request.getParameter("key")%>>
			<input class="bt2" type="submit" value="取消" onclick="quxiao()">
		</form>
	</div>
</body>
</html>