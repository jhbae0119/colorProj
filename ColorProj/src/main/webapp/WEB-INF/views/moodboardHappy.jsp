<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Daily Color</title>
<style>
	body{ background: black; }
	#gamsung{	margin-top :10%;	/* position:absolute; */}
	#gamsung>p { color: white; text-align: center;}
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
    
    
	a { text-decoration: none;  color: white;  }
</style>
</head>
<body>
	<nav>
		<ul class="myMenuLeft">
			<li class="menu1">
				<c:choose>
					<c:when test="${sessionScope.id == null }">
						<a href="./join">Join</a>
					</c:when>
					<c:otherwise>
						<a href="./moodTracker">Save</a>
					</c:otherwise>
				</c:choose>
			</li>
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
		<p>
		행복한 하루를 보내셨군요.
		</p>
		<p>
		떨리고 기쁜 마음을 진정시키는 색으로 하루를 마무리해보세요.
		</p>
	</article>
	

	<article id="board">
	<ul class="moodChart">
      		<li><img class="rounded-circle" src="resources/happy/orange_1.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_2.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_3.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_4.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_5.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_6.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_7.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_8.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_9.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_10.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_11.jpg "></li>
      		<li><img class="rounded-circle" src="resources/happy/orange_12.jpg "></li>
      		
    </ul>
    </article>
</body>
</html>