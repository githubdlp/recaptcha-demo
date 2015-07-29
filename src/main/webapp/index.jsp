<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reCaptcha demo</title>
<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
	<h2>This is home page for reCaptcha demo project</h2>
	<form action="submitFormWithCaptcha.jsp" method="POST">
		Enter your name : <input type="text" name="name"><br>

		<div class="g-recaptcha"
			data-sitekey="6LfqdwoTAAAAAEqYm6CNuOQ7lbIiJijUMAKeACRz"
			data-theme="dark"></div>
		<br /> <input type="submit" value="Submit">
	</form>
</body>
</html>