<%-- 
    Document   : GamesViewPage
    Created on : 2017-02-22, 15:53:30
    Author     : sienki
--%>

<%@page import="newpackage.Games" %>
<%@page import="connBAZA.GamesDao" %>
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
            
            <h1> Wszystkie gry: </h1>
            
            <form action="ManageGames" method="POST">
          
       Gra: <select name="GamesId">
        	<%
          GamesDao gamesDao = new GamesDao();
        List<Games> games = gamesDao.getGamesList();

        for (Games game: games) {
	 %>
	 <option value="<%=game.getId()%>"><%=game.getTytul()%></option>
        <%
        }
        %>
	</select> <BR>
 		<br>
         <input type="submit" value="Wybierz" />
        </form>
        
        
        </div>
        </div>
        
        
    </body>
</html>
