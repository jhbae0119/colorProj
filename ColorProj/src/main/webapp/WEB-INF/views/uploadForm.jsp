<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%> 

<!DOCTYPE html >
<html>
<head>
<meta "charset=utf-8">
<title>파일업로드 하기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
var cnt=1;
function fn_addFile(){
	$("#d_file").append("<br>"+"<input  type='file' name='file"+cnt+"' />");
	cnt++;
}
</script>
<style>
	
	#gamsung{	margin :10%;	/* position:absolute; */}
	#gamsung>p { color: black; text-align: center;}
	#board{	margin-top :5%;	/* position:absolute; */}
	
	ul, ol, li { list-style:none; margin:3px; padding:3px;}
	ul {
		text-align: center;
	}   
    ul.moodChart > li { display:inline-block;  padding:1px; position:relative; }
    /* ul.moodChart > li:hover { background:pink; } */
  
   .rounded-circle{ border-radius: 5%;}
    img { 	width: 201px;
    		aspect-ratio: auto 201 / 194;
    		height: 194px;
    		border-style: none;
    	}
	ul, ol, li { list-style:none; margin:3px; padding:3px;}
    ul.myMenuLeft > li {display:inline-block; width:80px; padding:5px 10px; border:1px solid #f2f2f2; text-align:center; position:relative; float:right; }
    ul.myMenuLeft > li:hover { background:#f2f2f2; }
    
   
    ul.moodChart > li { display:inline-block; position:relative;}
    /* ul.moodChart > li:hover { background:pink; } */
    
    
	a { text-decoration: none;  color: black;  }
	
</style>

</head>
<body>
<nav>
		<ul class="myMenuLeft">
			<li class="menu2">
				<c:choose>
					<c:when test="${sessionScope.id == null }">
						<a href="./login">Login</a>
					</c:when>
					<c:otherwise>
						<a href="./logout">Logout</a>
					</c:otherwise>
				</c:choose>
			</li>
			<li class="menu2">
				<a href="./">Home</a>
			</li>
		</ul>
		
		
	</nav>


	<article id="gamsung">
		
	<c:choose>
    	<c:when test="${status == 'happy'}">
    		<h1> 행복감, 흥분을 진정시키는 색은</h1>
    		<h1> 주황색, 초록색입니다.</h1>
			<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
				<!-- <label>아이디:</label>
			    <input type="text" name="id"><br>
				<label>이름:</label>
			    <input type="text" name="name"><br> -->
			    <input type="submit"  value="업로드"/>
				<input type="button"  value="파일추가" onClick="fn_addFile()"/><br>
				<div id="d_file">
			  	</div>
			</form>
		</c:when>
		<c:when test="${status == 'bored'}">
			<h1> 무기력함, 만성피로를 진정시키는 색은</h1>
    		<h1> 분홍색, 노랑색입니다.</h1>
			<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
				<!-- <label>아이디:</label>
			    <input type="text" name="id"><br>
				<label>이름:</label>
			    <input type="text" name="name"><br> -->
				<input type="submit"  value="업로드"/>
				<input type="button"  value="파일추가" onClick="fn_addFile()"/><br>
				<div id="d_file"> </div>
				
			</form>
		</c:when>
		<c:when test="${status == 'sad'}">
			<h1> 우울감, 슬픔을 진정시키는 색은</h1>
    		<h1> 보라색, 빨간색입니다.</h1>
			<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
				<!-- <label>아이디:</label>
			    <input type="text" name="id"><br>
				<label>이름:</label>
			    <input type="text" name="name"><br> -->
				<input type="submit"  value="업로드"/>
				<input type="button"  value="파일추가" onClick="fn_addFile()"/><br>
				<div id="d_file"> </div>
			</form>
		</c:when>
		<c:when test="${status == 'stressed'}">
			<h1> 스트레스, 분노를 진정시키는 색은</h1>
    		<h1> 파란색, 초록색입니다.</h1>
			<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
				<!-- <label>아이디:</label>
			    <input type="text" name="id"><br>
				<label>이름:</label>
			    <input type="text" name="name"><br> -->
				<input type="submit"  value="업로드"/>
				<input type="button"  value="파일추가" onClick="fn_addFile()"/><br>
				<div id="d_file"> </div>
			</form>
		</c:when>
    </c:choose>
	</article>


<%-- 
<h1>파일 업로드 하기</h1>
<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
	<label>아이디:</label>
    <input type="text" name="id"><br>
	<label>이름:</label>
    <input type="text" name="name"><br>
	<input type="button"  value="파일추가" onClick="fn_addFile()"/><br>
	<div id="d_file">
  </div>
	<input type="submit"  value="업로드"/>
</form> --%>
</body>
</html>