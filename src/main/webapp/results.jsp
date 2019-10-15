<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Armin
  Date: 8-3-2018
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Armin Dedic</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/DnaValidation.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="img/test4.PNG"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Portofolio</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="img/mountains.png">
            <div class="carousel-caption">
                <h1>Restriction enzymecutter</h1>
                <br>
                <button type="button" class="btn btn-default">Get Started</button>
            </div>
        </div> <!--- End Active-->
        <div class="item">
            <img src="img/snow.png">
        </div>
        <div class="item">
            <img src="img/red.png">
        </div>
    </div>
    <!--- Start Slider Controls-->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div> <!--- End Slider -->

<div class="container text-center">
    <h2>Workflow</h2>
    <div class="row">
        <div class="col-sm-4">
            <img src="img/dnalog.png" id="icon">
            <h4>DNA (i.e. ATCG)</h4>
        </div>
        <div class="col-sm-4">
            <img src="img/enzyme.png" id="icon">
            <h4>Restriction Enzymes (i.e. BamhI: GGATCC)</h4>
        </div>
        <div class="col-sm-4">
            <img src="img/results.png" id="icon">
            <h4>Results (i.e. fragments, molweight and GC%)</h4>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h4>Restriction enzymecutter summary</h4>
            <p>Een restrictie-enzym is een enzym dat een specifieke DNA-volgorde herkent en op die plek de DNA-strengen doorknipt.
                Elk restrictie-enzym heeft een eigen specifieke nucleotidenvolgorde, meestal 4 tot 8 nucleotiden lang, die herkend wordt.
                Vaak zijn de volgordes ook palindromisch: de sequentie is in 5’-3’-richting hetzelfde op beide strengen.
                Op een plek waar DNA opengeknipt is, kan een ander stuk DNA kunstmatig ingevoegd worden.
                Dit gebeurt met behulp van het enzym DNA-ligase dat de uiteinden van het opengeknipte DNA en het in te voegen fragment aan elkaar plakt.
                Op deze manier is het mogelijk om recombinant DNA te maken. Restrictie-enzymen zijn ontdekt in bacteriën in de jaren 70 van de 20ste eeuw.
                Ze functioneren bij bacteriën als bescherming tegen injectie van virus-DNA. Hun ontdekking leidde tot de
                ontwikkeling van genetische modificatie.</p>
        </div>
        <div class="col-md-6">
            <img src="img/rs.jpg" class="img-responsive">
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <h4><a href="#hidden" data-toggle="collapse">See the results?</a></h4>
        <div id="hidden" class="collapse">
            <h4>${requestScope.fragments}</h4>
            <h4>${requestScope.frag}</h4>
            <h4>${requestScope.gcPerc}</h4>
            <h4>${requestScope.molWeight}</h4>
        </div>
    </div>
</div>

<footer class="container-fluid text-center">
    <div class="row">
        <div class="col-sm-4">
            </body>
            </html>

            <h3>Contact Us</h3>
            <br>
            <h4>a.dedic@st.hanze.nl</h4>
        </div>
        <div class="col-sm-4">
            <h3>Connect</h3>
            <a href="#" class="fa fa-facebook"></a>
            <a href="#" class="fa fa-twitter"></a>
            <a href="#" class="fa fa-google"></a>
            <a href="#" class="fa fa-linkedin"></a>
            <a href="#" class="fa fa-youtube"></a>
        </div>
        <div class="col-sm-4">
            <img src="img/windows.png" class="icon">
        </div>
    </div>
</footer>
</body>
</html>
