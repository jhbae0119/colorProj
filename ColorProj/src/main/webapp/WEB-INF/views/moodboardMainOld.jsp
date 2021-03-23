<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#board{
		margin-top :5%;
		background-color: black;
	}
		
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
	
	h3{
		
		text-align: center;
		color: white;

	}
</style>
</head>
<body id="board">
	<!-- <jsp:include page='${page }.jsp'/> -->
	
	<p>${model.status}</p>
	<div id = "mood">
		<!-- <ul class="moodChart">
	      		<li><a href="./moodboardHappy"><img class="rounded-circle" src="resources/mood_happy_off.png" onmouseover="this.src='resources/mood_happy_on.png'" onmouseout="this.src='resources/mood_happy_off.png'"alt="happy" width="80" height="80"></a></li>
	      		<li><a href="./moodboardbored"><img class="rounded-circle" src="resources/mood_boring_off.png" onmouseover="this.src='resources/mood_boring_on.png'" onmouseout="this.src='resources/mood_boring_off.png'" alt="sad" width="80" height="80"></a></li>
	      		<li><a href="./moodboardSad"><img class="rounded-circle" src="resources/mood_sad_off.png" onmouseover="this.src='resources/mood_sad_on.png'" onmouseout="this.src='resources/mood_sad_off.png'" alt="boring" width="80" height="80"></a></li>
	      		<li><a href="./moodboardStressed"><img class="rounded-circle" src="resources/mood_stressed_off.png" onmouseover="this.src='resources/mood_stressed_on.png'" onmouseout="this.src='resources/mood_stressed_off.png'" alt="stressed" width="80" height="80"></a></li>
	      	</ul>  -->
	</div>
	
</body>
</html>