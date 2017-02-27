/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import newpackage.Events;
import connBAZA.EventsDao;
import javax.servlet.annotation.WebServlet;
/**
 *
 * @author sienki
 */
@WebServlet(description = "go to edit event page", urlPatterns = { "/EditEventPage" })
public class EditEventPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			EventsDao EventsDAO = new EventsDao();
			String id = request.getParameter("value");
			Events events = EventsDAO.getEventsById(id);
			HttpSession session = request.getSession();
                        session.setAttribute("EventData", events.getData());
                        session.setAttribute("EventDescription", events.getOpis());
                        session.setAttribute("EventName", events.getTytul());
			session.setAttribute("EventID", events.getId());
			
                        

			session.setAttribute("content", "EdycjaEventow.jsp");
			response.sendRedirect("AdminIndex.jsp");
		
	}
}
