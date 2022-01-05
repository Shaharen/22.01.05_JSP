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
	String name = request.getParameter("name");
	String java = request.getParameter("java");
	String web = request.getParameter("web");
	String iot = request.getParameter("iot");
	String android = request.getParameter("android");

	int s_j = Integer.parseInt(java);
	int s_w = Integer.parseInt(web);
	int s_i = Integer.parseInt(iot);
	int s_a = Integer.parseInt(android);

	// double sum = s_j + s_w + s_i + s_a;
	double mean = (s_j + s_w + s_i + s_a) / 4.0;
	String grade = "";

	if (mean >= 95) {
		grade = "A+";
	} else if (mean >= 90) {
		grade = "A";
	} else if (mean >= 85) {
		grade = "B+";
	} else if (mean >= 80) {
		grade = "B";
	} else if (mean >= 75) {
		grade = "C+";
	} else if (mean >= 70) {
		grade = "C";
	} else {
		grade = "F";
	}
	%>
	<table>
		<tr>
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>JAVA점수</td>
			<td><%=java%></td>
		</tr>
		<tr>
			<td>WEB점수</td>
			<td><%=web%></td>
		</tr>
		<tr>
			<td>IOT점수</td>
			<td><%=iot%></td>
		</tr>
		<tr>
			<td>ANDROID점수</td>
			<td><%=android%></td>
		</tr>
		<tr>
			<td>평균</td>
			<td><%=mean%></td>
		</tr>
		<tr>
			<td>학점</td>
			<td><strong><%=grade%></strong></td>
		</tr>
	</table>
</body>
</html>