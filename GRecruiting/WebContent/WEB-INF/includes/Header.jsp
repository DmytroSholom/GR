
<%@page import="edu.grecruiting.model.user.UserEntity"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
	<a href="index.jsp"><img src="../images/ASU-ua.png"></a>
</div>