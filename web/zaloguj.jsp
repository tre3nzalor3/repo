<%-- 
    Document   : newjsp
    Created on : 2016-11-20, 23:47:41
    Author     : sienki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
 

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
      <a class="navbar-brand" href="home.jsp">Strona główna</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#">Home</a></li>
        <li><a href="#">Aktualności</a></li>
        <li><a href="#">Galeria</a></li>
        <li><a href="#">Baza gier</a></li>
        <li><a href="#">Poradnik</a></li>
        <li><a href="#">Kontakt</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logowanie</a></li>
      </ul>
    </div>
  </div>
</nav>
    
   
    
    
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            
            
                <form action="Login" method="POST"> 
  <div class="form-group">
    <label for="exampleInputEmail1">Nick</label>
    <input type="text"  class="form-control" name ="nickname" placeholder="Nick">
  </div>
                    
  <div class="form-group">
    <label for="exampleInputPassword1">Hasło</label>
    <input type="password"  class="form-control" name="password" placeholder="Hasło">
  </div>
               
  <button type="submit" class="btn btn-default">Logowanie</button>
  
  </form>
  <br>
  <br>
  Nie masz konta? Zarejestruj się.
  
  
  <br>
  <button  type="button" class="btn btn-default"><a href=regis.jsp>Rejestracja</button>
  <br/>
  
  
  
  
        </div>
</div>
    
  </body>
</html>