package edu.grecruiting.facade.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.security.acl.GroupImpl;

import edu.grecruiting.model.student.StudentEntity;
import edu.grecruiting.model.student.StudentGroupEntity;
import edu.grecruiting.model.student.StudentGroupManager;
import edu.grecruiting.model.student.StudentManager;
import edu.grecruiting.model.user.UserEntity;

/**
 * Servlet implementation class StudentDataController
 */
@WebServlet("/StudentDataController")
public class StudentDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentDataController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserEntity user = (UserEntity) session.getAttribute("USER");
		StudentEntity student = StudentManager.getByUserId(user);
		PrintWriter out = response.getWriter();
        out.append("<form action=\"/GRecruiting/StudentDataController\" name=\"student\" class=\"def\" method=\"POST\">");
        out.append("<strong>Редагувати персональні дані:</strong>");
        out.append( "<div class=\"tableRow\">" +
        			"<p> Ім'я: </p>" +
        			"<p> <input type=\"text\" name=\"fname\" value=\""+student.getFname()+"\"> </p>" +
        			"</div>");
        out.append( "<div class=\"tableRow\">" +
    				"<p> Прізвище: </p>" +
    				"<p> <input type=\"text\" name=\"lname\" value=\""+student.getLname()+"\"> </p>" +
    				"</div>");
        out.append( "<div class=\"tableRow\">" +
    				"<p> Група: </p>" +
    				"<p> <select  name=\"group\" value=\""+student.getLname()+"\"> " );
        StudentGroupEntity currGroup = StudentGroupManager.getById(student.getGroupID());
        out.append("<option selected value=\""+currGroup.getGroupID()+"\">"+currGroup.getName()+"</option>");
        List<StudentGroupEntity> groups= StudentGroupManager.getAll();
        for(StudentGroupEntity g : groups){
        	if(g.getGroupID()!=student.getGroupID())
        		out.append("<option value=\""+g.getGroupID()+"\">"+g.getName()+"</option>");
        }
        
        out.append("</select> </p> </div>");
        
        out.append( "<div class=\"tableRow\">" +
				"<p> Початок навчання: </p>" +
				"<p> <input type=\"date\" name=\"SDate\" value=\""+student.getStartDate().toString()+"\"> </p>" +
				"</div>");
        out.append( "<div class=\"tableRow\">" +
				"<p> Кінець навчання: </p>" +
				"<p> <input type=\"date\" name=\"EDate\" value=\""+student.getEndDate().toString()+"\"> </p>" +
				"</div>");
        out.append( "<div class=\"tableRow\">" +
				"<p> E-mail: </p>" +
				"<p> <input type=\"text\" name=\"email\" value=\""+student.getEmail()+"\"> </p>" +
				"</div>");
        out.append( "<div class=\"tableRow\">" +
				"<p> <input type=\"submit\" name=\"accept\" value=\"Підтвердити\"> </p>" +
				"</div>");
        out.append("</form>");
        
       
        
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("accept")!=null && request.getParameter("accept").equals("Підтвердити")){
			Enumeration<String> names = request.getParameterNames();
			String currName;
			while(names.hasMoreElements()){
				currName = names.nextElement();
				if(request.getParameter(currName)==null || request.getParameter(currName).equals("")){
					
					response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=empty");
					return;
				}
			}
			UserEntity user = (UserEntity) request.getSession().getAttribute("USER");
			StudentEntity student = StudentManager.getByUserId(user);
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String group = request.getParameter("group");
			String SDate = request.getParameter("SDate");
			String EDate = request.getParameter("EDate");
			String email = request.getParameter("email");
			SimpleDateFormat formater = new SimpleDateFormat("yyyy-mm-dd");
			Date sdate = null;
			Date edate = null;
			try {
				sdate = new Date(formater.parse(SDate).getTime());
				edate = new Date(formater.parse(EDate).getTime());
			} catch (ParseException e) {
				response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=date");
				return;
			}
			student.setFname(fname);
			student.setLname(lname);
			student.setGroupID(Integer.parseInt(group));
			student.setStartDate(sdate);
			student.setEndDate(edate);
			student.setEmail(email);
			if(StudentManager.update(student))
				response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=succes");
		}
	}

}
