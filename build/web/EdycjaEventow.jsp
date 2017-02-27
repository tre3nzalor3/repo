


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
        
        
         Tytuł wydarzenia:    <h3>${sessionScope.EventName}</h3>
         Opis:    <h4>${sessionScope.EventDescription}</h4>
            
            
            
            
         <br>
            
             <form action="ListaStudentow" method="POST">
                <input type="submit" value="Lista zapisanych gości" />
            </form> 
            
            
             </div>
        </div>
        
    </body>
</html>
