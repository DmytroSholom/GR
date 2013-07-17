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

import org.apache.catalina.mbeans.GroupMBean;


import edu.grecruiting.model.resume.ResumeEntity;
import edu.grecruiting.model.resume.ResumeManager;
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
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserEntity user = (UserEntity) session.getAttribute("USER");
		StudentEntity student = StudentManager.getByUserId(user);
		PrintWriter out = response.getWriter();
		//student data form
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
        //Resume form
        ResumeEntity resume = student.getResumeID();
        if(resume==null)
        	resume=new ResumeEntity();
        
        out.append("<form action=\"/GRecruiting/StudentDataController\" name=\"student\" class=\"def\" method=\"POST\">");
        out.append("<strong>Заповнити форму для резюме:</strong>");
        if(resume.getBirthDate()!=null){
        	out.append( "<div class=\"tableRow\">" +
        			"<p> Дата народження: </p>" +
        			"<p> <input type=\"date\" name=\"BDate\" value=\""+resume.getBirthDate()+"\"> </p>" +
        			"</div>");
        }else
        	out.append( "<div class=\"tableRow\">" +
        			"<p> Дата народження: </p>" +
        			"<p> <input type=\"date\" name=\"BDate\" > </p>" +
        			"</div>");
        out.append( "<div class=\"tableRow\">" +
    			"<p> Номер телефону: </p>" +
    			"<p> <input type=\"text\" name=\"phone\" value=\""+resume.getPhone()+"\"> </p>" +
    			"</div>");
        out.append( "<div class=\"tableRow\">" +
    				"<p> Середній бал: </p>" +
    				"<p> <input type=\"text\" name=\"avrg\" value=\""+resume.getAvrgMark()+"\"> </p>" +
    				"</div>");
        out.append( "<div class=\"tableRow\">" +
					"<p> Адреса: </p>" +
					"<p> <input type=\"text\" name=\"addr\" value=\""+resume.getAddress()+"\"> </p>" +
					"</div>");
        out.append( "<div class=\"tableRow\">" +
					"<p> Знання іноземних мов: </p>" +
					"<p> <textarea rows=\"5\" cols=\"45\" name=\"flang\" >"+resume.getForeignLang()+"</textarea> </p>" +
					"</div>");
        out.append( "<div class=\"tableRow\">" +
					"<p> Професійні навички: </p>" +
					"<p> <textarea rows=\"5\" cols=\"45\" name=\"skills\" >"+resume.getSkills()+"</textarea> </p>" +
					"</div>");
        out.append( "<div class=\"tableRow\">" +
					"<p> Інтереси: </p>" +
					"<p> <textarea rows=\"5\" cols=\"45\" name=\"interests\">"+resume.getInterests()+"</textarea> </p>" +
					"</div>");
        out.append( "<div class=\"tableRow\">" +
					"<p> Бажана посада: </p>" +
					"<p> <textarea rows=\"5\" cols=\"45\" name=\"post\" >"+resume.getWantedPost()+"</textarea> </p>" +
					"</div>");
        out.append("<input type=\"hidden\" name=\"sId\" value=\""+student.getId()+"\"/>");
        out.append( "<div class=\"tableRow\">" +
					"<p> <input type=\"submit\" name=\"acceptResume\" value=\"Зберегти\"> </p>" +
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
			if(StudentManager.update(student)){
				request.getSession().setAttribute("STUDENT", student);
				request.getSession().setAttribute("GROUP", StudentGroupManager.getById(student.getGroupID()));
				response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=succes");
				return;
			}
		}
		if(request.getParameter("acceptResume")!=null && request.getParameter("acceptResume").equals("Зберегти")){
			String bdate = request.getParameter("BDate");
			String address = request.getParameter("addr");
			String avrg = request.getParameter("avrg");
			String fLang = request.getParameter("flang");
			String skills = request.getParameter("skills");
			String interests = request.getParameter("interests");
			String post = request.getParameter("post");
			String phone = request.getParameter("phone");
			SimpleDateFormat formater = new SimpleDateFormat("yyyy-mm-dd");
			Date birthDate = null;
			try {
				birthDate = new Date(formater.parse(bdate).getTime());
			} catch (ParseException e) {
				response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=date");
				return;
			}
			ResumeEntity resume = new ResumeEntity(0, address, birthDate, Double.parseDouble(avrg), fLang, skills, interests, post, phone);
			ResumeManager.addNew(resume);
			StudentEntity student = StudentManager.getById(Integer.parseInt(request.getParameter("sId")));
			student.setResumeID(resume);
			if(StudentManager.update(student)){
				request.getSession().setAttribute("STUDENT", student);
				response.sendRedirect("/GRecruiting/student/personaldata.jsp?message=succes");
				return;
			}
		}
	}

}
