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
	<!-- wrap  -->
   <div>
      <div>
          <h3>관리자 페이지</h3>
      </div>
      <div>
         <table>
		      	<c:forEach items="${list}" var="dto">
		      		<c:if test="${dto.boardState!=1}">
				     	<tr>
				         	<th>${dto.boardName }</th>
				         	<td><input type="button" value="삭제" onclick="location.href='<%=request.getContextPath()%>/adminBoardDelete.do?boardIndex=${dto.boardIndex }'"></td>
				      	</tr>
			      	</c:if>
			   	</c:forEach>
         </table>
         <input type="button" value="게시판 생성" onclick="location.href='<%=request.getContextPath()%>/adminPageInsert.do'">
         <input type="button" value="목록으로" onclick="location.href='<%=request.getContextPath()%>/frontPage.do'">
      </div>
   </div>
</body>
</html>