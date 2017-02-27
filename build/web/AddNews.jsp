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
        
            <form action="AddNewsFurther" method="POST">
            
            
        <div class="form-group">
    <label for="exampleInputTitle">Tytuł:</label>
    <input type="text" class="form-control" name="Tytul" >
  </div>
        
            
            <div class="form-group">
  <label for="comment">Opis:</label>
 <!-- <textarea class="form-control" rows="5" id="comment"></textarea> -->
        <textarea class="form-control" rows="5" name="Opis"></textarea>
</div>
            
            <button type="submit" class="btn btn-primary btn-lg">Dodaj</button>
        
            </form>
            

            
            
            
            
            
         </div>
</div>
        
    </body>
</html>
