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

 <jsp:include page="../WEB-INF/includes/companyHorizontal.jsp"></jsp:include>

    <div id="container">
      <div id="main">	
    	<div id="leftcolumn">
	    <h2>Навігація</h2>
            <ul id="menu">
	    	<li><a href="personal.jsp"><span>Персональні дані</span></a></li>
            	<li><a href="cv.jsp"><span>Резюме студентів</span></a></li>
            	<li><a href="selection.jsp"><span>Підбір по вакансії</span></a></li>
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
	<form name="student" class="def">
	    <div class="tableRow">
		<p> Посада: </p>
		<p> <input type="text" name="post" value=""> </p>
	    </div>
	    <div class="tableRow">
		<p>Дата реєстрації: </p>
		<p> <input type="date" name="date"></p>
	    </div>
	    <div class="tableRow">
		<p> Зайнятість: </p>
		<p> <input type="checkbox" name="zn" value="zajn">Повна</p>
	    </div>
	    <div class="tableRow">
		<p> Зарплата: </p>
		<p> <input type="text" name="salary" value=""> </p>
	    </div>
	    <div class="tableRow">
		<p> Іноземні мови: </p>
		<p> <input type="checkbox" name="lang" value="eng">Англійська <input type="checkbox" name="lang" value="deu">Німецька <input type="checkbox" name="lang" value="fra">Французька </p>
	    </div>
	    <div class="tableRow">
		<p> Категорія: </p>
		<p> 
		    <select>
			<option value="0" selected>Оберіть категорію</option>
			<option value="1">Game development</option>
			<option value="2">Web-дизайн</option>
			<option value="3">Web - програмування</option>
			<option value="4">Розробка ПЗ</option>
			<option value="5">Інформаційна безпека</option>
			<option value="6">Мережеві технології</option>
			<option value="7">Бази даних: розробка й адміністрування</option>
			<option value="8">Mobile development</option>
			<option value="9">системи автоматизації</option>
			<option value="10">Тестування</option>
			<option value="11">Технічна підтримка</option>
		    </select>
	        </p>
	    </div>
	    <div class="tableRow">
		<p>К-сть місць по вакансії:</p>
		<p> <input type="range" min="1" max="10" step="1"></p>
	    </div>
 	    <div class="tableRow">
		<p> Вимоги до проф. навичок: </p>
		<p> <textarea name="proglang" rows="5" cols="50"></textarea> </p>
	    </div>
	</form>
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