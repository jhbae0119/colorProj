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
		아무것도 하기 싫은 요즘.
		</p>
		<p>
		노란색은 열린 마음을 상징하는 색으로, 내향적인 성향보다는 외향적인 성향을 드러냅니다. 
		</p>
		<p>
		그러므로, 노란색은 결정장애나 의욕 저하를 겪는 상황에 도움이 됩니다.
		</p>
	</article>
	

	<article id="board">
	<ul class="moodChart">
      		<li><img class="rounded-circle" src="resources/bored/yellow_1.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_2.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_3.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_4.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_5.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_6.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_7.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_8.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_9.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_10.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_11.jpg "></li>
      		<li><img class="rounded-circle" src="resources/bored/yellow_12.jpg "></li>
      		
      		
    </ul>
    </article>
</body>
</html>