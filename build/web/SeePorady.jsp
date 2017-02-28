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
    <style>
        .description {
            font-size: 17px;
            margin-bottom: 30px;
            margin-top: 22px;
            padding-top: 5px;
            padding-left: 10px;
            border-top: 1px solid rgba(0, 0, 0, 0.38);
        }
    </style>
    <body>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">


                <h3>${sessionScope.activityTytul}</h3>
                <div class='description'>${sessionScope.activityOpis}</div>

                <form action="SeeUserGame" method = "POST"><input type="hidden" name="gamessId" value="${sessionScope.gamesId}"> 
                    <input type="submit" value="Wroc do gry" class="btn btn-default">
                </form>


            </div>
        </div>



    </body>
</html>
