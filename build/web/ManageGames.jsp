<%-- 
    Document   : ManageGames
    Created on : 2017-02-22, 16:52:35
    Author     : sienki
--%>

<%@page import="newpackage.Porady" %>
<%@page import="connBAZA.PoradyDao" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .description {
            font-size: 17px;
            margin-bottom: 30px;
        }
        .porada-name {
            min-width: 200px;
        }
        .porada-row {
            height: 40px;
        }
    </style>
    <body>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">

                <h2>${sessionScope.gamesTytul}</h2>
                <div class='description'>${sessionScope.gamesOpis}</div>

                <table>
                    <%
                        PoradyDao poradyDao = new PoradyDao();
                        List<Porady> porady = poradyDao.getPoradyByGames(request.getSession().getAttribute("gamesId").toString());

                        for (Porady activity : porady) {
                    %>
                    <tr class="porada-row">
                        <td class="porada-name">
                            <%=activity.getTytul()%>
                        </td>
                        <td>
                            <form action="SeePorady" method = "POST"><input type="hidden" name="poradyId" value="<%=activity.getId()%>">
                                <input type="submit" value="Zobacz" class="btn btn-primary">
                            </form>
                        </td>
                        <td>
                            <form action="EditActivityPage" method = "POST"><input type="hidden" name="activityId" value="<%=activity.getId()%>">
                                <input type="submit" value="Edytuj" class="btn btn-primary">
                            </form>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table>
                <br>
                <table><tr>
                        <td>
                            <form action="AddPorady" method = "POST">
                                <input type="submit" value="Dodaj porady" class="btn btn-success">
                            </form>
                        </td>

                    </tr>
                </table>





            </div>
        </div>




    </body>
</html>
