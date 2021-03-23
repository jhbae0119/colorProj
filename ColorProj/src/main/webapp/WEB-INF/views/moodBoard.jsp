<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
<%-- 	
	<c:choose>
    	<c:when test="${status == 'happy'}">
			
		</c:when>
		<c:when test="${status == 'bored'}">
			<>
		</c:when>
		<c:when test="${status == 'sad'}">
			<p>${status}+페이지</p>
		</c:when>
		<c:when test="${status == 'stressed'}">
			<p>${status}+페이지</p>
		</c:when>
    </c:choose>
   --%>  
    
	<article id="gamsung">
		
	<c:choose>
    	<c:when test="${status == 'happy'}">
			<p> 행복한 하루를 보내셨군요. </p>
			<p> 떨리고 기쁜 마음을 진정시키는 색으로 하루를 마무리해보세요. </p>
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
	

	<article id="board">
	<c:choose>
    	<c:when test="${status == 'happy'}">
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
		</c:when>
		<c:when test="${status == 'bored'}">
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
		</c:when>
		<c:when test="${status == 'sad'}">
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
		</c:when>
		<c:when test="${status == 'stressed'}">
			<ul class="moodChart">
			<li><img class="rounded-circle" src="resources/stress/blue_1.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_2.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_3.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_4.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_5.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_6.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_7.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_8.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_9.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_10.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_11.jpg "></li>
      		<li><img class="rounded-circle" src="resources/stress/blue_12.jpg "></li>
      		</ul>
		</c:when>
    </c:choose>	
	
	
    </article>
</body>	
	
	
	
	
	
	
	
    
	

</html>