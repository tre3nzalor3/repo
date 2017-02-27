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
    <body>
       
        <div class="row">
        <div class="col-md-6 col-md-offset-3">
       
            
        <h4> Lista gości wydarzenia ${sessionScope.EventName}: </h4> 
        <br>
	
        
       
        
        
        <% 
            UserDao userDao = new UserDao();
            List<User> users = userDao.getEventsUserList(request.getSession().getAttribute("id").toString());
        
            for (User user : users){
                %>
                <form action="DeleteUserFromEvents" method = "POST"><%=user.getName()%> <%=user.getSurname()%><input type="hidden" name="userId" value="<%=user.getId()%>"> <input type="submit" value="Usun"> </form> 
                
            
        
                <%
                }
                %>
        </div>
        </div>
        
        
        
        
    </body>
</html>
