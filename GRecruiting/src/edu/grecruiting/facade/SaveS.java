package edu.grecruiting.facade;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.grecruiting.model.student.StudentEntity;
import edu.grecruiting.model.student.StudentGroupEntity;
import edu.grecruiting.model.student.StudentGroupManager;
import edu.grecruiting.model.student.StudentManager;
import edu.grecruiting.model.user.UserEntityManager;

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
		StudentGroupEntity group = StudentGroupManager.getById(0);
		StudentEntity stud	= StudentManager.getByUserId(UserEntityManager.getByLoginPassword("p8", "pass1"));
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<html>lllll");
            out.println("<head>");
            out.println("<title>Первый сервлет</title>");
            out.println("</head>");
            out.println("<body>");
            		out.println("<h1>"+stud.getFname()+"</h1>");
            out.println("</body>");
            out.println("</html>");

        } finally {
            out.close();
        }
	}

}
