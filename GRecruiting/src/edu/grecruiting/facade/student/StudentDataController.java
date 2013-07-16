package edu.grecruiting.facade.student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.grecruiting.model.student.StudentEntity;
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
        out.append("<form action=\"/GRecruiting/RegistrationController\" name=\"student\" class=\"def\">"+student.getFname()+"</form>");
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
