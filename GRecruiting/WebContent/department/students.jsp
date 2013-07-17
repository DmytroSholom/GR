<%@page import="edu.grecruiting.model.student.StudentManager"%>
<%@page import="edu.grecruiting.model.student.StudentEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Працевлаштування</title>
<link rel="stylesheet" type="text/css" href="../styles/style.css" />
	<link rel="stylesheet" href="tableState.css" />
	<script type="text/javascript" src="script.js"></script>
	<script type="text/javascript">
 		$(document).ready(function(){
      		//Количество элементов div находящихся внутри дочернего Div "<div class="scroll_child">"
      		var quqntity=$(".scroll_child div").size();

	        //Общая длинна всех элементов
      		var widthScroll=0;
      		for (i=0;i<quqntity;i++){
	        	widthScroll+=$(".scroll_child div:eq("+i+")").width();
      		}

     		 //Установка ширины дочернего Div "<div class="scroll_child">"
      		$(".scroll_child").width(widthScroll);
  		});
	</script>
</head>
<body>
	<div id="wrapper">
	<jsp:include page="../WEB-INF/includes/Header.jsp"></jsp:include>
	<ul class="glossymenu">
	  <li><a href="index.jsp"><b>Головна</b></a></li>
          <li><a href="../student/student.jsp"><b>Студенту</b></a></li>
          <li class="current"><a href="faculty.jsp"><b>Кафедрі</b></a></li>
          <li><a href="company.jsp"><b>Роботодавцю</b></a></li>
	  <li><a href="#"><b>Допомога</b></a></li>
      </ul>
    <div id="continer">
      <div id="main">	
    	<div id="leftcolumn">
	    <h2>Навігація</h2>
            <ul id="menu">
            	<li><a href="#"><span>Студенти</span></a></li>
           	<li><a href="companies.jsp"><span>Компанії-співробіники</span></a></li>
            	<li><a href="distribution.jsp"><span>Розподіл випускників</span></a></li>
	    	<li><a href="letters.jsp"><span>Облік листів про вільне працевлаштування</span></a></li>
            	<li class="last"><a href="documentation.jsp"><span>Формування документації</span></a></li>
            </ul>

      	    <div class="contact">
	    	<h2>Contact Us</h2>
            	<p> <em>Phone :</em> ++ 12 34 56 78<br/>
            	<em>Fax :</em> ++ 87 65 43 21<br/>
            	<em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a></p>
            </div> 
    	</div>
		<%if(request.getParameter("show")!=null && request.getParameter("show").equalsIgnoreCase("TRUE") ) {%>
    	<div id="rightcolumnforStudent">
			<div class="scroll">
				<div class="scroll_child">
					<div>
						<table cellpadding="0" cellspacing="0" border="0" id="table" class="sortable">
		<thead>
		<tr>
				<th><h3>Прізвище</h3></th>
				<th><h3>Ім'я</h3></th>
				<th><h3>Початок навчання</h3></th>
				<th><h3>Кінець навчання</h3></th>
				<th><h3>Адреса</h3></th>
				<th><h3>Дата народження</h3></th>
				<th><h3>Середній бал</h3></th>
				<th><h3>E-mail</h3></th>
			</tr>
		</thead>
		<tbody>
		<%
			List<StudentEntity> students = StudentManager.getAll();
				
			for(StudentEntity s: students){
		%>
		<tr>
			<td><Font size=2><b><%=s.getLname()%></b></Font></td>
			<td><Font size=2><b><%=s.getFname()%></b></Font></td>
			<td><Font size=2><b><%=s.getStartDate()%></b></Font></td>
			<td><Font size=2><b><%=s.getEndDate()%></b></Font></td>
			<td><Font size=2><b><%=s.getResumeID()!=null?s.getResumeID().getAddress():"null"%></b></Font></td>
			<td><Font size=2><b><%=s.getResumeID()!=null?s.getResumeID().getBirthDate():"null"%></b></Font></td>
			<td><Font size=2><b><%=s.getResumeID()!=null?s.getResumeID().getAvrgMark():"null"%></b></Font></td>
			<td><Font size=2><b><%=s.getEmail()%></b></Font></td>
		</tr>	
		<%}%>
		</tbody>
  </table>
	<div id="controls">
		<div id="perpage">
			<select onchange="sorter.size(this.value)">
			<option value="5">5</option>
				<option value="10" selected="selected">10</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
			<span>Entries Per Page</span>
		</div>
		<div id="navigation">
			<img src="images/first.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)" />
		</div>
		<div id="text">Displaying Page <span id="currentpage"></span> of <span id="pagelimit"></span></div>
	</div>	
					
				
			</div>	
		</div>
      </div>
	</div>
	<script type="text/javascript">
			var sorter = new TINY.table.sorter("sorter");
			sorter.head = "head";
			sorter.asc = "asc";
			sorter.desc = "desc";
			sorter.even = "evenrow";
			sorter.odd = "oddrow";
			sorter.evensel = "evenselected";
			sorter.oddsel = "oddselected";
			sorter.paginate = true;
			sorter.currentid = "currentpage";
			sorter.limitid = "pagelimit";
			sorter.init("table",1);
	</script>
                <div class="clear"></div>
		<div id="triplebox">
		 </div>
		 <%} else{%>
		<div id="rightcolumn">
			<form action="" name="showStudents" class="def"  method="POST">
				<input type=submit name="show" value="Показати студентів">
			</form>
		</div>
		<%} %>
				<!-- End Right Column -->

				<!-- Begin Footer -->
				<div id="footer"></div>
				<!-- End Footer -->

			</div>
			<!-- End Wrapper -->
		</div></div>
	
</body>
</html>