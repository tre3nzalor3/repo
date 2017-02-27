<%-- 
    Document   : regis
    Created on : 2016-11-21, 02:40:36
    Author     : sienki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Strona główna</a>
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
        <li class ="active"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logowanie</a></li>
      </ul>
    </div>
  </div>
</nav>
        
        
         <div class="row">
        <div class="col-md-6 col-md-offset-3">
            
            <form action="Register" method="POST">
  <div class="form-group">
    <label for="exampleInputn1">Nick</label>
    <input type="text" class="form-control" name="nickname" placeholder="Nick">
  </div>
                
  <div class="form-group">
    <label for="exampleInputPassword1">Hasło</label>
    <input type="password" class="form-control" name="password" placeholder="Hasło">
  </div>
                
  <div class="form-group">
    <label for="exampleInputPassword1">Hasło2</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Potwierdz hasło">
  </div>
                
   <div class="form-group">
    <label for="exampleInputn1">Imię</label>
    <input type="text" class="form-control" name="name" placeholder="Imię">
  </div> 
                
   <div class="form-group">
    <label for="exampleInputn1">Nazwisko</label>
    <input type="text" class="form-control" name="surname" placeholder="Nazwisko">
  </div>             
                
                <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="text" class="form-control" name="email" placeholder="Email">
  </div>
  
  <br>
  <button type="submit" class="btn btn-default">Zarejestruj</button>
  <br>
  <br>
</form>
        </div>
</div>
        
        
        
        
    </body>
</html>
