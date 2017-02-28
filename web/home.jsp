<%-- 
    Document   : home
    Created on : 2016-11-21, 01:45:01
    Author     : sienki
--%>

<%@page import="newpackage.News"%>
<%@page import="connBAZA.NewsDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>



        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="home.jsp">Strona główna</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Aktualności</a></li>
                        <li><a href="#">Galeria</a></li>
                        <li><a href="#">Baza gier</a></li>
                        <li><a href="#">Poradnik</a></li>
                        <li><a href="#">Kontakt</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="zaloguj.jsp"><span class="glyphicon glyphicon-log-in"></span> Logowanie</a></li>
                    </ul>
                </div>
            </div>
        </nav>  

        <div class="row">
            <div class="col-md-6 col-md-offset-3">


                <h2>Gta V</h2>
                <p> Gra komputerowa, będąca jedenastą i najnowszą częścią serii Grand Theft Auto. Została wydana na konsole PlayStation 3 i Xbox 360 17 września 2013 roku przez firmę Rockstar Games. Akcja gry została umiejscowiona w fikcyjnym mieście Los Santos oraz w terenach pozamiejskich nazwanych Blaine County w stanie San Andreas, stworzonych na podstawie miasta Los Angeles i Kalifornii.
                </p>

                <p>
                    Grand Theft Auto V cieszy się wysoką popularnością na świecie wśród graczy wszystkich platform, z rekordową sprzedażą na konsole siódmej generacji, ze względu na wysoką jakość graficzną, grywalność oraz możliwości podczas swobodnej rozgrywki poza fabułą. Gra trafiła także do księgi rekordów Guinnessa w siedmiu kategoriach, z czego sześć dotyczy jej sprzedaży.
                <p/>
                <hr>

                <h2>Super Mario Bros</h2>
                <p>komputerowa gra platformowa wyprodukowana w 1985 roku przez Nintendo. Powstała ona w celu zdyskontowania popularności gry Mario Bros. z 1983 roku; początkowo wydano ją na konsoli Nintendo Entertainment System (ówcześnie konsola była znana pod nazwą „Famicom”, pod jaką ukazała się w Japonii). W Super Mario Bros. gracz przejmuje kontrolę nad hydraulikiem Mario, którego zadaniem jest ocalenie księżniczki Toadstool porwanej przez Bowsera. W przypadku gry wieloosobowej w poszukiwaniach Mario towarzyszy Luigi, sterowany przez drugiego gracza.</p>

                <p>
                    Super Mario Bros., stworzona w dużej mierze przez Shigeru Miyamoto, odniosła sukces komercyjny, spowodowany jej sprzedażą wraz z konsolą Nintendo Entertainment System. Była następnie adaptowana na liczne późniejsze konsole Nintendo, między innymi na Game Boy Advance oraz na Nintendo 3DS.
                </p>

                <hr>

                <h2>Outlast</h2>
                <p>Gra komputerowa z gatunku survival horror przedstawiona w perspektywie pierwszoosobowej, stworzona i wydana przez kanadyjskie studio Red Barrels. Światowa premiera odbyła się 4 września 2013 roku.

                    W październiku 2014 jeden z pracowników wówczas dwunastoosobowego studia Red Barrels potwierdził rozpoczęcie prac nad sequelem noszącym tytuł Outlast 2.</p>


                <hr>


                --------------------------------
                <%
                    NewsDao Newsy = new NewsDao();
                    List<News> news = Newsy.getNewsList();

                    for (News News : news) {
                %>
                <%=News.getTytul()%> 
                <br>
                <%=News.getOpis()%>
                <br>
                <%
                    }
                %>


            </div>
        </div>


    </body>
</html>
