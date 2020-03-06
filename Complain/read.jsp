<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Insert title here</title>
<link rel="stylesheet" href="css/table.css">
</head>
<body>
<div style="position: fixed; top:5px; right:5px;">
	<a href="MyController?cmd=11"><button>로그아웃</button></a>
</div>
	<h2 align="center">불만사항</h2>

	<p align="center">
		<a href="MyController?cmd=4&nowPage=1">글 목록으로 이동</a>
	</p>
	<hr>
</body>
<table align="center">
		<tr>
			<th>글 넘버</th>
			<th>작성자</th>
			<th>작성날짜</th>
		</tr>
	<c:choose>
		<c:when test= "${empty wr}">
			<tr>
				<td colspan="3">
					<h3>자료가 존재 하지 않음</h3>
				</td>
			</tr>
		</c:when>
		<c:otherwise>
				<c:if test="${wr.id eq login }">
					<p align="center">
					<button><a href="MyController?cmd=8&idx=${wr.idx }&nowpage=1">글 수정하기</a></button>&nbsp;
					<button><a href="MyController?cmd=10&idx=${wr.idx }&nowPage=1">글 삭제하기</a></button>
					</p>
				</c:if>
				<tr height="20">
					<td><c:out value="${wr.idx }"></c:out></td>
					<td><c:out value="${wr.id }"></c:out></td>
					<td><c:out value="${wr.time.substring(0,10)}"></c:out></td>
				</tr>
				<tr>
					<td colspan="3"><c:out value="${wr.subject }"></c:out></td>
				</tr>
				<tr height="350">
					<td colspan="3"><c:out value="${wr.contents}"></c:out></td>
				</tr>
		</c:otherwise>
	</c:choose>
</table>
</html>