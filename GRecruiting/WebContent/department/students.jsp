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
	$(document).ready(function() {
		//Количество элементов div находящихся внутри дочернего Div "<div class="scroll_child">"
		var quqntity = $(".scroll_child div").size();

		//Общая длинна всех элементов
		var widthScroll = 0;
		for (i = 0; i < quqntity; i++) {
			widthScroll += $(".scroll_child div:eq(" + i + ")").width();
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
			<li><a href="../index.jsp"><b>Головна</b></a></li>
			<li><a href="../student.jsp"><b>Студенту</b></a></li>
			<li class="current"><a href="../faculty.jsp"><b>Кафедрі</b></a></li>
			<li><a href="../company.jsp"><b>Роботодавцю</b></a></li>
			<li><a href="#"><b>Допомога</b></a></li>
		</ul>
		<div id="continer">
			<div id="main">
				<div id="leftcolumn">
					<h2>Навігація</h2>
					<ul id="menu">
						<li><a href="#"><span>Студенти</span></a></li>
						<li><a href="companies.jsp"><span>Компанії-співробіники</span></a></li>
						<li><a href="distribution.jsp"><span>Розподіл
									випускників</span></a></li>
						<li><a href="letters.jsp"><span>Облік листів про вільне
									працевлаштування</span></a></li>
						<li class="last"><a href="#"><span>Формування
									документації</span></a></li>
					</ul>

					<div class="contact">
						<h2>Contact Us</h2>
						<p>
							<em>Phone :</em> ++ 12 34 56 78<br /> <em>Fax :</em> ++ 87 65 43
							21<br /> <em>e mail:</em> <a href=" mailto:#?subject=#">address@something.com</a>
						</p>
					</div>
				</div>

				<div id="rightcolumnforStudent">
					<Form action="../InputStudents" class="def">
						<p> З середнім балом не менше: </p>
						<p> <input type="number" name="fromMark" min="3" max="5" step="0.1">  </p>
						<p> З середнім балом не більше: </p>
						<p> <input type="number" name="toMark" min="3" max="5" step="0.1">  </p>
						<p>
							<input type="submit" name="action" value="Вивести студентів">
						</p>
					</Form>
				</div>
				<!-- End Right Column -->

				<!-- Begin Footer -->
				<div id="footer"></div>
				<!-- End Footer -->

			</div>
			<!-- End Wrapper -->
		</div></div>
	
</body>
</html>