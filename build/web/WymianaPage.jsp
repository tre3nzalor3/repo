<%-- 
    Document   : WymianaPage
    Created on : 2017-02-22, 18:30:46
    Author     : sienki
--%>
<%@ page import="connBAZA.UserDao" %>
<%@ page import="connBAZA.GamesDao" %>
<%@ page import="newpackage.Games" %>
<%@ page import="newpackage.User" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="row">
        <div class="col-md-6 col-md-offset-3">
        <h1>moje gry</h1>
        
        <br>
	<table>
	<%
	GamesDao gamesDao = new GamesDao();
	List<Games> games = gamesDao.getGamesByUser(request.getSession().getAttribute("id").toString());
	
	for (Games game : games) {
		%>
		<tr>
		<td>
		<%=game.getTytul()%>
		</td>
		<td>
		<form action="SeeStudentSubject" method = "POST"><input type="hidden" name="subjectId" value="<%=game.getId()%>"><input type="submit" value="Zobacz"></form>
		</td>
		<td>
		<form action="DeleteUserGames" method = "POST"><input type="hidden" name="gameId" value="<%=game.getId()%>"> <input type="submit" value="Usuń grę"> </form>
		</td>
		</tr>
	<%
	}
	%>
	</table>
        
        <h3>Pozostałe przedmioty:</h3>
	<br>
	<%
	GamesDao games2Dao = new GamesDao();
	List<Games> games2 = games2Dao.getNotGamesByUser(request.getSession().getAttribute("id").toString());
	
	for (Games game : games2) {
		%>
		<form action="AddUserGames" method = "POST"><%=game.getTytul()%><input type="hidden" name="gameId" value="<%=game.getId()%>"> <input type="submit" value="Dodaj grę"> </form> 
	<%
	}           
        
	%>
	<br>
        <br>
        <br>
        -------------------
        <br>
        <%
	GamesDao games3Dao = new GamesDao();
	List<Games> game = games3Dao.getGamesByUser2();
	
	for (Games games3 : game) {
		%>
                <%=games3.getId()%>"  
		<%=games3.getTytul()%>"
                <%=games3.getOpis()%>"
                </a>
                <br>
      
                <br>
                <br>
	<%
	}
	%>
        
        
        </div>
        </div>
        
    </body>
</html>
