<%-- 
    Document   : news
    Created on : 2016-11-21, 09:30:50
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
        
        
        
        <div class="row">
        <div class="col-md-6 col-md-offset-3">
        
            <br>   
            <form action="AddNews" method="POST">
        <button type="submit" class="btn btn-primary btn-lg btn-block">Dodaj newsa</button>
            </form>
            <br>
            
            <form action="ShowNews" method="POST">
        <button type="submit" class="btn btn-default btn-lg btn-block">Przejrzyj listę wszystkich gier </button>
            </form>
        
         </div>
</div>
        
    </body>
</html>
