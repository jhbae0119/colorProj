<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Daily Color</title>
<style>
	nav{
				height: 3em;
				font-size:0.9em; 
      			color:gray; 
      			/* background-color:#AAB9FF; */
	}
	article{
			max-width:50em;
			/* max-height: 600px; */
			text-align:center;
			margin: auto;
			padding-top: 15%;
			padding-right: 2em;
			padding-bottom: 15%;
			padding-left: 2em;
            /* background:pink; */
	}
	
	ul, ol, li { list-style:none; margin:3px; padding:3px;}
    ul.myMenuLeft > li { display:inline-block; width:80px; padding:5px 10px; border:1px solid #f2f2f2; text-align:center; position:relative; float:right; }
    ul.myMenuLeft > li:hover { background:#f2f2f2; }
    
   
    ul.moodChart > li { display:inline-block; position:relative;}
    /* ul.moodChart > li:hover { background:pink; } */
    
    
	a { text-decoration: none; color: black; }
    
    
    img { vertical-align: middle; border-style: none;}
    
    footer>div{
				height: 4em;
      			text-align:center; 
      			font-size:0.9em; 
      			color:gray; 
      			background-color:#f2f2f2;
    }
	
</style>
	
</head>
<body>
<!--  	<nav>
		<ul class="myMenuLeft">
			<li class="menu1">
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
				<c:choose>
					<c:when test="${sessionScope.id == null }">
						<a href="./login">Login</a>
					</c:when>
					<c:otherwise>
						<a href="./logout">Logout</a>
					</c:otherwise>
				</c:choose>
			</li>
		</ul>
	</nav>
--> 
<nav>
	<ul class="myMenuLeft">
		<c:choose>
			<c:when test="${sessionScope.id == null }">
				<li><a href="./join">Join</a></li>
			</c:when>
			<c:otherwise>
					<li><a href="./moodTracker">Mood Log</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${sessionScope.id == null }">
				<li><a href="./login">Login</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="./logout">Logout</a></li>
			</c:otherwise>
		</c:choose>
		<c:if test="${sessionScope.id != null and sessionScope.id == 'admin'}">
			<li><a href="./adminPage">admin</a></li>		<!-- 관리페이지 만들기  -->
		</c:if>
	</ul>
</nav>
	
	
	<article>
      <div>
      	<h2> 
				<c:choose>
					<c:when test="${sessionScope.id == null }">
						<p>당신의 오늘은 어땠나요?</p>
					</c:when>
					<c:when test="${sessionScope.id != null and sessionScope.id == 'admin'}">
						<p>${sessionScope.id}님, 관리하고 싶은 감정을 선택해주세요.</p>
					</c:when>
					<c:otherwise>
						<p>${sessionScope.id}님, 당신의 오늘은 어땠나요?</p>
					</c:otherwise>
				</c:choose>
			</h2>
   
      	
	      	<ul class="moodChart">
	      		<li>
	      			<c:choose>
						<c:when test="${sessionScope.id == 'admin'}">
							<li><a href="./happyImgUpload"><img class="rounded-circle" src="resources/mood_happy_off.png" onmouseover="this.src='resources/mood_happy_on.png'" onmouseout="this.src='resources/mood_happy_off.png'"alt="happy" width="80" height="80">
	      					</a></li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="./moodboardHappy"><img class="rounded-circle" src="resources/mood_happy_off.png" onmouseover="this.src='resources/mood_happy_on.png'" onmouseout="this.src='resources/mood_happy_off.png'"alt="happy" width="80" height="80">
	      					</a>
	      				</li>
					</c:otherwise>
					</c:choose>
	      		</li>
	      		<li>
	      			<c:choose>
						<c:when test="${sessionScope.id == 'admin'}">
							<li><a href="./boredImgUpload"><img class="rounded-circle" src="resources/mood_boring_off.png" onmouseover="this.src='resources/mood_boring_on.png'" onmouseout="this.src='resources/mood_boring_off.png'" alt="sad" width="80" height="80">
	      			</a></li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="./moodboardBored">
							<img class="rounded-circle" src="resources/mood_boring_off.png" onmouseover="this.src='resources/mood_boring_on.png'" onmouseout="this.src='resources/mood_boring_off.png'" alt="sad" width="80" height="80">
	      					</a>
	      				</li>
					</c:otherwise>
					</c:choose>
	      		</li>
	      		<li>
	      			<c:choose>
						<c:when test="${sessionScope.id == 'admin'}">
							<li>
								<a href="./sadImgUpload">
									<img class="rounded-circle" src="resources/mood_sad_off.png" onmouseover="this.src='resources/mood_sad_on.png'" onmouseout="this.src='resources/mood_sad_off.png'" alt="boring" width="80" height="80">
	      						</a>
	      					</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="./moodboardSad">
								<img class="rounded-circle" src="resources/mood_sad_off.png" onmouseover="this.src='resources/mood_sad_on.png'" onmouseout="this.src='resources/mood_sad_off.png'" alt="boring" width="80" height="80">
	      					</a>
	      				</li>
					</c:otherwise>
					</c:choose>
	      		</li>
	      		<li>
	      			<c:choose>
						<c:when test="${sessionScope.id == 'admin'}">
							<li>
								<a href="./stressedImgUpload">
									<img class="rounded-circle" src="resources/mood_stressed_off.png" onmouseover="this.src='resources/mood_stressed_on.png'" onmouseout="this.src='resources/mood_stressed_off.png'" alt="stressed" width="80" height="80">
	      						</a>
	      					</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="./moodboardStressed">
								<img class="rounded-circle" src="resources/mood_stressed_off.png" onmouseover="this.src='resources/mood_stressed_on.png'" onmouseout="this.src='resources/mood_stressed_off.png'" alt="stressed" width="80" height="80">
	      					</a>
	      				</li>
					</c:otherwise>
					</c:choose>
	      		</li>
	      		
	      	</ul> 
      	
	 </div>

    </article>
    
    <footer>
      <div>
        <br>
        ⓒ <a href="#홈으로" style="color:gray">jhbae.Dev</a> All Rights Reserved
        <br>
        </div>
    </footer> 

</body>
</html>