<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Daily Color - login</title>
<style>
	nav{
				height: 3em;
				font-size:0.9em; 
      			color:gray; 
      			/* background-color:#AAB9FF; */
	}
	article{
			max-width:50em;
			height: 1080px;
			text-align:center;
			margin: auto;
			padding-top: 15%;
			padding-right: 2em;
			padding-bottom: 15%;
			padding-left: 2em;
            /* background:pink; */
	}
	
	ul, ol, li { list-style:none; margin:3px; padding:3px;}
    ul.myMenuLeft > li { display:inline-block; width:80px; padding:5px 10px;  border:1px solid #f2f2f2; text-align:center; position:relative; float:right; }
    ul.myMenuLeft > li:hover { background:#f2f2f2; }
    
   
    ul.moodChart > li { display:inline-block; position:relative;}
    /* ul.moodChart > li:hover { background:pink; } */
    
    
	a { text-decoration: none; color: black; }
    
    .rounded-circle{ border-radius: 50%;}
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
 	<nav>
		<ul class="myMenuLeft">
			<li class="menu1"><a href="./">HOME</a></li>
			<li class="menu2"><a href="./join">JOIN</a></li>
		</ul>
	</nav>
	
	
	<article>
      <div id = "login">
      	<jsp:include page='${page }.jsp'/>
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