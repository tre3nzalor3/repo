<%-- 
    Document   : SeePorady
    Created on : 2017-02-22, 17:58:01
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
        
            
            <h3>${sessionScope.activityTytul}</h3>
            <h4>${sessionScope.activityOpis}</h4>
	
		<form action="SeeUserGame" method = "POST"><input type="hidden" name="gamessId" value="${sessionScope.gamesId}"> <input type="submit" value="Wroc do gry"> </form>
            
        
        </div>
        </div>
        
        
        
    </body>
</html>
