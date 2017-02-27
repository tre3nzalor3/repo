/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import newpackage.User;
import connBAZA.UserDao;
/**
 *
 * @author sienki
 */
@WebServlet(description = "login servlet", urlPatterns = { "/Login" })
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDao userDao = new UserDao();
		
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		
		try {
			String id = userDao.checkLoginValid(nickname, password);
			if(!"-1".equals(id)){
				User user = userDao.getUserById(id);
				session.setAttribute("userNickname", user.getNickname());
				session.setAttribute("userName", user.getName());
				session.setAttribute("userSurname", user.getSurname());
				session.setAttribute("userEmail", user.getEmail());
				session.setAttribute("id",id);
				session.setAttribute("userRole", user.getRole());
			
			//	if(user.getRole().contains("gracz")){
			//		session.setAttribute("content", "HelloGracz.jsp");
			//		response.sendRedirect("GraczIndex.jsp");
			//	}
				if(user.getRole().contains("admin")){
					session.setAttribute("content", "StronaStartowa.jsp");
					response.sendRedirect("AdminIndex.jsp");
				}
			}
			else
			{
				session.setAttribute("id", id);
				response.sendRedirect("zaloguj.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
