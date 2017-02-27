<%-- 
    Document   : WymianaPageFurther
    Created on : 2017-02-27, 22:07:18
    Author     : sienki
--%>

<%@page import="java.util.List"%>
<%@page import="newpackage.Games"%>
<%@page import="connBAZA.GamesDao"%>
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
            
            
            <h2>Lista użytkownik, którzy chcą się wymienić:</h2>
        <%
	GamesDao games3Dao = new GamesDao();
	List<Games> game = games3Dao.getGamesByUser2();
	
	for (Games games3 : game) {
		%>
                  
                Użytkownik: <%=games3.getTytul()%> <br>
                Gra: <%=games3.getOpis()%>
                
                <td>
		<form action="zzzz" method = "POST"><input type="hidden" name="subjectId" value="<%=games3.getId()%>"><input type="submit" value="Wymiana"></form>
		</td>
                <br>
	<%
	}
	%>
        
        </div>
        </div>
        
    </body>
</html>
