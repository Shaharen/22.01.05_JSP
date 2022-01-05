<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String[] item = request.getParameterValues("item");
	Random r = new Random();
	int result = r.nextInt(item.length);
	%>
	<div style="text-align : center;">
	랜덤 당첨 결과<br><br>
	<%=title %> <br>
	<%=item[result] %>
	</div>
</body>
</html>