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
     
   
	<jsp:include page="../WEB-INF/includes/studHorizontal.jsp"></jsp:include>	 
    <div id="container">
      <div id="main">	
    	<div id="leftcolumn">
	    <h2>Навігація</h2>
        	<ul id="menu">
            	    <li><a href="personaldata.jsp"><span>Персональні дані</span></a></li>
            	    <li><a href="vacancy.jsp"><span>Вакансії</span></a></li>
            	    <li class="last">
            	      <div id="menucolumn"> <font style="font-weight:bold; padding:5px;">Оберіть категорію</font>
            	        <form>
            	        <div class="category">
            	        
            	          <input type="checkbox"value="1">
            	          Game development<br>
            	          <input type="checkbox"value="2">
            	          Web-дизайн<br>
            	          <input type="checkbox"value="3">
            	          Web - програмування<br>
            	          <input type="checkbox"value="4">
            	          Розробка ПЗ<br>
            	          <input type="checkbox"value="5">
            	          Інформаційна безпека<br>
            	          <input type="checkbox"value="6">
            	          Мережеві технології<br>
            	          <input type="checkbox"value="7">
            	          Бази даних: розробка й &nbsp;&nbsp;&nbsp;адміністрування<br>
            	          <input type="checkbox"value="8">
            	          Mobile development<br>
            	          <input type="checkbox"value="9">
            	          системи автоматизації<br>
            	          <input type="checkbox"value="10">
            	          Тестування<br>
            	          <input type="checkbox"value="11">
            	          Технічна підтримка<br>
            	          </div>
            	          <font style="font-weight:bold; padding:5px;">Оберіть фірму:</font>
            	          <select name="select" style="margin:5px;">
            	            <option value="">Всі</option>
            	            <option value="">LUXOFT</option>
            	            <option value="">EPAM</option>
            	            <option value="">NetCracker</option>
            	            <option value="">robota.ua</option>
          	            </select>
            	          <br>
            	          <font style="font-weight:bold; padding:5px;">Оберіть зайнятість:</font>
            	          <div class="category">
            	            <input type="checkbox" value="full">
            	            Повна зайнятість<br>
            	            <input type="checkbox" value="part">
            	            Часткова зайнятість<br>
            	            <input type="checkbox" value="home">
            	            Віддалена робота<br>
          	            </div>
            	          <input type="submit" value="Показати" style="margin:5px;">
          	          </form>
          	        </div>
           	        <a href="cv.jsp"><span>Резюме</span></a></li>
        	</ul>

      		<div class="contact">
        <h2>Contact Us</h2>
            	    <p> <em>Phone :</em> ++ 12 34 56 78<br/>
           	    <em>Fax :</em> ++ 87 65 43 21<br/>
            	    <em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
        	</div> 
   	 </div>

    	<div id="rightcolumn">
			<h1>Сторінка в розробці</h1>
    	</div>
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