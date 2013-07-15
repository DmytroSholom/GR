<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Працевлаштування</title>

    <link rel="stylesheet" type="text/css" href="../styles/style.css" />
    <link rel="stylesheet" type="text/css" href="style_comp.css" />
   <script src="jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">  
        $(document).ready(function(){
            $("#report tr:odd").addClass("odd");
            $("#report tr:not(.odd)").hide();
            $("#report tr:first-child").show();
            
            $("#report tr.odd").click(function(){
                $(this).next("tr").toggle();
                $(this).find(".arrow").toggleClass("up");
            });
            //$("#report").jExpand();
        });
    </script>
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
            	    <li><a href="#"><span>Резюме студентів</span></a></li>
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
	<table id="report" >
            <tr>
            <th>Назва</th>
            <th>Опис</th>
	    <th></th>
            </tr>
            <tr>
            	
                	<td >Ім'я:</td>
                    <td> Сергій Стіренко</td>
		    <td><div class="arrow"></div></td>
                   </tr>
                   <tr>
                   <td colspan="3">
                   <div>
                    <div class="tableRow">
                    <p class="cvLeft"> Домашня адреса:</p>
                    <p> вул. Жолудєва 8, кв. 7,
						Київ, 03032, Україна</p></div>
                    <div class="tableRow">
                    <p class="cvLeft">Адреса офісу:</p>
                    <p> кафедра обчислювальної техніки Національного технічного університету України "КПІ"<br>
Проспект Перемоги, 37, Київ - 56, 03056<br>
+380 (44) 454 90 42<br>
факс +380 (44) 406 80 13;<br>
Мобільний телефон +380 (44) 095 504 66 88<br>
електронна пошта stirenko@yahoo.com, stirenko@yandex.ru</p></div>
                    <div class="tableRow">
                    <p class="cvLeft">Дата народження:</p>
                    <p> 22-го березня 1968</p></div>
                    <div class="tableRow">
                    <p class="cvLeft">Місце народження:</p>
                    <p>Україна, Вінниця</p></div>
                    <div class="tableRow">
                    <p class="cvLeftBold">Освіта:</p>
                    <p></p></div>
                    <div class="tableRow">
                    <p class="cvLeft">1989-95</p>
                    <p>Обчислювальної техніки, Національний технічний університет України "КПІ",<br>
 Кафедра, Україна.</p></div>
                    <div class="tableRow">
                    <p class="cvLeft">1995-98</p>
                    <p>аспірант - лабораторія системного програмування, комп'ютерної інженерії факультет <br>
Національного технічного університету України "КПІ".</p></div>
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
                    <p>омічник - Комп'ютерна інженерія факультет <br>
Національного технічного університету України "КПІ"</p>
                </div>
                <div class="tableRow">
					<p class="cvLeftBold">Останні публікації:</p>
                    <p></p>
                </div>
                <div class="tableRow">
					<p class="cvLeft">2008</p>
                    <p>S.Stirenko, В.ПУСТОВАРОВ, А.Кузнецов. Уніфікація технології семантичного аналізу<br>
 наукової і технічної інформації.
Двадцять першого тези Міжнародної <br>
конференції CODATA. Наукова інформація для<br> суспільства - з сьогоднішнього дня в майбутнє, 5-8 жовтня 2008 року, Київ, Україна. P. 103.</p>
                </div>
                <div class="tableRow">
					<p class="cvLeftBold">Освіта - практичні курси по:</p>
                    <p></p>
                </div>
                <div class="tableRow">
					<p class="cvLeft">1998-2002:</p>
                    <p>Штучний інтелект будівництво системи з Prolog.</p>
                </div>
                <div class="tableRow">
					<p class="cvLeft">1998-2009:</p>
                    <p>Комп'ютерна логіка.</p>
                </div>
                <div class="tableRow">
					<p class="cvLeftBold">Інтереси:</p>
                    <p>Розробка Grid даних, інтелектуального аналізу даних і                         Grid систем,<br>
                        Семантичні Grid Supercomputing</p>
                </div>
                <div class="tableRow">
					<p class="cvLeftBold">Мови:</p>
                    <p>російська (рідна), українська (рідна), англійська (запис і читання технічної документації,<br>
 свобода слова, лекції з інформаційної безпеки для іноземних студентів)</p>
                </div>
                </div>
                </td>
                </tr>
             </table>
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