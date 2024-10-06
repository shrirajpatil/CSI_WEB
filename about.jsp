
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    body {
        background-color: black;
    }

    .about-body {
        margin: 0;

        padding: 2rem;
        font-family: Inter, sans-serif;
    }

    .about-body a.link {
        border: none;
        position: absolute;
        bottom: 1rem;
        width: auto;
        right: 1rem;
    }

    .about-body a {
        color: rgba(255, 255, 255, 0.5);
        font-size: 1rem;
        font-family: Inter, sans-serif;
        border-top: 1px solid rgba(255, 255, 255, 0.2);
        display: block;
        font-size: 1.25rem;
        padding: 1rem 1.5rem;
        float: left;
        width: 100%;
    }

    #dark-light-container {
        float: left;
        box-sizing: border-box;
        position: relative;
        padding: 2rem;
        width: 50%;
        text-align: center;

    }

    .white-container {
        background: white;
    }

    .black-container {
        background: black;
    }

    .card {
        box-shadow: none;
        backface-visibility: visible;
        background: transparent;
        font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Open Sans, Helvetica Neue, sans-serif;
        transform-style: preserve-3d;
        padding: 0;
        height: auto;
        margin: 0 2rem 4rem 0;
        width: 18rem;
        height: 25rem;
        float: left;
        transition: all 0.2s ease-out;
        border: none;
        letter-spacing: 1px;
    }

    .Info,
    .back {
        background: rgba(0, 0, 0, 0.1);
        font-size: 1rem;
        position: absolute;
        top: 1rem;
        right: 1rem;
        padding: 0.5rem 0.75rem;
        border-radius: 100px;
        line-height: 1rem;
        cursor: pointer;
        transition: all 0.1s ease-out;
    }

    .Info,
    .back {
        background: #1b29ed;
        box-shadow: 0 2px 20px #0b1485;
    }

    .inner-card-backface .image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        border-radius: 14px;
        height: 100%;
        transform: rotateY(180deg);
        background-size: auto 102%;
        background-position: -2px -5px;
    }

    .back {
        top: auto;
        background: #2d2d62;
        bottom: 1rem;
    }

    .Info:hover {
        background: rgba(0, 0, 0, 0.3);
    }

    .Info:hover,
    .back:hover {
        background: #0f1cc5;
    }

    .inner-card-backface {
        transform: rotateX(0) rotateY(0deg) scale(1) translateZ(-4px);
        border-radius: 14px;
        background: linear-gradient(45deg, #0b0b2a, #0b0b2a);
        position: absolute;
        top: 0;
        color: white;
        padding: 2rem;
        box-sizing: border-box;
        transition: all 0.15s ease-out;
        will-change: transform, filter;
        left: 0;
        width: 100%;
        height: 100%;
    }

    .card.Infoped {
        transform: rotateY(180deg);
    }

    .card .Info-inner-card {
        transform: rotateY(180deg);
        position: absolute;
        top: 0;
        padding: 2rem 1.5rem;
        box-sizing: border-box;
        left: 0;
        width: 100%;
        height: 100%;
    }

    .Info-inner-card h3 {
        font-size: 1.25rem;
        margin-top: 0;
    }

    .Info-inner-card p {
        color: rgba(255, 255, 255, 0.6);
        font-weight: 400;
        line-height: 1.5rem;
    }

    .card .inner-card {
        font-size: 2rem;
        color: white;
        padding: 1rem 2rem;
        line-height: 3rem;
        will-change: transform, filter;
        float: none;
        background: black;
        background-size: calc(100% + 6px) auto;
        background-position: -3px -3px;
        margin: 0;
        transition: all 0.15s ease-out;
        height: auto;
        border-radius: 14px;
        box-sizing: border-box;
        overflow: hidden;
        display: block;
        margin: 0px auto;
        transform: rotateX(0deg) rotateY(0deg) scale(1);
        top: 0;
        height: 100%;
        filter: drop-shadow(0 15px 15px rgba(0, 0, 0, 0.3));
        font-weight: 500;
        perspective-origin: 0 0;
        letter-spacing: 0;
    }

    .card .glare {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        transition: all 0.1s ease-out;
        opacity: 0.6;
        pointer-events: none;
        height: 100%;
        border-radius: 14px;
        z-index: 9999;
        mix-blend-mode: hard-light;
        background: radial-gradient(circle at 50% 50%, rgb(199 198 243), transparent);
    }

    .card .top-section {
        background: linear-gradient(45deg, hsl(0deg 58% 51%), hsl(249deg 100% 54%));
        position: absolute;
        top: 0;
        left: 0;
        border-radius: 14px 14px 0 0;
        width: 100%;
        height: 35%;
        z-index: 99;
    }

    .card .top-section img {
        width: 140px;
        height: 140px;
        margin-left: 65px;
        margin-top: 65px;
        border-radius: 100px;
    }

    .user-2 .top-section {
        background: linear-gradient(45deg, hsl(224deg 58% 51%), hsl(166deg 100% 54%));
    }

    .card .user-icon {
        position: absolute;
        left: calc(50% - 64px);
        top: calc(35% - 72px);
        z-index: 99;
    }

    .card .user-icon img {
        width: 128px;
        height: 128px;
        box-shadow: 0 4px 9px rgba(0, 0, 0, 0.2);
        border-radius: 100px;
        transform: scale(1);
        transition: all 0.1s ease-out;
    }

    .card .user-icon img:hover {
        transform: scale(1.08);
    }

    .card .glare {
        opacity: 0;
    }

    .card.animated .glare {
        opacity: 0.3;
    }

    .card.animated.user .glare {
        opacity: 0.15;
    }

    .card .name {
        color: white;
        font-size: 1.5rem;
    }

    .card .bottom-section {
        position: absolute;
        top: 35%;
        left: 0;
        background: #0b0b2a;
        width: 100%;
        height: 65%;
        box-sizing: border-box;
        padding-top: 64px;
        text-align: center;
    }

    .bottom-section .area {
        font-size: 1rem;
        opacity: 0.4;
        display: block;
        line-height: 1rem;
    }

    .cards_container_flex {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .buttons {
        float: left;
        width: calc(100% - 2rem);
        position: absolute;
        bottom: 1.5rem;
        display: flex;
        align-items: center;
        justify-content: center;
        left: 1rem;
    }

    .buttons>a {
        border: none;
        width: auto;
        background: #b2b2ff;
        padding: 0;
        font-size: 0.875rem;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        line-height: 1rem;
        transition: all 0.1s ease-out;
        transform: scale(1);
        padding: 0.75rem 1rem;
        margin: 0 1rem 0 0;
        border-radius: 100px;
        text-decoration: none;
    }

    .buttons .main {
        background: #3d26e7;
    }

    .buttons>.main:hover {
        background: #614df1;
    }

    .buttons>a:hover {
        background: #494989;
    }

    .buttons svg {
        margin: 0 0.5rem 0 0;
    }

    .buttons {
        margin: 0;
    }

    @media screen and (max-width: 1000px) {
        #dark-light-container>div {
            width: 100%;
        }
    }


    .CSI_container1,
    .CSI_container2 {
        border-radius: 25px;
        display: flex;
        margin: 20px;
        background-color: #6046b9;
    }

    .CSI_container1:hover,
    .CSI_container2:hover {
        box-shadow: 8px 8px 20px 10px rgba(229, 223, 223, 0.4);
        margin-top: 10px;
        background-color: #8973d9;
    }


    .CSI_container img {
        width: 150px;
        height: 150px;
        /* border: 2px solid green; */
        margin: auto;
    }

    .CSI_info1 {
        /* border: 3px solid yellow; */
        margin: 40px;
        padding: 39px;

    }

    .CSI_info1,
    .CSI_info2 {
        text-align: center;
        font-size: 15px;
        font-weight: bold;
    }

    .CSI_info1:hover,
    .CSI_info2:hover {
        font-style: italic;

    }

    .CSI_info2 {
        /* border: 3px solid yellow; */
        margin: 40px;
        padding: 39px;
    }

    .navbar {
        background-color: black;
        /* :#d5f1f8 */
        /*  border-radius: 2455px; */
        display: flex;
        justify-content: space-around;
        align-items: center;
        font-size: 20px;
    }

    .navbar img {
        width: 91px;
        height: 79px;
        margin-right: auto;
    }

    .button {
        display: inline;
        padding: 14px 22px;
        margin: 12px;

        text-decoration: none;



    }

    .button:hover {
        color: white;
        background-color: #0065ff;
        border: 2px solid #0065fff8;
        border-radius: 24px;

    }


    .menu-bar {
        display: none;
    }

    @media all and (max-width:737px) {
        .menu-bar {
            display: block;
            position: absolute;
            right: 13px;
            color: yellow;
            top: 34px;
            text-decoration: none;

        }

        .navbar {
            flex-direction: column;
            border-radius: 0px;
        }

        .button-main {


            width: 100%;
            text-align: center;
            padding-top: 12px;
            margin-top: 39px;
            border-radius: 0px;

        }

        .menu-items {
            display: none;
        }

        .active {
            display: block;

        }

        .navbar img {
            width: 91px;
            height: 79px;
            margin: auto;
        }

        .button {
            display: block;
            padding: 9px 16px;
            margin: 14px;
            border-top: 1px solid white;
            text-decoration: none;
        }
    }
</style>

<body>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700;800;900&display=swap" rel="stylesheet">

    <nav id="navbar" class="navbar">

        <img src="2.png" alt="Girl in a jacket">

        <div class="button-main">
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
    <div class="about-body">
        <div class="CSI_container">

            <div class="CSI_container1">
                <div class="CSI_info1">
                    The seed for the Computer Society of India (CSI) was first shown in the year 1965 with a handful of IT enthusiasts who were a computer user group and felt the need to organize tteir activities. They also wanted to share their knowledge and exchange ideas on what they felt was a fast emerging sector. Today the CSI takes pride in being the largest and most professionally managed association of and for IT professionals in India. The purposes of the Society are scientific and educational directed towards the advancement of the theory and practice of computer science and IT.

                </div>
                <img src="csi-logo.png">
            </div>

            <div class="CSI_container2">
                <img src="2.png">
                <div class="CSI_info2">
                    The Computer Society of India, FCRIT-IT Chapter is a non-profit professional meet to exchange views and information, learn and share ideas. The wide spectrum of members are committed to the advancement of theory and practice of IT Engineering, Technology systems and information processing. The Chapter also encourages and assists professionals to maintain integrity and competence of the profession and fosters a sense of partnership amongst members. Apart from the activities held at the annual CSI - Technovation, the Chapter also conducts periodic conferences and seminar
                </div>
            </div>

            <div>
                <br>
                <br>
                <br>
            </div>
            <div class="cards_container_flex">
                <div class="card user">
                    <span class="inner-card-backface">
                        <span class="Info-inner-card">
                            <h3>About</h3>
                            <p>Qualification : ME</p>
                            <p>Designation : Assistant Professor</p>
                            <p>Email id : rupali.deshmukh@fcrit.ac.in</p>
                            <span class="back">back</span>
                        </span>
                    </span>
                    <span class="inner-card">
                        <span class="user-details">
                            <span class="top-section">
                                <img src="csihead.jpg">
                                <span class="Info">Info</span>
                            </span>
                            <span class="bottom-section">
                                <span class="name">Ms. Rupali Deshmukh</span>
                                <span class="area"><span class="area-container">CSI Head</span></span>
                                <span class="buttons">
                                    <a href="https://linkedin.com/smpnjn" target="_blank" class="linkedin main"><i
                                            class="fa-light fa-hashtag"></i></a>

                                </span>

                                <span class="glare"></span>
                            </span>
                </div>

                <div class="card user user-2">
                    <span class="inner-card-backface">
                        <span class="Info-inner-card">
                            <h3>About</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet est nunc.</p>
                            <span class="back">back</span>
                        </span>
                    </span>
                    <span class="inner-card">
                        <span class="user-details">
                            <span class="top-section">
                                <span class="Info">Info</span>
                            </span>
                            <span class="bottom-section">
                                <span class="name">Lisha Kothari</span>
                                <span class="area"><span class="area-container">President</span></span>
                                <span class="buttons">
                                    <a href="https://linkedin.com/smpnjn" target="_blank" class="linkedin main"><i
                                            class="fa-light fa-hashtag"></i></a>

                                </span>

                            </span>
                            <span class="glare"></span>
                        </span>
                </div>

                <div class="card user user-2">
                    <span class="inner-card-backface">
                        <span class="Info-inner-card">
                            <h3>About</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet est nunc.</p>
                            <span class="back">back</span>
                        </span>
                    </span>
                    <span class="inner-card">
                        <span class="user-details">
                            <span class="top-section">
                                <span class="Info">Info</span>
                            </span>
                            <span class="bottom-section">
                                <span class="name">Tejas Patil</span>
                                <span class="area"><span class="area-container">Vice President</span></span>
                                <span class="buttons">
                                    <a href="https://linkedin.com/smpnjn" target="_blank" class="linkedin main"><i
                                            class="fa-light fa-hashtag"></i></a>

                                </span>

                            </span>
                            <span class="glare"></span>
                        </span>
                </div>



                <div class="card user user-2">
                    <span class="inner-card-backface">
                        <span class="Info-inner-card">
                            <h3>About</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet est nunc.</p>
                            <span class="back">back</span>
                        </span>
                    </span>
                    <span class="inner-card">
                        <span class="user-details">
                            <span class="top-section">
                                <span class="Info">Info</span>
                            </span>
                            <span class="bottom-section">
                                <span class="name">Adesh</span>
                                <span class="area"><span class="area-container">Commitee member</span></span>
                                <span class="buttons">
                                    <a href="https://linkedin.com/smpnjn" target="_blank" class="linkedin main"><i
                                            class="fa-light fa-hashtag"></i></a>

                                </span>

                            </span>
                            <span class="glare"></span>
                        </span>
                </div>

                <div class="card user user-2">
                    <span class="inner-card-backface">
                        <span class="Info-inner-card">
                            <h3>About</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet est nunc.</p>
                            <span class="back">back</span>
                        </span>
                    </span>
                    <span class="inner-card">
                        <span class="user-details">
                            <span class="top-section">
                                <span class="Info"></span>
                            </span>
                            <span class="bottom-section">
                                <span class="name">Pooja Triupati</span>
                                <span class="area"><span class="area-container">Food Committee</span></span>
                                <span class="buttons">
                                    <a href="https://linkedin.com/smpnjn" target="_blank" class="linkedin main"><i
                                            class="fa-light fa-hashtag"></i></a>

                                </span>

                            </span>
                            <span class="glare"></span>
                        </span>
                </div>

                <div class="card user user-2">
                    <span class="inner-card-backface">
                        <span class="Info-inner-card">
                            <h3>About</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet est nunc.</p>
                            <span class="back">back</span>
                        </span>
                    </span>
                    <span class="inner-card">
                        <span class="user-details">
                            <span class="top-section">
                                <span class="Info">Info</span>
                            </span>
                            <span class="bottom-section">
                                <span class="name">Srija</span>
                                <span class="area"><span class="area-container">Food Committee</span></span>
                                <span class="buttons">
                                    <a href="https://linkedin.com/smpnjn" target="_blank" class="linkedin main"><i
                                            class="fa-light fa-hashtag"></i></a>

                                </span>

                            </span>
                            <span class="glare"></span>
                        </span>
                </div>

                <div class="card user user-2">
                    <span class="inner-card-backface">
                        <span class="Info-inner-card">
                            <h3>About</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet est nunc.</p>
                            <span class="back">back</span>
                        </span>
                    </span>
                    <span class="inner-card">
                        <span class="user-details">
                            <span class="top-section">
                                <span class="Info">Info</span>
                            </span>
                            <span class="bottom-section">
                                <span class="name">John hhhDoe</span>
                                <span class="area"><span class="area-container">VP Software</span></span>
                                <span class="buttons">
                                    <a href="https://linkedin.com/smpnjn" target="_blank" class="linkedin main"><i
                                            class="fa-light fa-hashtag"></i></a>

                                </span>

                            </span>
                            <span class="glare"></span>
                        </span>
                </div>

                <div class="card user user-2">
                    <span class="inner-card-backface">
                        <span class="Info-inner-card">
                            <h3>About</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet est nunc.</p>
                            <span class="back">back</span>
                        </span>
                    </span>
                    <span class="inner-card">
                        <span class="user-details">
                            <span class="top-section">
                                <span class="Info">Info</span>
                            </span>
                            <span class="bottom-section">
                                <span class="name">John hhhDoe</span>
                                <span class="area"><span class="area-container">VP Software</span></span>
                                <span class="buttons">
                                    <a href="https://linkedin.com/smpnjn" target="_blank" class="linkedin main"><i
                                            class="fa-light fa-hashtag"></i></a>

                                </span>

                            </span>
                            <span class="glare"></span>
                        </span>
                </div>
            </div>
        </div>



        <script>
            const toggleButtom = document.querySelector('.menu-bar');
            const navList = document.querySelector('.menu-items');

            toggleButtom.addEventListener("click", show);
            function show() {
                navList.classList.toggle("active");
            }

            let calculateAngle = function (e, item, parent) {
                let dropShadowColor = `rgba(0, 0, 0, 0.3)`
                if (parent.getAttribute('data-filter-color') !== null) {
                    dropShadowColor = parent.getAttribute('data-filter-color');
                }

                parent.classList.add('animated');

                let x = Math.abs(item.getBoundingClientRect().x - e.clientX);
                // Get the y position relative to the button
                let y = Math.abs(item.getBoundingClientRect().y - e.clientY);

                // Calculate half the width and height
                let halfWidth = item.getBoundingClientRect().width / 2;
                let halfHeight = item.getBoundingClientRect().height / 2;

                // Use this to create an angle. I have divided by 6 and 4 respectively so the effect looks good.
                // Changing these numbers will change the depth of the effect.
                let calcAngleX = (x - halfWidth) / 6;
                let calcAngleY = (y - halfHeight) / 14;

                let gX = (1 - (x / (halfWidth * 2))) * 100;
                let gY = (1 - (y / (halfHeight * 2))) * 100;

                item.querySelector('.glare').style.background = `radial-gradient(circle at ${gX}% ${gY}%, rgb(199 198 243), transparent)`;
                // And set its container's perspective.
                parent.style.perspective = `${halfWidth * 6}px`
                item.style.perspective = `${halfWidth * 6}px`

                // Set the items transform CSS property
                item.style.transform = `rotateY(${calcAngleX}deg) rotateX(${-calcAngleY}deg) scale(1.04)`;
                parent.querySelector('.inner-card-backface').style.transform = `rotateY(${calcAngleX}deg) rotateX(${-calcAngleY}deg) scale(1.04) translateZ(-4px)`;

                if (parent.getAttribute('data-custom-perspective') !== null) {
                    parent.style.perspective = `${parent.getAttribute('data-custom-perspective')}`
                }

                // Reapply this to the shadow, with different dividers
                let calcShadowX = (x - halfWidth) / 3;
                let calcShadowY = (y - halfHeight) / 6;

                // Add a filter shadow - this is more performant to animate than a regular box shadow.
                item.style.filter = `drop-shadow(${-calcShadowX}px ${-calcShadowY}px 15px ${dropShadowColor})`;
            }

            document.querySelectorAll('.card').forEach(function (item) {
                if (item.querySelector('.Info') !== null) {
                    item.querySelector('.Info').addEventListener('click', function () {
                        item.classList.add('Infoped');
                    });
                }
                if (item.querySelector('.back') !== null) {
                    item.querySelector('.back').addEventListener('click', function () {
                        item.classList.remove('Infoped');
                    });
                }
                item.addEventListener('mouseenter', function (e) {
                    calculateAngle(e, this.querySelector('.inner-card'), this);
                });

                item.addEventListener('mousemove', function (e) {
                    calculateAngle(e, this.querySelector('.inner-card'), this);
                });

                item.addEventListener('mouseleave', function (e) {
                    let dropShadowColor = `rgba(0, 0, 0, 0.3)`
                    if (item.getAttribute('data-filter-color') !== null) {
                        dropShadowColor = item.getAttribute('data-filter-color')
                    }
                    item.classList.remove('animated');
                    item.querySelector('.inner-card').style.transform = `rotateY(0deg) rotateX(0deg) scale(1)`;
                    item.querySelector('.inner-card-backface').style.transform = `rotateY(0deg) rotateX(0deg) scale(1.01) translateZ(-4px)`;
                    item.querySelector('.inner-card').style.filter = `drop-shadow(0 10px 15px ${dropShadowColor})`;
                });
            })
        </script>
</body>

</html>