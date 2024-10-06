<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="web.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Play" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>csi</title>
</head>
<style>
    .main_animation_body {
        width: 100%;
        height: 100vh;
        background-color: #000;
        background-image: radial-gradient(circle at top right, rgba(121, 68, 154, 0.13), transparent),
            radial-gradient(circle at 20% 80%, rgba(6, 6, 6, 0.13), transparent)
    }

    canvas {
        position: fixed;
        width: 100%;
        height: 100%;
    }

    .line {

        position: relative;

        width: 100%;
        padding: 11px;
        margin: 0;
        border-right: 2px solid rgba(255, 255, 255, 0.75);
        font-size: 180%;
        text-align: center;
        white-space: nowrap;
        overflow: hidden;
        top: 27px;
        transform: translateY(-50%);
    }

    .anim-typewritter {
        animation: typewritter 10s steps(40) infinite,
            blinkTextCursor 500ms steps(40) infinite normal;
    }

    @keyframes typewritter {
        from {
            width: 0;
        }

        to {
            width: 100%;
        }
    }

    @keyframes blinkTextCursor {
        from {
            border-right-color: rgba(248, 241, 241, 0.75);
        }

        to {
            border-right-color: transparent;
        }
    }




    .typewritter {
        overflow: hidden;
        width: fit-content;
        position: absolute;
        color: white;
        left: 0;
        right: 0;

        margin-left: 50vw;
        margin-top: 50vh;
        transform: translate(-50%, 50%);



    }

    .name img {
        width: 350px;
        height: 350px;
        position: absolute;
        display: block;
        margin-left: 40vw;
        margin-top: 13vh;
        text-align: centre;
        color: rgb(0, 0, 0);

    }

    .dep {
        position: absolute;
        color: #fff;
        font-size: 2rem;
        font-family: "Times New Roman", Times, serif;
        /* margin-left: 45vw; */
        /* margin-right: 45vw; */
        margin-top: 48vh;
        text-align: center;
        left: 0;
        right: 0;
    }

    .animation_body {
        display: flex;
        overflow: hidden;
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    nav {
        position: fixed;
    }

    .navbar {

        background-color: black;
        /* :#d5f1f8 */
        border-radius: 0px;
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

    footer {
        display: block;
        background-color: black;
        text-align: center;
        height: 24px;
    }

    footer div {
        font-size: 15px;
        color: white;
    }
</style>

<body>
    <div></div>
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
    <div class="main_animation_body">

        <div class="animation_body">
            <div class="name">
                <img src="2.png">
            </div>
            <div class="dep">Information Technology</div>
            <div class="typewritter">
                <p class="line anim-typewritter">LIVE THE CODE</p>
            </div>



        </div>

        <canvas id="background"></canvas>
    </div>

    <footer>
        <div> Copyright @IN=nformation Technology Deprtment </div>
    </footer>
    <script src="myscripts.js"></script>
    <script>
        const STAR_COUNT = (window.innerWidth + window.innerHeight) / 8,
            STAR_SIZE = 3,
            STAR_MIN_SCALE = 0.2,
            OVERFLOW_THRESHOLD = 50;

        const canvas = document.querySelector('canvas'),
            context = canvas.getContext('2d');

        let scale = 1, // device pixel ratio
            width,
            height;

        let stars = [];

        let pointerX,
            pointerY;

        let velocity = { x: 0, y: 0, tx: 0, ty: 0, z: 0.0005 };

        let touchInput = false;

        generate();
        resize();
        step();

        window.onresize = resize;
        canvas.onmousemove = onMouseMove;
        canvas.ontouchmove = onTouchMove;
        canvas.ontouchend = onMouseLeave;
        document.onmouseleave = onMouseLeave;

        function generate() {

            for (let i = 0; i < STAR_COUNT; i++) {
                stars.push({
                    x: 0,
                    y: 0,
                    z: STAR_MIN_SCALE + Math.random() * (1 - STAR_MIN_SCALE)
                });
            }

        }

        function placeStar(star) {

            star.x = Math.random() * width;
            star.y = Math.random() * height;

        }

        function recycleStar(star) {

            let direction = 'z';

            let vx = Math.abs(velocity.tx),
                vy = Math.abs(velocity.ty);

            if (vx > 1 && vy > 1) {
                let axis;

                if (vx > vy) {
                    axis = Math.random() < Math.abs(velocity.x) / (vx + vy) ? 'h' : 'v';
                }
                else {
                    axis = Math.random() < Math.abs(velocity.y) / (vx + vy) ? 'v' : 'h';
                }

                if (axis === 'h') {
                    direction = velocity.x > 0 ? 'l' : 'r';
                }
                else {
                    direction = velocity.y > 0 ? 't' : 'b';
                }
            }

            star.z = STAR_MIN_SCALE + Math.random() * (1 - STAR_MIN_SCALE);

            if (direction === 'z') {
                star.z = 0.1;
                star.x = Math.random() * width;
                star.y = Math.random() * height;
            }
            else if (direction === 'l') {
                star.x = -STAR_SIZE;
                star.y = height * Math.random();
            }
            else if (direction === 'r') {
                star.x = width + STAR_SIZE;
                star.y = height * Math.random();
            }
            else if (direction === 't') {
                star.x = width * Math.random();
                star.y = -STAR_SIZE;
            }
            else if (direction === 'b') {
                star.x = width * Math.random();
                star.y = height + STAR_SIZE;
            }

        }

        function resize() {

            scale = window.devicePixelRatio || 1;

            width = window.innerWidth * scale;
            height = window.innerHeight * scale;

            canvas.width = width;
            canvas.height = height;

            stars.forEach(placeStar);

        }

        function step() {

            context.clearRect(0, 0, width, height);

            update();
            render();

            requestAnimationFrame(step);

        }

        function update() {

            velocity.tx *= 0.95;
            velocity.ty *= 0.95;

            velocity.x += (velocity.tx - velocity.x) * 0.7;
            velocity.y += (velocity.ty - velocity.y) * 0.7;

            stars.forEach((star) => {

                star.x += velocity.x * star.z;
                star.y += velocity.y * star.z;

                star.x += (star.x - width / 2) * velocity.z * star.z;
                star.y += (star.y - height / 2) * velocity.z * star.z;
                star.z += velocity.z;

                // recycle when out of bounds
                if (star.x < -OVERFLOW_THRESHOLD || star.x > width + OVERFLOW_THRESHOLD || star.y < -OVERFLOW_THRESHOLD || star.y > height + OVERFLOW_THRESHOLD) {
                    recycleStar(star);
                }

            });

        }

        function render() {

            stars.forEach((star) => {

                context.beginPath();
                context.lineCap = 'round';
                context.lineWidth = STAR_SIZE * star.z * scale;
                context.strokeStyle = 'rgba(255,255,255,' + (0.5 + 0.5 * Math.random()) + ')';

                context.beginPath();
                context.moveTo(star.x, star.y);

                var tailX = velocity.x * 2,
                    tailY = velocity.y * 2;

                // stroke() wont work on an invisible line
                if (Math.abs(tailX) < 0.1) tailX = 0.5;
                if (Math.abs(tailY) < 0.1) tailY = 0.5;

                context.lineTo(star.x + tailX, star.y + tailY);

                context.stroke();

            });

        }

        function movePointer(x, y) {

            if (typeof pointerX === 'number' && typeof pointerY === 'number') {

                let ox = x - pointerX,
                    oy = y - pointerY;

                velocity.tx = velocity.x + (ox / 8 * scale) * (touchInput ? -1 : 1);
                velocity.ty = velocity.y + (oy / 8 * scale) * (touchInput ? -1 : 1);

            }

            pointerX = x;
            pointerY = y;

        }

        function onMouseMove(event) {

            touchInput = false;

            movePointer(event.clientX, event.clientY);

        }

        function onTouchMove(event) {

            touchInput = true;

            movePointer(event.touches[0].clientX, event.touches[0].clientY, true);

            event.preventDefault();

        }

        function onMouseLeave() {

            pointerX = null;
            pointerY = null;

        }
    </script>

</body>

</html>