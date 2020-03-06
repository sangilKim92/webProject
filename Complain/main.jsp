<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 500px;
}

table, th, td {
	border: 1px solid black;
	text-align: center;
}

th {
	background-color: #99ccff
}
</style>
</head>
<body>
	<div align="center">

		<h2>성내2동 주민게시판.</h2>
		<hr>
		<form action="MyController?cmd=1&nowPage=1" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" size="20" placeholder="아이디"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd" size="20"
						placeholder="비밀번호"></td>
				</tr>

				<tr>
					<td><input type="submit" value="로그인"></td>
					<td><a href="MyController?cmd=2"><button type="button"
								style="width: 100px;">회원가입</button></a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>