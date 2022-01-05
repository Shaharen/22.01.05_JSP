<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 여기에서 네이버, 다음, 구글 해당되는 값에 따라 페이지를 이동하시오 -->
	<%
	request.setCharacterEncoding("UTF-8");
	String choice = request.getParameter("url");
	String url = "";

	if (choice.equals("네이버")) {
		url = "https://www.naver.com";
	} else if (choice.equals("다음")) {
		url = "http://www.daum.net";
	} else if (choice.equals("구글")) {
		url = "http://www.google.co.kr";
	}
	response.sendRedirect(url);
	%>




</body>
</html>