<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="css/table.css">

<hr>
<c:choose>
	<c:when test="${empty login }">
		<meta http-equiv='refresh' content='0;url=main.jsp'>
	</c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>
<div style="position: fixed; top:5px; right:5px;">
	<a href="MyController?cmd=11"><button>로그아웃</button></a>
</div>
<div align="center">
	<h2>방명록</h2>
	<hr>
	<table>

		<p>
			[<a href="MyController?cmd=5">방명록 쓰기</a>]
		</p>
		<tr>
			<th>글 넘버</th>
			<th width="500">제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<c:choose>
			<c:when test="${empty list }">
				<tr>
					<td colspan="4">
						<h3>자료가 존재 하지 않음</h3>
					</td>
				</tr>
			</c:when>
			<c:otherwise>

				<c:forEach var="k" items="${list}" begin="${page.count }" end="${page.nowCount }" varStatus="vs">
					<tr>
						<%-- <td>${vs.count}</td> --%>
						<td>${k.idx}</td>
						<td width="500"><a href="MyController?cmd=6&idx=${k.idx}">${k.subject }</a></td>
						<td>${k.id }</td>
						<td>${k.time.substring(0,10)}</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>

	</table>
				<div class="paginate">
					<a href="MyController?cmd=1&nowPage=1" class="first">처음
						페이지</a> <span> <c:forEach var="i" begin="${page.startPage}"
							end="${page.endPage}" step="1">
							<c:choose>
								<c:when test="${i eq page.nowPage}">
									<a href="MyController?cmd=1&nowPage=${i}" class="choice">${i}</a>
								</c:when>
								<c:otherwise>
									<a href="MyController?cmd=1&nowPage=${i}">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						 <a href="MyController?cmd=1&nowPage=${page.endPage}" class="last">마지막
						페이지</a>
				</div>
</div>
</body>
</html>