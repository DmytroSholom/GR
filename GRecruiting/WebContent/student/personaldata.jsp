<%@page import="edu.grecruiting.model.user.UserEntity"%>
<%@page import="java.io.UnsupportedEncodingException"%>
<%@ page import="java.util.List; import edu.grecruiting.model.student.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Працевлаштування</title>

    <link rel="stylesheet" type="text/css" href="../styles/style.css" />
  </head>

<body>

  <div id="wrapper">

     <jsp:include page="../WEB-INF/includes/Header.jsp"></jsp:include>
    

      
	<jsp:include page="../WEB-INF/includes/studHorizontal.jsp"></jsp:include> 
    <div id="container">
      <div id="main">	
    	<div id="leftcolumn">
	    <h2>Навігація</h2>
        	<ul id="menu">
            	    <li><a href="personaldata.jsp"><span>Персональні дані</span></a></li>
            	    <li><a href="vacancy.jsp"><span>Вакансії</span></a></li>
            	    <li class="student/last"><a href="cv.jsp"><span>Резюме</span></a></li>
        	</ul>

      		<div class="contact">
	    	    <h2>Contact Us</h2>
            	    <p> <em>Phone :</em> ++ 12 34 56 78<br/>
           	    <em>Fax :</em> ++ 87 65 43 21<br/>
            	    <em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
        	</div> 
   	 </div>

    	<div id="rightcolumn">
    	<%	UserEntity user = (UserEntity)request.getSession().getAttribute("USER");%>
   		<%
    		if(user!=null){
    			out.flush();
    			request.getRequestDispatcher("/StudentDataController").include(request, response);
    		%>
    	<%
				if(request.getParameter("message")!=null &&  !request.getParameter("message").equals("")){
					if(request.getParameter("message").equals("empty")){%>
    					<%="Всі поля обов'язкові для заповнення" %>
    	<%			}else{ 
    					if(request.getParameter("message").equals("date")){%>
    						<%="Не вірно вказана дата, потрібний формат: 2000-01-01" %>	
    			<%		}  %>
    			<% 		if(request.getParameter("message").equals("succes")){%>
    						<%="Дані змінено успішно" %>	
    			<%		}  %>
    			<%	} 
				}
    		} else{
    	%>
    	
		<form action="/GRecruiting/RegistrationController" name="student" class="def" enctype="application/x-www-form-urlencoded" method="POST">
	     <div class="tableRow">
		<p> Логін: </p>
		<p> <input type="text" name="login" > </p>
	    </div>
	    <div class="tableRow">
		<p> Пароль: </p>
		<p> <input type="password" name="pass" > </p>
	    </div>
	    <div class="tableRow">
		<p> Пароль ще раз: </p>
		<p> <input type="password" name="rpass" > </p>
	    </div>
	    <div class="tableRow">
		<p> Ім'я: </p>
		<p> <input type="text" name="fname" > </p>
	    </div>
	    <div class="tableRow">
		<p> Прізвище: </p>
		<p> <input type="text" name="lname" > </p>
	    </div>
	    <div class="tableRow">
	    <% List<StudentGroupEntity> groups = StudentGroupManager.getAll();%>
		<p> Група </p>
		<p> <select name="group" >
				<%for(StudentGroupEntity g : groups){ %>
					<option value="<%=g.getName()%>"><%=g.getName()%></option>
				<%} %>
			</select> </p>
	    </div>
	    <div class="tableRow">
		<p>Дата початку навчання: </p>
		<p>   <input type="date" name="SDate"> </p>
	    </div>
	    <div class="tableRow">
		<p>Дата завершення навчання: </p>
		<p>   <input type="date" name="EDate"> </p>
	    </div>
	    <div class="tableRow">
		<p> E-mail: </p>
		<p> <input type="text" name="email" ></p>
	    </div>
	    <input type="hidden" name="type" value="STUD">
	 	<input type="submit" name="action" value="Підтвердити"><P>
	 	
    	</P>
	</form>
	<%}//else %>
	
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