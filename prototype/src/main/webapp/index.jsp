<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to IOTBAY</title>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&display=swap" rel="stylesheet">
    <style>

    body{
        margin: 0;
        padding: 0;
        background-image: url("IMG_0149.PNG");
        background-size: cover;
        background-position: center;
        font-family: 'Bebas Neue', sans-serif;
        color: white;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        text-align: center;
        position: relative;
        overflow: hidden;
    }

    body::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: -1;
}

.subTitle, .title, .button-container, .logo {
    position: relative;
    z-index: 1;
}

@keyframes UpScale {
    0% {
        opacity: 0;
        transform: scale(0.5);
    }
    100%{
        opacity: 1;
        transform: scale(1);
    }
}
    .subTitle{
        font-size: 80px;
        letter-spacing: 3px;
        margin: 0 0 10px 0;
        font-weight: normal;
        opacity: 0;
        animation: UpScale 1.5s ease-out forwards;
        animation-delay: 0.2s;
    }

    .title{
        font-size: 150px;
        font-family: 'Anton', sans-serif;
        text-transform: uppercase;
        letter-spacing: 12px;
        margin: 0 0 30px 0;
        font-weight: bold;
        opacity: 0;
        animation: UpScale 2.0s ease-out forwards;
        animation-delay: 0.2s;
    }

        .button-container {
            display: flex;
            gap: 50px;
            opacity: 0;
            animation: UpScale 1.5s ease-out forwards;
            animation-delay: 0.2s;
        }

        .btn {
            padding: 16px 80px;
            font-size: 20px;
            background-color: rgba(255, 255, 255, 0.2);
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 8px;
            font-weight: bold;
            transition: background-color 0.5s ease, transform 0.3s;
        }

        .btn:hover {
            background-color: rgba(255, 255, 255, 0.4);
            transform: scale(1.3);
        }

        .logo {
            position: absolute;
            top: 5px;
            left: 5px;
            width: 120px;
            height: auto;
        }

        .guest-link{
            margin-top: 20px;
            font-size: 20px;
            z-index: 1;
            opacity: 0;
            animation: upScale 1.5s ease-out forwards;
            animation-delay: 0.2s;
        }

        .guest-link a{
            color: white;
            transition: font-size 0.3s ease, color 0.3s ease;
            text-decoration: underline;
        }

        .guest-link a:hover{
            font-size: 23px;
            color: rgba(255, 255, 255, 0.7);
        }

        
    </style>
</head>
<body>
    <img src="IoTBay Logo Design.PNG" alt="logo" class="logo">
    <div class="subTitle">WELCOME TO</div>
    <div class="title">IOTBAY</div>


    <div class="button-container">
        <form action="login.jsp">
            <button class="btn">LOGIN</button>
        </form>
        <form action="register.jsp">
            <button class="btn">SIGN UP</button>
        </form>
    </div>
    <div class="guest-link">
        <a href="main.jsp">Continue as Guest</a>
    </div>
</body>
</html>