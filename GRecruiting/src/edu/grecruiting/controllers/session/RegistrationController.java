package edu.grecruiting.controllers.session;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Enumeration;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.grecruiting.model.student.StudentEntity;
import edu.grecruiting.model.student.StudentGroupEntity;
import edu.grecruiting.model.student.StudentGroupManager;
import edu.grecruiting.model.student.StudentManager;
import edu.grecruiting.model.user.UserEntity;
import edu.grecruiting.model.user.UserEntityManager;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("type").equals("STUD")){
			Enumeration<String> names = request.getParameterNames();
			String currName;
//			while(names.hasMoreElements()){
//				currName = names.nextElement();
//				if(currName==null || currName.equals("")){
//					//TODO error
//					response.sendRedirect("/GRecruiting/student/student.jsp");
//				}
//			}
//			if(!request.getParameter("pass").equals(request.getParameter("rpass"))){
//				//TODO: error
//				response.sendRedirect("/GRecruiting/student/student.jsp");
//			}
			String login = request.getParameter("login");
			String pass = request.getParameter("pass");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String group = request.getParameter("group");
			String SDate = request.getParameter("SDate");
			String EDate = request.getParameter("EDate");
			String email = request.getParameter("email");
			System.out.println(SDate);
			System.out.println(group);
			SimpleDateFormat formater = new SimpleDateFormat("yyyy-mm-dd");
			Date sdate = null;
			Date edate = null;
			try {
				sdate = new Date(formater.parse(SDate).getTime());
				edate = new Date(formater.parse(EDate).getTime());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			UserEntity user = new UserEntity(0, login, pass, request.getParameter("type"));
			UserEntityManager.addNew(user);
			StudentGroupEntity sgroup = StudentGroupManager.getByName(group);
			StudentEntity student = new StudentEntity(0, fname, lname, sdate, edate, sgroup.getGroupID(), null, email, user);
			StudentManager.addNew(student);
			response.sendRedirect("/GRecruiting/student/student.jsp");
		}
	}

}
