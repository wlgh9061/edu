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
			<h4>${map.boardName } 게시판</h4>
			<h3>글쓰기 페이지</h3><hr>
		</div>
		<form action="<%=request.getContextPath()%>/bbsPageInsertOk.do" method="post">
			<input type="hidden" name="bbsIndex" value="${map.boardIndex }">
			<div>
				<table border="1" cellspacing="0">
					<c:if test="${map.boardCategory!=1 }">
						<tr>
							<th>카테고리</th>
							
							<td>
								<select name="bbsCate">
									<option value="0">일반</option>
									<option value="1">공지</option>
								</select>
							</td>
						</tr>
					</c:if>
					<tr>
						<th>제목</th>
						<td><input type="text" name="bbsTitle"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="bbsWriter"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea cols="70" rows="7" name="bbsCont"></textarea></td>
					</tr>
					<c:if test="${map.boardPrivate!=0 }">
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="bbsPrivate"></td>
						</tr>
					</c:if>
				</table>
			</div><hr>
			<div>
				<input type="submit" value="등록">
				<input type="button" value="취소" onclick="history.back()">
			</div>
		</form>
	</div>
</body>
</html>