<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script text="text/javascript">
	function sign_up(f){
		f.action="MyController?cmd=3";
		f.submit();
	}
</script>
<style text="text/css">
table {
	width: 500px;
	text-align: center;
}

table {
	background-color: #99ccff
}

th {
	align: center;
}
</style>
<body>
	<div align="center">
		<h2>회원가입</h2>
		<hr>
		<form  method="post">
			<table>
				<tr>
					<th>아이디</th>
					<th><input type="text" name="id" size="20" placeholder="아이디"></th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<th><input type="password" name="pwd" placeholder="password" size="20"
						name="비밀번호"></th>
				</tr>
				<tr>
					<th>이름</th>
					<th><input type="text" name="name" size="20" placeholder="이름"></th>
				</tr>
				<tr>
					<th>사는 곳</th>
					<th><select name="house">
							<option value="101">101호</option>
							<option value="102">102호</option>
							<option value="103">103호</option>
							<option value="201">201호</option>
							<option value="202">202호</option>
							<option value="301">301호</option>
							<option value="별채">별채</option>
					</select></th>
				</tr>
			</table>
			<br>
			<!-- 한줄 띄우기 -->
			<input type="submit" value="회원가입 완료" background-color="#ccff99"onclick="sign_up(this.form)" > &nbsp&nbsp&nbsp&nbsp 
			<a href="main.jsp"><button type="button">취소</button></a>
		</form>
	</div>
</body>
</html>