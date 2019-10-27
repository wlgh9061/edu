<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<h3>수정페이지</h3><hr>
		</div>
		<form action="<%=request.getContextPath()%>/bbsModiPageOk.do" method="post">
			<input type="hidden" name="bbsNo" value="${map.bbsNo }">
			<div>
				<table border="1" cellspacing="0">
					<tr>
						<th>카테고리</th>
						<td>
							<select name="bbsCate">
								<c:if test="${map.bbsCate!=1 }">
									<option value="0" selected="selected">일반</option>
									<option value="1">공지</option>
								</c:if>
								<c:if test="${map.bbsCate==1 }">
									<option value="0">일반</option>
									<option value="1" selected="selected">공지</option>
								</c:if> 
							</select>
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="bbsTitle" value="${map.bbsTitle }"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${map.bbsWriter }</td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea cols="70" rows="7" name="bbsCont">${map.bbsCont }</textarea></td>
					</tr>
					<tr>
						<th>수정자</th>
						<td><input type="text" name="bbsModiwriter"></td>
					</tr>
				</table>
			</div><hr>
			<div>
				<input type="submit" value="수정">
				<input type="button" value="취소" onclick="history.back()">
			</div>
		</form>
	</div>
</body>
</html>