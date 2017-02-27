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
import connBAZA.GamesDao;
/**
 *
 * @author sienki
 */
@WebServlet(description = "manage games", urlPatterns = { "/ManageGames" })
public class ManageGames extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		GamesDao gamesDao = new GamesDao();
		HttpSession session = request.getSession();
		String gamesId = request.getParameter("GamesId");
		Games games = gamesDao.getGamesById(gamesId);
		session.setAttribute("gamesOpis", games.getOpis());
		session.setAttribute("gamesTytul", games.getTytul());
		session.setAttribute("gamesId", games.getId());
		
		session.setAttribute("content", "ManageGames.jsp");
		response.sendRedirect("AdminIndex.jsp");
}
}
