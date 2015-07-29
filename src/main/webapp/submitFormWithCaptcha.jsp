<%@page import="com.dlp.recaptcha_demo.validator.ReCaptchaValidator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Thanks for submitting data</h2>
	<%
		ReCaptchaValidator reCaptchaValidator = new ReCaptchaValidator();
		boolean isCaptchaValid = reCaptchaValidator.validatate(
				request.getParameter("g-recaptcha-response"),
				request.getRemoteAddr());
		if (isCaptchaValid) {
			out.print("Welcome " + request.getParameter("name"));
		} else {
			out.print("Please pass captcha verification");
		}
	%>
</body>
</html>