<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="web.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>csi</title>
</head>
<style>
    body {
        background-image: url("aboutimg.jpg");
    }

    .carousel-item {
        margin-left: 317px;
        width: 1195px;
        height: 646px;

    }

    .photo_gallery {
        text-align: center;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .photo_gallery img {
        width: 700px;
        margin: 10px;
        height: 400px;
        border-radius: 20px;
        transition: all 0.3s ease-in-out;
        z-index: 20;
        box-shadow: 10px 10px 53px 0px rgba(0, 0, 0, 0.49);
    }

    .photo_container {
        width: 700px;
        height: 400px;
        margin: 20px auto;
        position: relative;
        overflow: hidden;
    }

    .photo_container:hover .overlay {
        opacity: 1;
        transform: scale(1);
    }

    .overlay {
        position: absolute;
        background-color: rgba(32, 30, 30, 0.7);
        width: 100%;
        height: 100%;
        top: 0;
        transform: scale(1.3);
        opacity: 0;
        transition: transform .4s ease 0s;
    }

    .overlay span {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        font-weight: bold;
        font-size: 5em;
        color: #fff;
        font-family: Sans-serif;
    }

    .photo_container img {
        transition: transform .8s ease;
    }

    .photo_container:hover img {
        transform: scale(1.1);
    }

    .photos_text {
        text-align: center;
        font-size: 18px;
    }
</style>

<body>

    <nav id="navbar" class="navbar">

        <img src="2.png" alt="Girl in a jacket">

        <div class="button-main">
            <div class="menu-items" id="menu-items">
                 <a href="NewFile.jsp" class="button">Home</a>
               
                
                <a href="about.jsp" class="button">Committee </a>
                <a href="archives2.jsp" class="button">Archives</a>
                <a href="logio.jsp" class="button">Login</a>
                <a href="team.jsp" class="button">About US </a>
                <a href="contact.jsp" class="button">Contact US</a>
            </div>
            <label class="menu-bar" id="menu-bar" for="toggle">&#9776</label>

        </div>

    </nav>
    <hr>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="casa.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="20220820_163352.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>...</h5>
                    <p>ATISS </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="casa.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="photos_text">Photo Gallery</div>
    <div class="photo_gallery">

        <div class="photo_container">
            <img src="GPScamera_12082022_312pm_7_.jpg" alt="" />
            <div class="overlay">
                <span>Hello.</span>
            </div>
        </div>


        <div class="photo_container">
            <img src="IMG_20220810_163116.jpg" alt="" />
            <div class="overlay">
                <span>Hello.</span>
            </div>
        </div>


        <div class="photo_container">
            <img src="casa.jpg" alt="" />
            <div class="overlay">
                <span>Hello.</span>
            </div>
        </div>


        <div class="photo_container">
            <img src="casa.jpg" alt="" />
            <div class="overlay">
                <span>Hello.</span>
            </div>
        </div>

    </div>
    </div>


    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <script src="myscripts.js"></script>
</body>

</html>