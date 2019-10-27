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
	<!-- wrap -->
	<div>
      <div style="float: left;">
         <input type="button" value="관리자페이지" onclick="location.href='<%=request.getContextPath()%>/adminPage.do'">
      </div>
      
      
      <c:forEach items="${list}" var="dto">
      	<c:if test="${dto.boardState!=1}">
		     <div style="float: left;">
		         <input type="button" value="${dto.boardName }" onclick="location.href='<%=request.getContextPath()%>/bbsPage.do?bbsIndex=${dto.boardIndex }'">
		     </div>
	    </c:if>
	  </c:forEach>
     
      
   </div>


</html>