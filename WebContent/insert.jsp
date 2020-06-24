<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人通讯录</title>
<link rel="stylesheet" href="Mycss/business.css"/>
<script type="text/javascript" src="Myjs/business.js"></script>
</head>
<body>
	<%
		String user=(String)session.getAttribute("user");
		if(user==null){
			response.sendRedirect("index.jsp");
		}
	%>
	<div class="container">
		<div class="content">
			<div class="tou">
				<a href="business.jsp" style="text-decoration:none;color:rgb(0,0,0);">
					<h2>个人通讯录</h2>
				</a>
			</div>
			<div class="zuo">
				<form name="form1">
					<input class="btn1" type="button" value="查看好友" onclick="window.location.href='business.jsp'">
					<input class="btn2" type="button" value="添加好友" onclick="window.location.href='insert.jsp'">
				</form>
			</div>
			<div class="you">
				<iframe frameborder=no allowtransparency=no class="kuang" id="kuang" src="add.jsp"></iframe>
			</div>
		</div>
	</div>
</body>
</html>