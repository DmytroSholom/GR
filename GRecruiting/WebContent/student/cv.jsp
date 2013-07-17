<%@page import="edu.grecruiting.model.student.StudentGroupEntity"%>
<%@page import="edu.grecruiting.model.student.StudentGroupManager"%>
<%@page import="edu.grecruiting.model.student.StudentEntity"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");%>
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
            	    <li class="last"><a href="#"><span>Резюме</span></a></li>
        	</ul>

      		<div class="contact">
	    	    <h2>Contact Us</h2>
            	    <p> <em>Phone :</em> ++ 12 34 56 78<br/>
           	    <em>Fax :</em> ++ 87 65 43 21<br/>
            	    <em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
        	</div> 
   	 </div>
		<%	StudentEntity student = (StudentEntity) session.getAttribute("STUDENT"); 
			StudentGroupEntity group = (StudentGroupEntity) session.getAttribute("GROUP");
			if(student!=null && group!=null && student.getResumeID()!=null){
		%>
    	<div id="rightcolumn">
			<div class="table">
            		<div class="tableRow">
                    <p class="cvLeftBold">Базова інформація:</p>
                    <p></p></div>
                    <div class="tableRow">
                    <p class="cvLeft">Ім'я, прізвище:</p>
                    <p><%=student.getFname().trim() +" "+ student.getLname().trim()%><br>
                    </p></div>
                    <div class="tableRow">
                    <p class="cvLeft">Номер телефону:</p>
                    <p><%=student.getResumeID().getPhone()%><br>
                    </p></div>
                    <div class="tableRow">
                    <p class="cvLeft">Електронна адреса:</p>
                    <p><%=student.getEmail()%><br></p>
                    </div>
                    <div class="tableRow">
                    <p class="cvLeft"> Домашня адреса:</p>
                    <p><%=student.getResumeID().getAddress()%><br></p></div>
                    <!--  <div class="tableRow">
                      <p class="cvLeft">Адреса офісу:</p>
                    <p> кафедра обчислювальної техніки Національного технічного університету України "КПІ"<br>
Проспект Перемоги, 37, Київ - 56, 03056<br>
+380 (44) 454 90 42<br>
факс +380 (44) 406 80 13;<br>
Мобільний телефон +380 (44) 095 504 66 88<br>
електронна пошта stirenko@yahoo.com, stirenko@yandex.ru</p></div>-->
                    <div class="tableRow">
                    <p class="cvLeft">Дата народження:</p>
                    <p><%=student.getResumeID().getBirthDate()%></p></div>
                   <!-- <div class="tableRow">
                    <p class="cvLeft">Місце народження:</p>
                    <p>Україна, Вінниця</p></div>-->
                    <div class="tableRow">
                    <p class="cvLeftBold">Освіта:</p>
                    <p></p></div>
                    <div class="tableRow">
                    <p class="cvLeft"><%=student.getStartDate() +" по <br>"+student.getEndDate()%></p>
                    <p><%=group.getName() %> ФІОТ, Національний технічний університет України "КПІ",<br>
                    </p></div>
                    <div class="tableRow">
                    <p class="cvLeft">Середній бал</p>
                    <p><%=student.getResumeID().getAvrgMark()%><br>
                    </p></div>
					<div class="tableRow">
						<p class="cvLeftBold">Зайнятість:</p>
                    	<p></p>
                	</div>
                <div class="tableRow">
					<p class="cvLeft">1995-98</p>
                    <p>аспірант - лабораторія системного програмування, комп'ютерної інженерії факультет<br>
 Національного технічного університету України "КПІ".</p>
                </div>
                <div class="tableRow">
					<p class="cvLeft">1998-2002</p>
                    <p>помічник - Комп'ютерна інженерія факультет <br>
Національного технічного університету України "КПІ"</p>
                </div>
               <!-- <div class="tableRow">
					<p class="cvLeftBold">Останні публікації:</p>
                    <p></p>
                </div>
                <div class="tableRow">
					<p class="cvLeft">2008</p>
                    <p>S.Stirenko, В.ПУСТОВАРОВ, А.Кузнецов. Уніфікація технології семантичного аналізу<br>
 наукової і технічної інформації.
Двадцять першого тези Міжнародної <br>
конференції CODATA. Наукова інформація для<br> суспільства - з сьогоднішнього дня в майбутнє, 5-8 жовтня 2008 року, Київ, Україна. P. 103.</p>
                </div> --> 
                <div class="tableRow">
					<p class="cvLeftBold">Бажана посада:</p>
                    <p></p>
                </div>
                <div class="tableRow">
					<p class="cvLeft"></p>
                    <p><%=student.getResumeID().getWantedPost() %></p>
                </div>
                <div class="tableRow">
					<p class="cvLeftBold">Професійні навички:</p>
                    <p></p>
                </div>
                <div class="tableRow">
					<p class="cvLeft"></p>
                    <p><%=student.getResumeID().getSkills().replaceAll("\n", "<br>") %></p>
                </div>
                
                <div class="tableRow">
					<p class="cvLeftBold">Мови:</p>
                    <p></p>
                </div>
                <div class="tableRow">
					<p class="cvLeft"></p>
                    <p><%=student.getResumeID().getForeignLang().replaceAll("\n", "<br>") %></p>
                </div>
                <div class="tableRow">
					<p class="cvLeftBold">Інтереси:</p>
                    <p></p>
                </div>
                <div class="tableRow">
					<p class="cvLeft"></p>
                    <p><%=student.getResumeID().getInterests().replaceAll("\n", "<br>") %></p>
                </div>
            </div>
            <%} else{%>
            <H2>Ви не пройшли авторизацію, або не створили резюме.</H2>
            <%} %>
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