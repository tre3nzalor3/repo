<%-- 
    Document   : StronaStartowa
    Created on : 2017-02-19, 20:15:07
    Author     : sienki
--%>

<%@page import="newpackage.News"%>
<%@page import="java.util.List"%>
<%@page import="connBAZA.NewsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <style>
        .image {
            width: 100%;
            height: 200px;
            background-image: url("http://tallypress.com/wp-content/uploads/2016/03/top-10-board-games-cafes-in-Malaysia.jpg");
        }
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

        <div class="image">
            ds
        </div>

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
