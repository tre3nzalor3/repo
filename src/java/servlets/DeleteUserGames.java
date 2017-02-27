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

import connBAZA.GamesDao;
/**
 *
 * @author sienki
 */
@WebServlet(description = "delete games", urlPatterns = { "/DeleteUserGames" })
public class DeleteUserGames extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		GamesDao gamesDao = new GamesDao();
		String gameId = request.getParameter("gameId");
		String userId = session.getAttribute("id").toString();
		
		gamesDao.deleteUserFromGames(userId,gameId);
		response.sendRedirect("AdminIndex.jsp");
	}

}
