<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="web.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>csi</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Arimo:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap');

        * {
            margin: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #6a9ac4;
        }

        #contact {
            background-color: #6a9ac4;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .contact-box {
            width: clamp(100px, 90%, 1000px);
            margin: 80px 50px;
            display: flex;
            flex-wrap: wrap;
        }

        .contact-form-wrapper {
            width: 50%;
            padding: 8% 5% 10% 5%;
        }




        .contact-form-wrapper {
            background-color: #ffffff8f;
            border-radius: 0 10px 10px 0;
        }

        @media only screen and (max-width: 800px) {

            .contact-links,
            .contact-form-wrapper {
                width: 100%;
            }

            .contact-links {
                border-radius: 10px 10px 0 0;
            }

            .contact-form-wrapper {
                border-radius: 0 0 10px 10px;
            }
        }

        @media only screen and (max-width: 400px) {
            .contact-box {
                width: 95%;
                margin: 8% 5%;
            }
        }

        h2 {
            font-family: 'Arimo', sans-serif;
            color: #fff;
            font-size: clamp(30px, 6vw, 60px);
            letter-spacing: 2px;
            text-align: center;
            transform: scale(.95, 1);
        }

        .links {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 50px;
        }

        .link {
            margin: 10px;
            cursor: pointer;
        }

        .link img {
            width: 45px;
            height: 45px;
            margin-left: 23px;
            margin-right: 23px;
            filter:
                hue-rotate(220deg) drop-shadow(2px 4px 4px #0006);
            transition: 0.2s;
            user-select: none;
        }

        .link img:hover {
            transform: scale(1.1, 1.1);
        }

        .link img:active {
            transform: scale(1.1, 1.1);
            filter:
                hue-rotate(220deg) drop-shadow(2px 4px 4px #222) sepia(0.3);
        }

        .form-item {
            position: relative;
        }

        .contact-box label,
        input,
        textarea {
            font-family: 'Poppins', sans-serif;
        }

        .contact-box label {
            position: absolute;
            top: 10px;
            left: 2%;
            color: #999;
            font-size: clamp(14px, 1.5vw, 18px);
            pointer-events: none;
            user-select: none;
        }

        input,
        textarea {
            width: 100%;
            outline: 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            padding: 12px;
            font-size: clamp(15px, 1.5vw, 18px);
        }

        input:focus+label,
        input:valid+label,
        textarea:focus+label,
        textarea:valid+label {
            font-size: clamp(13px, 1.3vw, 16px);
            color: #777;
            top: -20px;
            transition: all .225s ease;
        }

        .submit-btn {
            background-color: #fd917e;
            filter: drop-shadow(2px 2px 3px #0003);
            color: #fff;
            font-family: "Poppins", sans-serif;
            font-size: clamp(16px, 1.6vw, 18px);
            display: block;
            padding: 12px 20px;
            margin: 2px auto;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            user-select: none;
            transition: 0.2s;
        }

        .submit-btn:hover {
            transform: scale(1.1, 1.1);
        }

        .submit-btn:active {
            transform: scale(1.1, 1.1);
            filter: sepia(0.5);
        }

        .contact-link {
            background-color: #1f2e43;
            background:
                radial-gradient(circle at 55% 92%, #426691 0 12%, transparent 12.2%),
                radial-gradient(circle at 94% 72%, #426691 0 10%, transparent 10.2%),
                radial-gradient(circle at 20% max(78%, 350px), #263a53 0 7%, transparent 7.2%),
                radial-gradient(circle at 0% 0%, #263a53 0 40%, transparent 40.2%),
                #1f2e43;
            border-radius: 10px 0 0 10px;
        }

        @media only screen and (max-width: 312px) {
            iframe {
                width: 300px;
                height: 350px;
            }
        }

        @media only screen and (max-width: 800px) {
            h2 {
                font-size: clamp(40px, 10vw, 60px);
            }
        }

        @media only screen and (max-width: 400px) {
            h2 {
                font-size: clamp(30px, 12vw, 60px);
            }

            .links {
                padding-top: 30px;
            }

            .link img {
                width: 38px;
                height: 38px;
            }
        }
    </style>
</head>

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

    <div>
        <h2 class="contact-link">Contact US</h2>
        <section id="contact">
            <div class="contact-box">

                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3770.732104373433!2d72.98951561527117!3d19.07551268708827!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6cae0d8c5ab%3A0xbbf4481d662ca2d8!2sFr.%20Conceicao%20Rodrigues%20Institute%20of%20Technology!5e0!3m2!1sen!2sin!4v1664959353997!5m2!1sen!2sin"
                    width="500" height="675" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
                <div> </div>
                <div class="contact-form-wrapper">
                    <form>
                        <div class="form-item">
                            <input type="text" name="sender" required>
                            <label>Name:</label>
                        </div>
                        <div class="form-item">
                            <input type="text" name="email" required>
                            <label>College-Email:</label>
                            <div class="form-item">
                                <input type="tel" name="roll" required>
                                <label>Roll-No.:</label>
                            </div>
                            <div class="form-item">
                                <textarea class="" name="message" required></textarea>
                                <label>Message:</label>
                            </div>
                            <button class="submit-btn">Send</button>
                    </form>




                    <div class="links">
                        <div class="link">
                            <a href="https://www.linkedin.com/company/csi-it-fcrit/"><img
                                    src="https://i.postimg.cc/m2mg2Hjm/linkedin.png" alt="linkedin"></a>
                        </div>

                        <div class="link">
                            <a><img src="https://i.postimg.cc/NjLfyjPB/email.png" alt="email"></a>
                        </div>
                    </div>


                </div>
            </div>

            <script src="myscripts.js"></script>
</body>

</html>