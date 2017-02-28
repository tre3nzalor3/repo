


<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <style>
        .item >* {
            margin-top: 20px;
        }
        .value {
            font-size: 20px;
        }
        
        .title .value {
            font-size: 24px;
        }
    </style>
    <body>


        <div class="row">
            <div class="col-md-6 col-md-offset-3">

                <div class='item'>
                    <div class='title'>
                        <div>Tytuł wydarzenia:</div>
                        <div class="value">${sessionScope.EventName}</div>
                    </div>
                    <div class='date'>
                        <div>Data:</div>
                        <div class="value">${sessionScope.EventDescription}</div>
                    </div>
                    <div class='desc'>
                        <div>Opis:</div>
                        <div class="value">${sessionScope.EventData}</div>
                    </div>
                </div>

                <br>

                <form action="ListaStudentow" method="POST">
                    <input type="submit" value="Lista zapisanych gości" class="btn btn-default" />
                </form> 


            </div>
        </div>

    </body>
</html>
