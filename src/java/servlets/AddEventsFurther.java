package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connBAZA.EventsDao;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author sienki
 */
@WebServlet("/AddEventsFurther")
public class AddEventsFurther extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		EventsDao event = new EventsDao();
		String tytul = request.getParameter("Tytul");
		String opis = request.getParameter("Opis");
		
		event.createEvents(tytul,opis);
		session.setAttribute("content", "DodanoNewsa.jsp");
		response.sendRedirect("AdminIndex.jsp");
		
	}
}
