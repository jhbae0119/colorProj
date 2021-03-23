<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<h1>업로드가 완료되었습니다.</h1>
	<%-- <label>아이디:</label>
	 <input type="text" name="id" value="${map.id }" readonly><br>
	<label>이름:</label>
	 <input type="text" name="name" value="${map.name }" readonly><br> --%>
	<div class="result-images">
	  <c:forEach var="imageFileName" items="${ map.fileList}"  >
	         <%-- <img src="${pageContext.request.contextPath }/download?imageFileName=${imageFileName }" style="width:150px"> --%>
	         <img src="${pageContext.request.contextPath }/download?imageFileName=${imageFileName }" style="width:150px">
	         <!-- <br><br><br> -->
	  </c:forEach>         
	</div><p> 
	
	<%-- <a href='${pageContext.request.contextPath }/form'> 다시 업로드 하기 </a> </p> --%>
	</article>

</body>
</html>