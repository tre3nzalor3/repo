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
    <body>
        
       <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>
    
   <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="https://placehold.it/1200x400?text=A" alt="A">
        <div class="carousel-caption">
          <h3>Od graczy1</h3>
          <p>dla graczy1</p>
        </div>
      </div>

      <div class="item">
        <img src="https://placehold.it/1200x400?text=A" alt="A">
        <div class="carousel-caption">
          <h3>Od graczy2</h3>
          <p>dla graczy2</p>
        </div>
      </div>
    </div>
    
     <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
        
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
    
        
      <hr>
      
      <br>
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
