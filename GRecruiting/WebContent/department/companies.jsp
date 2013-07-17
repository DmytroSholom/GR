<%@page import="edu.grecruiting.model.company.CompanyManager"%>
<%@page import="edu.grecruiting.model.company.CompanyEntity"%>
<%@page import="java.util.List"%>
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
    
	<jsp:include page="../WEB-INF/includes/deptHorizontal.jsp"></jsp:include>
      
    <div id="container">
      <div id="main">	
    	<div id="leftcolumn">
	    <h2>Навігація</h2>
            <ul id="menu">
            	<li><a href="students.jsp"><span>Студенти</span></a></li>
            	<li><a href="#"><span>Компанії-співробіники</span></a></li>
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

    	<div id="rightcolumn">
	<table id="report">
	    <tr>
                <th>Company</th>
                <th>Office</th>
                <th>e-mail</th>
                <th>Контактна особа</th>
                <th></th>
            </tr>
	    <tr>
                <td>Luxoft</td>
                <td>Kiev</td>
                <td>luxoft@email.com</td>
                <td>Іванов</td>
                <td><div class="arrow"></div></td>
            </tr>
	    <tr>
                <td colspan="5">
                    <img src="img/luxoft.jpg" alt="LUXOFT" />
                    <h4>Additional information</h4>
                    <ul>
                        <li><a href="http://www.luxoft.ru/">Website Luxoft</a></li>
                        <li><a href="http://rabota.ua/company911/about.htm">Luxoft in robota.ua</a></li>
                        <li><a href="http://www.nationalcenter.org/HistoricalDocuments.jsp">Historical Documents</a></li>
                    </ul>   
                 </td>
             </tr>
	      <tr>
                <td>Epam Systems</td>
                <td>Kiev</td>
                <td>ask@epam.com</td>
                <td>Петров</td>
                <td><div class="arrow"></div></td>
            </tr>
	    <tr>
                <td colspan="5">
                    <img src="img/epam.gif" alt="EPAM" />
                    <h4>Additional information</h4>
                    <ul>
                        <li><a href="http://www.epam.com/">Website Epam</a></li>
                        <li><a href="http://rabota.ua/epam">Epam in robota.ua</a></li>
                        <li><a href="http://www.epam-group.ru/career/vacancies/ukraine.jsp">Epam Systems Ukraine</a></li>
                    </ul>   
                 </td>
             </tr>
             <%
             	List<CompanyEntity> companies = CompanyManager.getAll();
             	for(CompanyEntity c : companies){ %>
 			<tr>
                <td><%=c.getName() %></td>
                <td><%=c.getAddress() %></td>
                <td><%=c.getEmail() %></td>
                <td><%=c.getContname() %></td>
                <td><div class="arrow"></div></td>
            </tr>
	   	 	<tr>
                <td colspan="5">
                    
                    <h4>Additional information</h4>
                    <ul>
                        <li><a href="<%=c.getWeb()%>">WebSite of <%=c.getName()%></a></li>
                        <li><%=c.getCompdesc() %></li>
                        <li>Контактний номер: <%=c.getPhone() %></li>
                    </ul>
                     
                 </td>
             </tr>
             <%} %>
            
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