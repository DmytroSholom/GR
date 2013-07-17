<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <title>Працевлаштування</title>

    <link rel="stylesheet" type="text/css" href="../styles/style.css" />
    <link rel="stylesheet" type="text/css" href="createDoc.css" />
	<script type="text/javascript" src="addclasskillclass.js"></script>
	<script type="text/javascript" src="attachevent.js"></script>
	<script type="text/javascript" src="addcss.js"></script>
	<script type="text/javascript" src="tabtastic.js"></script>
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
            	    <li><a href="#"><span>Розподіл випускників</span></a></li>
	    	    <li>
<a href="letters.jsp"><span>Облік листів про вільне працевлаштування</span></a></li>
            	    <li class="last"><a href="#"><span>Формування документації</span></a></li>
        	</ul>

      		<div class="contact">
        <h2>Contact Us</h2>
            	    <p> <em>Phone :</em> ++ 12 34 56 78<br/>
            	    <em>Fax :</em> ++ 87 65 43 21<br/>
            	    <em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
        	</div> 
    	</div>

    	<div id="rightcolumn">
    	<div id="pagecontent">

				<h2 class="tabset_label">Table of Contents</h2>
				<ul class="tabset_tabs">
					<li class="firstchild"><a href="#overview" class="preActive active">Відомість працевлаштування</a></li><li><a class="preActive postActive" href="#requirements">Дані по студентам</a></li><li><a class="preActive" href="#stepbystep">Гарантійний лист</a></li><li><a class="" href="#notes">Резюме студента</a></li>
				</ul>


				<div id="overview" class="tabset_content tabset_content_active">
					<h2 class="tabset_label">Відомість працевлаштування</h2>
					<div class="doc_param">
					  <div class="Trow">
						<form class="Tcell">
							<p style="padding:5px;"><font style="font-weight:bold; padding:5px;">Виберіть параметри для відображення в документі:</font></p>
							<div class="field">
								<div class="Trow">
									<p class="one_param"><input type="checkbox"value="1"> Кафедра </p>
									<p class="one_param"><input type="checkbox"value="2"> № договора</p>
								</div>
								<div class="Trow">
									<p class="one_param"><input type="checkbox"value="3"> Спеціальність </p>
									<p class="one_param"><input type="checkbox"value="4"> Назва підприємства</p>
								</div>
								<div class="Trow">
									<p class="one_param"><input type="checkbox"value="5"> Адреса підприємства</p>
									<p class="one_param"><input type="checkbox"value="6"> № телефону</p>
								</div>
							</div>
							<p style="padding:5px;"><font style="font-weight:bold; padding:5px;">Виберіть групу студентів:</font>
								 <select>
									<option value="0" selected>Оберіть групу</option>
									<option value="1">ІП-01</option>
									<option value="2">ІП-11</option>
									<option value="3">ІП-21</option>
									<option value="4">ІП-91</option>
									<option value="5">ІС-01</option>
									<option value="6">ІС-02</option>
									<option value="7">ІС-03</option>
									<option value="8">ІС-11</option>
									<option value="9">ІС-12</option>
									<option value="10">ІС-21</option>
									<option value="11">ІС-22</option>
									<option value="12">ІС-23</option>
									<option value="13">ІС-24</option>
									<option value="14">ІС-61</option>
									<option value="15">ІС-71</option>
									<option value="16">ІС-72</option>
									<option value="17">ІС-73</option>
									<option value="18">ІС-81</option>
									<option value="19">ІС-82</option>
									<option value="20">ІС-83</option>
									<option value="21">ІС-91</option>
									<option value="22">ІС-92</option>
									<option value="23">ІС-93</option>
								</select>
							</p>
							<p style="padding:5px;"><font style="font-weight:bold; padding:5px;">Знайти та додати студента:</font>
								<input type="text" name="stud" value="">
								<input type="submit"  value="Додати">
							</p>
							<p style="padding:5px;"><font style="font-weight:bold; padding:5px;">Список студентів для друку:</font>
							</p>
							<center><input type="submit"  value="Сформувати звіт"></center>
						</form>
						
						<div  class="Tcell">
						  <div class="div">
							<p style="padding:5px;"><font style="font-weight:bold; padding:5px;">Шаблон звіту, створений в: </font>
								<input type="checkbox"value="9"> Microsoft Word <input type="checkbox"value="10"> Microsoft Excel
							</p>
							<p style="padding:5px;"><font style="font-weight:bold; padding:5px;">Зразок: </font></p>
							<img src="img/Capture.JPG">
							</div>
						</div>
					  </div>
					</div>
				</div>

	
				<div id="requirements" class="tabset_content">
					<h2 class="tabset_label">Дані по студентам</h2>
					<p>Сторінка в розробці</p>
				</div>
	
				<div id="stepbystep" class="tabset_content">
					<h2 class="tabset_label">Гарантійний лист</h2>
					<p>Сторінка в розробці</p>
				</div>



				<div id="notes" class="tabset_content">
					<h2 class="tabset_label">Резюме студента</h2>
					<p>Сторінка в розробці</p>
				</div>


			</div>
			<p class="byline" id="copyright">&nbsp;</p>
		
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