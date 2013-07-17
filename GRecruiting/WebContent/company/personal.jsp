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
	    	    <li><a href="#"><span>Персональні дані</span></a></li>
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
		<p> Назва: </p>
		<p> <input type="text" name="name" value=""> </p>
	    </div>
	    <div class="tableRow">
		<p> опис: </p>
		<p> <textarea name="comp" rows="5" cols="50"></textarea> </p>
	    </div>
	    <div class="tableRow">
		<p> Адреса: </p>
		<p> <input type="text" name="address" value=""> </p>
	    </div>
	    <div class="tableRow">
		<p>Web:</p>
		<p> <input type="text" name="web"></p>
	    </div>
	    <div class="tableRow">
		<p>контактна особа:</p>
		<p> <input type="text" name="kont"></p>
	    </div>
	    <div class="tableRow">
		<p>Телефон:</p>
		<p> <input type="text" name="phone"></p>
	    </div>
 	    <div class="tableRow">
		<p>E-mail:</p>
		<p> <input type="text" name="email"></p>
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