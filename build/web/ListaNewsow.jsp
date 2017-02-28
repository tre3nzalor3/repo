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
    <style>
        .header {
            text-align: center;
        }
        .news-list {
            margin-top: 25px;
        }
        .news .title {
            font-size: 20px;
            margin-left: 5px;
            margin-bottom: 10px;
        }
    </style>
    <body>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h2 class='header'> Newsy </h2>
                <div class='news-list'>
                    <%
                        NewsDao Newsy = new NewsDao();
                        List<News> news = Newsy.getNewsList();

                        for (News News : news) {
                    %>
                    <div class='news'>
                        <div class='title'><%=News.getTytul()%></div>
                        <div class='content well well-sm'><%=News.getOpis()%></div>

                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>

    </body>
</html>
