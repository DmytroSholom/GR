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
    
    <jsp:include page="../WEB-INF/includes/deptHorizontal.jsp"></jsp:include>
    
    <div id="container">
      <div id="main">	
   	 <div id="leftcolumn">
	     <h2>Навігація</h2>
        	<ul id="menu">
            	    <li><a href="students.jsp"><span>Студенти</span></a></li>
            	    <li><a href="companies.jsp"><span>Компанії-співробіники</span></a></li>
            	    <li><a href="distribution.jsp"><span>Розподіл випускників</span></a></li>
	    	    <li><a href="#"><span>Облік листів про вільне працевлаштування</span></a></li>
                	<ul id="submenu">  <font style="font-weight:bold; padding:5px;">
                	  <li><a href=""> Додати</a></li>
                      <li><a href="">Переглянути</a></li>
                      <li><a href="">Видалити</a></li>
                      </font>
                    </ul>
            	    <li class="last"><a href="documentation.jsp"><span>Формування документації</span></a></li>
        	</ul>

      		<div class="contact">
  <h2>Contact Us</h2>
            	    <p> <em>Phone :</em> ++ 12 34 56 78<br/>
            	    <em>Fax :</em> ++ 87 65 43 21<br/>
            	    <em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
        	</div> 
    	</div>

    	<div id="rightcolumn">
		<strong style="font-size:16px">Сторінка в розробці.</strong>
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