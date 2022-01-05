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
		int num = Integer.parseInt(request.getParameter("num"));
	%>
	<div style="text-align: center">
		랜덤당첨 작성
		<form action = "exam11randomWinner.jsp" method = "post">
		<table align = "center">
			<tr>
				<td>주제</td>
				<td><input type="text" name="title"></td>
			</tr>
			<%
			for (int i = 1; i <= num; i++) {
			%>
			<tr>
				<td>아이템<%=i%>
				</td>
				<td><input type="text" name = "item"></td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="2"><input type="submit" value="시작"></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>