<%-- 
    Document   : WymianaPageFurther
    Created on : 2017-02-27, 22:07:18
    Author     : sienki
--%>

<%@page import="java.util.List"%>
<%@page import="newpackage.Games"%>
<%@page import="connBAZA.GamesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .item {
            display: flex;
        }
        .name {
            margin-right: 10px;
        }
        .value {
           font-size: 16px;
        }
    </style>
    <body>


        <div class="row">
            <div class="col-md-6 col-md-offset-3">


                <h2>Użytkownicy, którzy chcą się wymienić:</h2>
                <%
                    GamesDao games3Dao = new GamesDao();
                    List<Games> game = games3Dao.getGamesByUser2();

                    for (Games games3 : game) {
                %>
                
                <div class="user item">
                    <div class="name">
                        Użytkownik:
                    </div>
                    <div class="value">
                        <%=games3.getTytul()%>
                    </div>
                </div>
                <div class="game item">
                    <div class="name">
                        Gra:
                    </div>
                    <div class="value">
                        <%=games3.getOpis()%>
                    </div>
                </div>

                <form action="zzzz" method = "POST">
                    <input type="hidden" name="subjectId" value="<%=games3.getId()%>">
                    <input type="submit" value="Wymiana" class="btn btn-primary">
                </form>
                <br>
                <%
                    }
                %>

            </div>
        </div>

    </body>
</html>
