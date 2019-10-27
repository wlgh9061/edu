<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<h4>${map.boardName } 게시판</h4><hr>
		</div>
		<div>
			<table border="1" cellspacing="0">
				<tr>
					<th>번호</th>
					<td>${map.bbsNo }</td>
				</tr>
				<c:if test="${map.boardCate!=1 }">
					<tr>
						<th>카테고리</th>
						<td>
							<c:if test="${map.bbsCate==0 }">
								일반
							</c:if>
							<c:if test="${map.bbsCate==1 }">
								공지
							</c:if> 
						</td>
					</tr>
				</c:if>
				<tr>
					<th>제목</th>
					<td>${map.bbsTitle }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${map.bbsWriter }</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>${map.bbsHit }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${map.bbsCont }</td>
				</tr>
				<tr>
					<th>게시일</th>
					<td>${map.bbsRegdate }</td>
				</tr>
				<tr>
					<th>수정일, 수정자</th>
					<td>${map.bbsModidate }&nbsp;${map.bbsModiwriter }</td>
				</tr>
			</table>
		</div><hr>
		<div>
		<c:if test="${map.boardUpdate!=1 }">
			<input type="button" value="수정" onclick="location.href='<%=request.getContextPath()%>/bbsModiPage.do?bbsNo=${map.bbsNo }'">
		</c:if>
		<c:if test="${map.boardUpdate==1 }">
			수정이 불가한 게시판입니다.<br>
		</c:if>
			<input type="button" value="목록으로" onclick="location.href='<%=request.getContextPath()%>/bbsPage.do?bbsIndex=${map.bbsIndex}&boardName=${map.boardName}'">
		</div>
	
	</div>
</body>
</html>