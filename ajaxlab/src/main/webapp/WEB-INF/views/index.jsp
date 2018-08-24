<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX Lab</title>
</head>
<body>

<h1>Working with Asynchronous JavaScript and XML</h1>

<div id="science"></div>

<script>
var request = new XMLHttpRequest();
request.open("GET", "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json");
request.send();

request.onload = function() {
	console.log(request.responseText);
	var data = JSON.parse(request.responseText);
	
// renderHTML(data.complete[0]);
	
	for (var jay of data.complete) {
		renderHTML(jay);
	}
	
};

//created to render the HTML to the page, can reuse this by making modifications
function renderHTML(data){
	var htmlString = "<p>" + data.firstName + " " + data.lastName + " " + data.innovation + " " + data.year + "</p>";
	document.getElementById("science").insertAdjacentHTML("beforeend", htmlString);
}

</script>

</body>
</html>