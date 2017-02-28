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
    <style>
        .foo {
            height: 40px;
        }
        .ddd {
            min-width: 150px;
        }
        .fff {
            margin-right: 50px;
        }
        .not-for-change {
            margin-top: 50px;
        }
    </style>
    <body>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h2>Gry do wymiany:</h2>

                <br>
                <table>
                    <%
                        GamesDao gamesDao = new GamesDao();
                        List<Games> games = gamesDao.getGamesByUser(request.getSession().getAttribute("id").toString());

                        for (Games game : games) {
                    %>
                    <tr class="foo">
                        <td class="ddd">
                            <%=game.getTytul()%>
                        </td>
                        <td>
                            <form action="SeeStudentSubject" method = "POST">
                                <input type="hidden" name="subjectId" value="<%=game.getId()%>">
                                <input type="submit" value="Zobacz" class="btn btn-primary">
                            </form>
                        </td>
                        <td>
                            <form action="DeleteUserGames" method = "POST">
                                <input type="hidden" name="gameId" value="<%=game.getId()%>"> 
                                <input type="submit" value="Usuń grę" class="btn btn-primary">
                            </form>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table>

                <h2 class="not-for-change">Gry NIE do wymiany:</h2>
                <br>
                <%
                    GamesDao games2Dao = new GamesDao();
                    List<Games> games2 = games2Dao.getNotGamesByUser(request.getSession().getAttribute("id").toString());

                    for (Games game : games2) {
                %>
                <form action="AddUserGames" method = "POST" class="foo">
                    <span class="fff">
                        <%=game.getTytul()%>
                    </span>
                    <input type="hidden" name="gameId" value="<%=game.getId()%>">
                    <input type="submit" value="Dodaj grę" class="btn btn-primary"> </form> 
                    <%
                        }

                    %>

            </div>
        </div>

    </body>
</html>
