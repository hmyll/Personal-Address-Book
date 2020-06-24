/**
 * 
 */
function denglu(){
	document.form.action="LoginServlet"
	document.form.submit();
}
function quxiao(){
	document.form.action="index.jsp"
	document.form.submit();
}
function zhuce(){
	document.form.action="signup.jsp"
	document.form.submit();
}
function queren(){
	alert("账户注册成功，请重新登录");
	document.form.action="SignServlet"
	document.form.submit();
}
function fanhui(){
	document.form.action="index.jsp"
	document.form.submit();
}