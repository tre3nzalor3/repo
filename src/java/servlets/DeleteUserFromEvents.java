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

import connBAZA.EventsDao;

/**
 *
 * @author sienki
 */
@WebServlet(description = "usun konto", urlPatterns = { "/DeleteUserFromEvents" })
public class DeleteUserFromEvents extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			String userId = request.getParameter("userId");
			String id = session.getAttribute("id").toString();
			
			EventsDao eventsDao = new EventsDao();
			eventsDao.deleteUserFromEvents(userId, id);
			
			response.sendRedirect("AdminIndex.jsp");
	}

}
