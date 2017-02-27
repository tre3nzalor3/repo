<%-- 
    Document   : AddEvent
    Created on : 2017-02-21, 10:00:22
    Author     : sienki
--%>

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
        
            <form action="AddEventsFurther" method="POST">
            
            
        
    <label for="exampleInputTitle">Tytuł:</label>
    <input type="text" class="form-control" name="Tytul" >
  
    <label for="exampleInputTitle">Data:</label>
    <input type="text" class="form-control" name="Data" >    
            
            
  <label for="comment">Opis:</label>
 <!-- <textarea class="form-control" rows="5" id="comment"></textarea> -->
        <textarea class="form-control" rows="5" name="Opis"></textarea>

            
            <button type="submit" class="btn btn-primary btn-lg">Dodaj</button>
        
            </form>
            

            
            
            
            
            
         </div>
</div>
        
        
        
    </body>
</html>
