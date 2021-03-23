<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<li class="menu1">
	<jsp:include page="top.jsp"/>
		<c:choose>
		<c:when test="${sessionScope.id == null }">
			<a href="./join">Join</a>
		</c:when>
		<c:otherwise>
			<a href="./moodTracker">Mood Log</a>
		</c:otherwise>
		</c:choose>
</li>
<li class="menu2">
	<jsp:include page="top.jsp"/>
		<c:choose>
		<c:when test="${sessionScope.id == null }">
			<a href="./login">Login</a>
		</c:when>
		<c:otherwise>
			<a href="./logout">Logout</a>
		</c:otherwise>
		</c:choose>
</li>