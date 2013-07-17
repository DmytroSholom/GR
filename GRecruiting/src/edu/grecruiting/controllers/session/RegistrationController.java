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

import edu.grecruiting.model.company.CompanyEntity;
import edu.grecruiting.model.company.CompanyManager;
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
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("type").equals("STUD")){
			Enumeration<String> names = request.getParameterNames();
			String currName;
			while(names.hasMoreElements()){
				currName = names.nextElement();
				if(request.getParameter(currName)==null || request.getParameter(currName).equals("")){
					
					response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=empty");
					return;
				}
			}
			if(!request.getParameter("pass").equals(request.getParameter("rpass"))){
				//TODO: error
				response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=wrongpassword");
				return;
			}
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
				response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=date");
				return;
			}
			UserEntity user = new UserEntity(0, login, pass, request.getParameter("type"));
			UserEntityManager.addNew(user);
			StudentGroupEntity sgroup = StudentGroupManager.getByName(group);
			StudentEntity student = new StudentEntity(0, fname, lname, sdate, edate, sgroup.getGroupID(), null, email, user);
			StudentManager.addNew(student);
			String mess = "succes";
			response.sendRedirect("/GRecruiting/student/student.jsp?message="+mess);
		}
		
		//company
		if(request.getParameter("type").equals("COMP")){
			Enumeration<String> names = request.getParameterNames();
			String currName;
			while(names.hasMoreElements()){
				currName = names.nextElement();
				if(request.getParameter(currName)==null || request.getParameter(currName).equals("")){
					
					response.sendRedirect("/GRecruiting/company.jsp?message=empty");
					return;
				}
			}
			if(!request.getParameter("pass").equals(request.getParameter("rpass"))){
				//TODO: error
				response.sendRedirect("/GRecruiting/company.jsp?message=wrongpassword");
				return;
			}
			String login = request.getParameter("login");
			String pass = request.getParameter("pass");
			String contname = request.getParameter("contname");
			String compname = request.getParameter("compname");
			String compdesc = request.getParameter("compdesc");
			String address = request.getParameter("address");
			String web = request.getParameter("address");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			UserEntity user = new UserEntity(0, login, pass, request.getParameter("type"));
			
			if(UserEntityManager.addNew(user)){
				CompanyEntity company = new CompanyEntity(0, compname, address, email, web, contname, compdesc, phone, null, user);
				if(CompanyManager.addNew(company)){
					String mess = "succes";
					response.sendRedirect("/GRecruiting/company.jsp?message="+mess);
				}
			}
		}
	}

}
