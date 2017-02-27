<%-- 
    Document   : AddPoradyPage
    Created on : 2017-02-22, 17:22:58
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
      
            
        <form action="AddNewPorady" method="POST">
         Nazwa:<input type="text" name="name" value="" /><BR>     
         Opis:<textarea rows="10" cols="39" name="opis"></textarea><BR> 
         <input type="submit" value="Dodaj" />
        </form>
            
        </div>
        </div>
        
        
    </body>
</html>
