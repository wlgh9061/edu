<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fn_bbsPrivacy(){
		var obj =document.getElementById("bbs_pass");
		
		if(obj.style.display == "inline"){
			obj.style.display = "none";
		}else{
			obj.style.display = "inline";
		}
	}
</script>
</head>
<body>
	<div>
		<div>
			<h3>${map.boardName }</h3>
		</div><hr>
		<div>
		<table border="1" cellspacing="0">
				<tr>
					<th>번호</th>
					<th>글종류</th>
					<th>작성자</th>
					<th>제목</th>
					<th>등록일</th>
					<th>조회수</th>
					<c:if test="${dto.boardDelete !=1 }">
						<th>삭제</th>
					</c:if>
					
				</tr>
				<tr>
					<c:if test="${!empty list}">
						<c:forEach items="${list }" var="dto">
							<tr>
								<c:if test="${dto.bbsState!=1 }">
									<td>${dto.bbsNo }</td>
									<c:if test="${dto.boardCategory!=1 }">
										<td>
											<c:if test="${dto.bbsCate!=1 }">
												일반
											</c:if>
											<c:if test="${dto.bbsCate==1 }">
												공지
											</c:if>
										</td>
									</c:if>
									<td>${dto.bbsWriter }</td>
									<td>
										<c:if test="${dto.boardDetail!=1 }">
											<c:if test="${dto.bbsPrivate==null }">
												<a href="<%=request.getContextPath()%>/bbsPageDetail.do?bbsNo=${dto.bbsNo}">${dto.bbsTitle }</a>
											</c:if>
											<c:if test="${dto.bbsPrivate!=null }">
												<%-- <a href="<%=request.getContextPath()%>/bbsPageDetail.do?bbsNo=${dto.bbsNo}">${dto.bbsTitle }</a> --%>
												<a onclick="fn_bbsPrivacy(${dto.bbsNo})"><%-- ${dto.bbsTitle } --%>${dto.bbsTitle}</a><br>
													<div id="bbs_pass" style="display: none;">
														<input type="password" placeholder="비밀번호" id="bbs_password">
														<input type="button" value="확인">
													</div>
											</c:if>
										</c:if>
										<c:if test="${dto.boardDetail==1 }">
											${dto.bbsTitle }
										</c:if>
									</td>
									<td>${dto.bbsRegdate }</td>
									<td>${dto.bbsHit }</td>
									<c:if test="${dto.boardDelete !=1 }">
										<td>
											<input type="button" value="삭제" onclick="location.href='<%=request.getContextPath()%>/bbsDelPage.do?bbsNo=${dto.bbsNo }&bbsIndex=${dto.bbsIndex }'">
										</td>
									</c:if>
								</c:if>
							</tr>
						</c:forEach>
					</c:if>	
					<c:if test="${empty list}">
						<c:if test="${map.boardDelete !=1 }">
							<td colspan="6">
								게시글이 없습니다.
							</td>
						</c:if>
						<c:if test="${map.boardDelete ==1 }">
							<td colspan="5">
								게시글이 없습니다.
							</td>
						</c:if>
						
					</c:if>	
				</tr>
			</table><hr>
			<div>
				<c:if test="${map.boardInsert !=1 }">
					<input type="button" value="글쓰기" onclick="location.href='<%=request.getContextPath()%>/bbsPageInsert.do?bbsIndex=${map.boardIndex }'">
				</c:if>
				<c:if test="${map.boardInsert ==1 }">
					글쓰기 기능이 없는 게시판입니다.
				</c:if>
				<input type="button" value="목록" onclick="location.href='<%=request.getContextPath()%>/frontPage.do'">
			</div>
			
		</div>
	
	</div>
</body>
</html>