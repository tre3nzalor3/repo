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
        .header {
            text-align: center;
        }
        .news-list {
            margin-top: 25px;
        }
        .news {
            margin-bottom: 20px;
        }
        .news .title {
            font-size: 20px;
            margin-bottom: 10px;
        }
    </style>
    <body>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <form action="DodajEvent" method="POST">
                    <input type="submit" value="DodajWydarzenie" class='btn btn-success'/>
                </form> 

                <h2 class='header'> Wydarzenia </h2>
                <div class='news-list'>
                    <%
                        EventsDao Events = new EventsDao();
                        List<Events> event = Events.getEventsList();

                        for (Events Eventss : event) {
                    %>
                    <div class='news'>
                        <div class='title'>
                            <a href="EditEventPage?value=<%=Eventss.getId()%>" name="eventid"> 
                                <%=Eventss.getTytul()%> 
                            </a>
                        </div>
                        <form action="AddUserEvents" method = "POST"><input type="hidden" name="EventId" value="<%=Eventss.getId()%>"> 
                            <input type="submit" value="Dolacz" class="btn btn-default">
                        </form>

                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>




    </body>
</html>
