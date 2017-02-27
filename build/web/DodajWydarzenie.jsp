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
        
            
            <form action="DodajEvent" method="POST">
                <input type="submit" value="DodajWydarzenie" />
            </form> 
            
            
            <br>
            <br>
            
            Lista wydarzen:
            <br>
            <br>
             <%
	EventsDao Events = new EventsDao();
	List<Events> event = Events.getEventsList();
	
	for (Events Eventss : event) {
		%>
                <a href="EditEventPage?value=<%=Eventss.getId()%>" name="eventid"> 
                   
		<%=Eventss.getTytul()%> 
                
                </a>
                <br>
                
                <br>
                <form action="AddUserEvents" method = "POST"><input type="hidden" name="EventId" value="<%=Eventss.getId()%>"> <input type="submit" value="Dolacz"> </form>
                <br>
                ---------------------------------------------------------
                <br>
                <br>
	<%
	}
	%>
            
            
            
            
           </div>
        </div>
        
        
    </body>
</html>
