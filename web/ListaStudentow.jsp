<%-- 
    Document   : ListaStudentow
    Created on : 2017-02-22, 03:07:37
    Author     : sienki
--%>
<%@ page import="connBAZA.NewsDao" %>
<%@ page import="connBAZA.UserDao" %>
<%@ page import="connBAZA.EventsDao" %>
<%@ page import="newpackage.News" %>
<%@ page import="newpackage.User" %>
<%@ page import="newpackage.Events" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .user-data {
            margin-right: 50px;
            font-size: 16px;
        }
    </style>
    <body>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">


                <h2>Goście wydarzenia ${sessionScope.EventName}: </h2> 
                <br>

                <%
                    UserDao userDao = new UserDao();
                    List<User> users = userDao.getEventsUserList(request.getSession().getAttribute("id").toString());

                    for (User user : users) {
                %>
                <form action="DeleteUserFromEvents" method = "POST">
                    <span class="user-data"><%=user.getName()%> <%=user.getSurname()%></span>
                    <input type="hidden" name="userId" value="<%=user.getId()%>">
                    <input type="submit" value="Usun" class="btn btn-danger"> </form> 



                <%
                    }
                %>
            </div>
        </div>




    </body>
</html>
