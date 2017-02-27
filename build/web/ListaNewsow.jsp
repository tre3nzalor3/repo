<%-- 
    Document   : ListaNewsow
    Created on : 2017-02-20, 02:31:13
    Author     : sienki
--%>
<%@ page import="connBAZA.NewsDao" %>
<%@ page import="connBAZA.UserDao" %>
<%@ page import="newpackage.News" %>
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
        
            <h4> Lista newsow: </h4>
            <br>
            
            <%
	NewsDao Newsy = new NewsDao();
	List<News> news = Newsy.getNewsList();
	
	for (News News : news) {
		%>
	Tytuł :	<%=News.getTytul()%> 
                <br>
        Treść wiadomości:        <%=News.getOpis()%>
                <br>
                <br>
                ------------------
                <br>
	<%
	}
	%>
            
            
            
        
        </div>
        </div>
        
    </body>
</html>
