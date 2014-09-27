<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
	<H1>hello . i'm new here.</H1>
	<form method="post" 
	action="http://192.168.4.238:8080/fileUpload/upload"
	enctype="multipart/form-data"
	>
	Title : <input name="title" type="text"/><br/>
	length: <input name = "timeLength" type = "text"/><br/>
	file : <input name="videoFile" type = "file"/> <br/>
	<input type="submit" value="ok"/>
	
	</form>
	</p>
</body>
</html>