/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connBAZA.PoradyDao;
import connBAZA.UserDao;
import newpackage.Porady;
import newpackage.User;
/**
 *
 * @author sienki
 */
@WebServlet(description = "go to activity", urlPatterns = { "/SeePorady" })
public class SeePorady extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PoradyDao poradyDao = new PoradyDao();
		HttpSession session = request.getSession();
		String poradyId = request.getParameter("poradyId");
		Porady porady = poradyDao.getPoradyById(poradyId);
		UserDao userDao = new UserDao();
		User user = userDao.getUserById(session.getAttribute("gamesId").toString());
		session.setAttribute("activityOpis", porady.getOpis());
		session.setAttribute("activityTytul", porady.getTytul());
		session.setAttribute("activityId", porady.getId());
		session.setAttribute("content", "SeePorady.jsp");
	//	if(user.getRole().contains("student")){
	//	response.sendRedirect("StudentIndex.jsp");
	//	}
		if(user.getRole().contains("admin")){
			response.sendRedirect("AdminIndex.jsp");
		}
	}
}
