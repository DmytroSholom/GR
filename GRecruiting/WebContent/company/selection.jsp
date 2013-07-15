<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Працевлаштування</title>

    <link rel="stylesheet" type="text/css" href="../styles/style.css" />
</head>
<body>
<div id="wrapper">

  <jsp:include page="../WEB-INF/includes/Header.jsp"></jsp:include>

      <ul class="glossymenu">
	  <li><a href="../index.jsp"><b>Головна</b></a></li>
          <li><a href="../student.jsp"><b>Студенту</b></a></li>
          <li><a href="../faculty.jsp"><b>Кафедрі</b></a></li>
          <li class="current"><a href="../company.jsp"><b>Роботодавцю</b></a></li>
		  <li><a href=""><b>Допомога</b></a></li>
      </ul>

    <div id="container">
      <div id="main">	
    	<div id="leftcolumn">
	    <h2>Навігація</h2>
            <ul id="menu">
	    	<li><a href="personal.jsp"><span>Персональні дані</span></a></li>
            	<li><a href="cv.jsp"><span>Резюме студентів</span></a></li>
            	<li><a href="#"><span>Підбір по вакансії</span></a></li>
					<div id="menucolumn"> 
					  <form>
            	          <font style="font-weight:bold; padding:5px;">Оберіть вакансію:</font>
            	          <select name="select" style="margin:5px;">
            	            <option value="">0101: Junior  JAVA developer </option>
          	            </select>
            	          <br>
            	          <input type="submit" value="Знайти" style="margin:5px;">
          	          </form>
          	        </div>
            	<li class="last"><a href="vacancy.jsp"><span>Додати вакансію</span></a></li>
            </ul>

      	    <div class="contact">
	    	<h2>Contact Us</h2>
            	<p> <em>Phone :</em> ++ 12 34 56 78<br/>
            	<em>Fax :</em> ++ 87 65 43 21<br/>
            	<em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
            </div> 
    	</div>

    	<div id="rightcolumn">
			<p>Сторінка в розробці...</p>
			<p>Виведення резюме студентів, професійні навички яких підходять до вимог даної вакансії</p>
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