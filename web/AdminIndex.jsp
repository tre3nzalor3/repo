<%-- 
    Document   : AdminIndex
    Created on : 2017-02-17, 03:16:42
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
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
    </head>
    
    
    
    <body>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        
        
    
    
   
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="AdminIndex.jsp">Strona główna</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        
        
      <ul class="nav navbar-nav"> 
        <li><a href="HomePage">Home</a></li>
        <li><a href="NewsPage">Aktualności</a></li>
        <li><a href="EventPage">Wydarzenia</a></li>
        <li><a href="GamesPage">Baza gier</a></li>
        <li><a href="WymianaPage">Moje gry</a></li>
        <li><a href="WymianaPageFurther">Wymiana gier</a></li>
        <li><a href="KontaktPage">Kontakt</a></li>
      </ul> 
        
        
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home.jsp"><span class="glyphicon glyphicon-log-in"></span> Wyloguj</a></li>
      </ul>
    </div>
  </div>
</nav>  
     
    
    Uzytkownika indeks: ${sessionScope.id}
    <!-- to tylko po to jak bootstrap nie dzialal = wtedy zmiana z doPost na doGet w /servlets
    
    <form action="HomePage" method="POST">
        <input type="submit" value="Home" />
    </form>
    
    <form action="NewsPage" method="POST">
        <input type="submit" value="Aktualnosci" />
    </form>
    
    <form action="EventPage" method="POST">
        <input type="submit" value="Wydarzenia" />
    </form>
    
    <form action="NewsPage" method="POST">
        <input type="submit" value="Baza Gier" />
    </form>
    
    <form action="NewsPage" method="POST">
        <input type="submit" value="Poradnik" />
    </form>
    
    <form action="KontaktPage" method="POST">
        <input type="submit" value="Kontakt" />
    </form>
        
    -->
    
    
    <div class="row">
        
        
            <jsp:include page="${sessionScope.content}" flush="true" />
            
            
        
            
      
        
        
</div>
        
        
    </body>
</html>
