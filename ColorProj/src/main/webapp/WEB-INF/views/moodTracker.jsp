<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Daily Color</title>
<link rel="stylesheet" href="resources/css/index.css">
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<script type="text/javascript" src="resources/js/moodTracker.js"></script>
<style>
	body{
		background-image: url('resources/홀로그램.jpg');
		background-size: 100%;
	}
	
	
	nav{
				height: 3em;
				font-size:0.9em; 
      			color:gray; 
      			/* background-color:#AAB9FF; */
	}
	article{
			max-width:50em;
			height: 500px; 
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
      			/* background-color:#f2f2f2; */
    }
	
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
						<a href="./">Home</a>
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
	
	
	  <div class="main">
    <div class="content-wrap">
      <div class="content-left">
        <div class="main-wrap">
          <div id="main-day" class="main-day"></div>
          <div id="main-date" class="main-date"></div>
        </div>
        <div class="todo-wrap">
          <div class="todo-title" style="font-weight: bold">오늘의 기록</div>
          <div class="input-wrap">
            <input type="text" placeholder="당신의 오늘을 기록하세요" id="input-box" class="input-box">
            <button type="button" id="input-data" class="input-data">INPUT</button>
            <div id="input-list" class="input-list"></div>
          </div>
        </div>
      </div>
      <div class="content-right">
        <table id="calendar" align="center">
          <thead>
            <tr class="btn-wrap clearfix">
              <td>
                <label id="prev">
                    &#60;
                </label>
              </td>
              <td align="center" id="current-year-month" colspan="5"></td>
              <td>
                <label id="next">
                    &#62;
                </label>
              </td>
            </tr>
            <tr>
                <td class = "sun" align="center">Sun</td>
                <td align="center">Mon</td>
                <td align="center">Tue</td>
                <td align="center">Wed</td>
                <td align="center">Thu</td>
                <td align="center">Fri</td>
                <td class= "sat" align="center">Sat</td>
              </tr>
          </thead>
          <tbody id="calendar-body" class="calendar-body"></tbody>
        </table>
      </div>
    </div>
  </div>
    
    <footer>
      <div>
        <br>
        ⓒ <a href="#홈으로" style="color:gray">jhbae.Dev</a> All Rights Reserved
        <br>
        </div>
    </footer> 

</body>
</html>