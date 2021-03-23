<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자] My Daily Color </title>

<style>
	
	#gamsung{	margin-top :10%;	/* position:absolute; */}
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
var cnt=1;
function fn_addFile(){
	$("#d_file").append("<br>"+"<input  type='file' name='file"+cnt+"' />");
	cnt++;
}
</script>
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
			<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
			<label>아이디:</label>
			    <input type="text" name="id"><br>
				<label>이름:</label>
			    <input type="text" name="name"><br>
				<input type="button"  value="파일추가" onClick="fn_addFile()"/><br>
				<div id="d_file">
			  	</div>
				<input type="submit"  value="업로드"/>
			</form>
		</c:when>
		<c:when test="${status == 'bored'}">
			<p> 아무것도 하기 싫은 요즘. </p>
			<p> 노란색은 열린 마음을 상징하는 색으로, 내향적인 성향보다는 외향적인 성향을 드러냅니다.  </p>
			<p> 그러므로, 노란색은 결정장애나 의욕 저하를 겪는 상황에 도움이 됩니다. </p>
		</c:when>
		<c:when test="${status == 'sad'}">
			<p> 이런 날도 있는거죠. </p>
			<p> 보라색은 부정적인 상황을 긍정적으로 치유할 수 있습니다. </p>
		</c:when>
		<c:when test="${status == 'stressed'}">
			<p> 모든게 당신을 열받게 하는 오늘. </p>
			<p>	차갑지만 차분한 톤으로 들끓었던 화를 가라앉혀 주는 효과를 가진 파란색은 </p>
			<p> 마음을 진정시키고 인내심을 가질 수 있게 도와줍니다.</p>
		</c:when>
    </c:choose>
	</article>
</body>
</html>