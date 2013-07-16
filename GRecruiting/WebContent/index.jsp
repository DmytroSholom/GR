<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Працевлаштування</title>

<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
 <div id="wrapper">
 <!-- header -->
 <%@page import="edu.grecruiting.model.user.UserEntity"%>
	<div id="header">
	<div id="log">
	<%
		if(request.getParameter("message")!=null &&  !request.getParameter("message").equals("") && request.getParameter("message").equals("fail")){ %>
    	<%="Помилка в логіні або паролі"%>
    	<%} %>
		<%	UserEntity user = (UserEntity)request.getSession().getAttribute("USER");
			if(user==null){
		%>
		<form name="student" method="post"
			action="/GRecruiting/LogInOutController">
			<div class="tableRow">
				<p>ID:</p>
				<p><input type="text" name="login" ></p>
			</div>
			<div class="tableRow">
				<p>Password:</p>
				<p><input type="password" name="pass"></p>
				<P><input type="submit" name="submitLogin" value="Увійти"></P>
			</div>
		</form>
		<%	}else{ %>
			<%="Hello, "+user.getLogin()%>
			<form name="student" method="post"
			action="/GRecruiting/LogInOutController">
			<input type="submit" name="submitLogOut" value="Вийти">	
			</form>
			
			<%} %>
	</div>
	</div>
<div id="logo">
	<a href="index.jsp"><img src="images/ASU-ua.png"></a>
</div>

<!-- body -->

      <ul class="glossymenu">
	  <li class="current"><a href="#"><b>Головна</b></a></li>
          <li><a href="student.jsp"><b>Студенту</b></a></li>
          <li><a href="faculty.jsp"><b>Кафедрі</b></a></li>
          <li><a href="company.jsp"><b>Роботодавцю</b></a></li>
           <li><a href="#"><b>Допомога</b></a></li>
      </ul>
		 
    <div id="container">
      <div id="main">	
        <div id="leftcolumn">
	    <h2>Навігація</h2>
        	<ul id="menu">
            	    <li><a href="student.jsp"><span>Студенту</span></a></li>
              	    <li><a href="faculty.jsp"><span>Кафедрі</span></a></li>
            	    <li class="last"><a href="company.jsp"><span>Роботодавцю</span></a></li>
        	</ul>

      	    <div class="contact">
	    	<h2>Contact Us</h2>
            	<p> <em>Phone :</em> ++ 12 34 56 78<br/>
            	<em>Fax :</em> ++ 87 65 43 21<br/>
            	<em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
            </div>
      	</div>
 
        <div id="rightcolumn">
		The standard Lorem Ipsum passage, used since the 1500s

		"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC

		"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
      	</div>
		
      </div>
     </div>
                <div class="clear"></div>
		<div id="triplebox">
		 </div>
		 <!-- End Right Column -->
		 
		 <!-- Begin Footer -->
    <div id="footer">
    </div>
		 <!-- End Footer -->
		 
   </div>
   <!-- End Wrapper -->
</body>
</html>
