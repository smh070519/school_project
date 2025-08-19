<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav</title>
<style>
nav {
	width: 100%;
	height: 50px;
	background-color: #FF7F50; /* 코랄 오렌지 */
	display: flex;
	align-items: center;
	justify-content: center;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
	font-family: 'Segoe UI', sans-serif;
}

nav a {
	color: white;
	padding: 0 25px;
	text-decoration: none;
	font-weight: bold;
	font-size: 16px;
	transition: color 0.3s, background-color 0.3s;
}

nav a:hover {
	background-color: white;
	color: #FF7F50;
	border-radius: 5px;
	padding: 10px 20px;
}
</style>
</head>
<body>
	<nav>
		<a href="insert.jsp">코트예약</a>
		<a href="select.jsp">코트예약조회</a>
		<a href="count.jsp">사용일수조회</a>
		<a href="index.jsp">홈으로</a>
	</nav>
</body>
</html>
