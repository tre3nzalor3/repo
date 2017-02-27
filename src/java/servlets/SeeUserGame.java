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

import newpackage.Games;
import newpackage.User;
import connBAZA.GamesDao;
import connBAZA.UserDao;
/**
 *
 * @author sienki
 */
@WebServlet("/SeeUserGame")
public class SeeUserGame extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GamesDao gamesDao = new GamesDao();
		HttpSession session = request.getSession();
		String gamesId = request.getParameter("gamessId");
		Games games = gamesDao.getGamesById(gamesId);
		UserDao userDao = new UserDao();
		User user = userDao.getUserById(session.getAttribute("gamesId").toString());
		session.setAttribute("gamesOpis", games.getOpis());
		session.setAttribute("gamesTytul", games.getTytul());
		session.setAttribute("gamesId", games.getId());
	//	if(user.getRole().contains("student")){
	//		session.setAttribute("content", "SeeSubject.jsp");
	//	response.sendRedirect("StudentIndex.jsp");
	//	}
		if(user.getRole().contains("admin")){
			session.setAttribute("content", "ManageGames.jsp");
			response.sendRedirect("AdminIndex.jsp");
		}
	}
}
