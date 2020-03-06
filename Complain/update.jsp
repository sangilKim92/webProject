<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>박명록 수정</title>
<link rel="stylesheet" href="css/table.css">
<div style="position: fixed; top:5px; right:5px;">
	<a href="MyController?cmd=11"><button>로그아웃</button></a>
</div>
</head>
<body>
		<div align="center">
		<a href="MyController?cmd=1&nowPage=1">[글 목록으로 이동하기]</a>
		<hr>
		<form action="MyController?cmd=9&nowPage=1&idx=${wr.idx }" method="post"> 

			<table>
				<tr>
					<th colspan="2">글 작성</th>
				</tr>
				<tr>
					<td width="100">제목</td>
					<td width="200"><input type="text" name="subject"></td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="10" cols="60" name="contents"></textarea>
					</td>
					</tr>
					<tr>
						<td><input type="submit" value="등록하기"></td>
						<td><input type='reset' value="글 새로 작성하기"></td>
						<td><button><a href="MyController?cmd=10&idx=${wr.idx}&nowPage=1">글 삭제하기</a></button><td>
					</tr>
			</table>
		</form>
</body>
</html>