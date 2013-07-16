package edu.grecruiting.facade;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
import edu.grecruiting.model.user.UserEntityManager;
import edu.grecruiting.model.vacancy.VacancyEntity;
import edu.grecruiting.model.vacancy.VacancyManager;

/**
 * Servlet implementation class SaveS
 */
@WebServlet("/SaveS")
public class SaveS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveS() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//StudentManager.addNew(new StudentEntity(1, "f", "n", null, null, 0, 0));
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//StudentManager.addNew(new StudentEntity(1, "f", "n", null, null, 0, 0));
		//StudentGroupEntity group = StudentGroupManager.getById(0);
		//StudentEntity stud	= StudentManager.getByUserId(UserEntityManager.getByLoginPassword("p8", "pass1"));
		response.setContentType("text/html;charset=UTF-8");
		
        VacancyEntity vacancy = new VacancyEntity(0, "post", 0, "english", 1000, "Java", 2, "Programming", "Information", 81);
        VacancyManager.addNew(vacancy);
        CompanyEntity company = CompanyManager.getById(81);
        List<VacancyEntity> vacs = company.getVacancies();
		PrintWriter out = response.getWriter();
        try {
            out.println("<html>lllll");
            out.println("<head>");
            out.println("<title>Первый сервлет</title>");
            out.println("</head>");
            out.println("<body>");
            for(VacancyEntity v: vacs)
            		out.println("<h1>"+v.getForLang()+"</h1>");
            out.println("</body>");
            out.println("</html>");

        } finally {
            out.close();
        }
	}

}
