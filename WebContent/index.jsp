<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人通讯录</title>
<link rel="stylesheet" href="Mycss/index.css"/>
<script type="text/javascript" src="Myjs/index.js"></script>
</head>
<body>
<div class="container">
	<div class="content">
		<h2>个人通信录</h2>
		<form action="/AddList/LoginServlet" method="POST" name="form">
			<p class="p1">用户名：</p><input type="test" name="username"/><br>
			<p class="p2">密&nbsp;&nbsp;&nbsp;码：</p><input type="password" name="password"/><br>
			验证码：<input type="text" name = "check_code"'>
				<img src="/AddList/CheckServlet"><br/>
			<input class="btn1" type="submit" value="登录"/>
		</form>
	</div>
</div>
</body>
</html>