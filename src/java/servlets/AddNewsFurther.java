package servlets;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connBAZA.NewsDao;
import javax.servlet.annotation.WebServlet;
/**
 *
 * @author sienki
 */
@WebServlet("/AddNewsFurther")
public class AddNewsFurther extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		NewsDao newsy = new NewsDao();
		String tytul = request.getParameter("Tytul");
		String opis = request.getParameter("Opis");
		
		newsy.createNews(tytul,opis);
		session.setAttribute("content", "DodanoNewsa.jsp");
		response.sendRedirect("AdminIndex.jsp");
		
	}
}
