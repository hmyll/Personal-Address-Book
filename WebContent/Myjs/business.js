/**
 * 
 */
function chakan() {
	/*document.form.action="chakan.jsp"
	document.form.submit();*/
	document.getElementById("kuang").src = "chakan.jsp"
}
function add() {
	document.getElementById("kuang").src = "add.jsp"
}
function changeFrameHeight() {
	var ifm = document.getElementById("kuang");
	var height = ifm.height = document.documentElement.clientHeight;
	var width = ifm.width = document.documentElement.clientWidth;
}

window.onload = window.onresize = function() {
	changeFrameHeight();
}
