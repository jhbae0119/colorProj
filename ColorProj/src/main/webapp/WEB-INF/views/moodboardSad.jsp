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
		이런 날도 있는거죠.
		</p>
		<p>
		보라색은 부정적인 상황을 긍정적으로 치유할 수 있습니다.
		</p>
	</article>
	

	<article id="board">
	<ul class="moodChart">
      		<li><img class="rounded-circle" src="resources/sad/purple_1.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_2.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_3.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_4.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_5.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_6.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_7.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_8.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_9.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_10.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_11.jpg "></li>
      		<li><img class="rounded-circle" src="resources/sad/purple_12.jpg "></li>
      		
      		
    </ul>
    </article>
</body>
</html>