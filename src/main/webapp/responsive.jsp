<%--
  Created by IntelliJ IDEA.
  User: Armin
  Date: 9-2-2018
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:500" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        $(window).on('scroll', function () {
            if ($(window).scrollTop()){
                $('nav').addClass('black');
            }else {
                $('nav').removeClass('black');
            }
        })
    </script>
</head>
<body>
    <div class="wrapper">
        <nav>
            <div class="logo">LOGO</div>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contact</a></li>
                <li><a class="active" href="#">Log In</a></li>
            </ul>
        </nav>
        <section class="sec1"></section>
        <section class="content">
            <p>Mohammad ibn Ismail al-Bukhari of Al-Boekhari (Arabisch: البخاري) of imam Bukhari (Buchara, 810 – Samarkand 870) was een soennitisch-islamitische
            schriftgeleerde van Perzische afkomst. Hij is voornamelijk bekend om zijn compilatie van de Hadith, die Sahih al-Bukhari wordt genoemd.
            Vanwege de zorgvuldige wijze waarop Boekhari de isnad (mondelinge overleveringen) beoordeelde, wordt zijn werk door de meeste soennieten als het meest
            geloofwaardige van alle versies van de Hadith gezien. Het geldt onder moslims als de belangrijkste bron over het leven en de boodschap van Mohammed,
            na de Koran.</p>
            <p>Boekhari werd geboren in Buchara in het jaar 810 tijdens het kalifaat van de Abbasiden. Zijn vader was een student van Malik ibn Anas,
            een geleerde uit Medina. Op tienjarige leeftijd begon Boekhari overleveringen over de profeet Mohammed en zijn eerste volgelingen te bestuderen.
            Hij was al snel in staat om zijn eigen docenten te verbeteren. Als jongeman reisde hij langs de belangrijkste centra van kennis in de islamitische wereld,
            van Khorasan tot Egypte. Op zijn tocht verzamelde hij zo veel mogelijk overleveringen. Hij zou er in totaal ongeveer 600.000 gehoord hebben.</p>
            <p>Boekhari zou er zestien jaar over hebben gedaan om zijn verzameling te filteren en een boek samen te stellen dat alleen de meest betrouwbare overleveringen bevatte.
            Dit werk, al-Jamic al-Sahih, is eigenlijk onderverdeeld in 97 andere boeken en 3450 hoofdstukken (2762 zonder herhalingen). Het boek behoort tot het musannaftype;
            hierbij worden de Hadith georganiseerd volgens thema. Deze thema’s gaan onder andere over de vijf zuilen van de islam, geneeskunde en het huwelijk.
                Samen met het gelijknamige boek van Moslim ibn al-Hajjaj behoort Boekhari's werk tot de al-Sihah al-Sitta, de voor soennieten belangrijkste zes versies van de Hadith.</p>
        </section>
    </div>

</body>
</html>
