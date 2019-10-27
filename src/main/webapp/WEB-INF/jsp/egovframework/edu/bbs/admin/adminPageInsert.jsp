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
         <h3>관리자 게시판 추가 페이지</h3>
      </div>
      <form action="<%=request.getContextPath()%>/adminBoardInsertOk.do" method="post">
	      <div>
	      	게시판이름 <input type="text" name="boardName"><br>
	         공지기능
	         <input type="radio" name="boardCategory" id="gongji1" value="0" checked="checked"/> <label for="gongji1">사용</label>
	         <input type="radio" name="boardCategory" id="gongji2" value="1"/>  <label for="gongji2">사용안함</label><br>
	         비공개기능
	         <input type="radio" name="boardPrivate" id="private1" value="0" checked="checked"/><label for="private1">사용</label>
	         <input type="radio" name="boardPrivate" id="private2" value="1"/> <label for="private2">사용안함</label><br>
	         상세페이지 기능
	         <input type="radio" name="boardDetail" id="detail1" value="0" checked="checked"/><label for="detail1">사용</label>
	         <input type="radio" name="boardDetail" id="detail2" value="1"/> <label for="detail2">사용안함</label><br>
	         게시글 등록기능
	         <input type="radio" name="boardInsert" id="insert1" value="0" checked="checked"/><label for="insert1">사용</label>
	         <input type="radio" name="boardInsert" id="insert2" value="1"/> <label for="insert2">사용안함</label><br>
	         삭제기능
	         <input type="radio" name="boardDelete" id="delete1" value="0" checked="checked"/> <label for="delete1">사용</label>
	         <input type="radio" name="boardDelete" id="delete2" value="1"/> <label for="delete2">사용안함</label><br>
	      수정기능
	         <input type="radio" name="boardUpdate" id="update1" value="0" checked="checked"/> <label for="update1">사용</label>
	         <input type="radio" name="boardUpdate" id="update2" value="1"/> <label for="update2">사용안함</label><br>
	      </div>
	      <input type="hidden" name="boardState" value="0">
	      <div>
	      	<input type="submit" value="등록">
	      	<input type="button" value="취소" onclick="history.back()">
	      </div>
      </form>
   </div>
	
</body>
</html>