<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

	<div class="container">
		<h1>자기 일정 관리프로그램</h1>
	
		<c:choose>
			<c:when test="${empty user }">
				<h3> 환영합니다.</h3>
			</c:when>
			<c:otherwise>
				<h3>${user.name} 님, 환영합니다.</h3>
			</c:otherwise>		
		</c:choose>	
		
		<ul>
			<li>로그인후 작업내용 작성</li>
			<li>작업내용 확인은 일정란에서</li>		
		</ul>
		
	</div>
	
	<jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />
	
	<script>
		if ('${param.logout}' == 'success'){
			alert("로그아웃성공")			
		}
	</script>