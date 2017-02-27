/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connBAZA.PoradyDao;
/**
 *
 * @author sienki
 */
@WebServlet(description = "add new porady to db", urlPatterns = { "/AddNewPorady" })
public class AddNewPorady extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String gamesId = session.getAttribute("gamesId").toString();
		String activityName = request.getParameter("name");
		String activityDescription = request.getParameter("opis");
		
		PoradyDao poradyDao = new PoradyDao();
		poradyDao.createPorady(activityName, activityDescription);
		String activityId;
		try {
			activityId = poradyDao.getPoradyIdByNameAndOpis(activityName, activityDescription);
			poradyDao.addPoradyToGames(gamesId, activityId);
			session.setAttribute("content", "ManageGames.jsp");
			response.sendRedirect("AdminIndex.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}
