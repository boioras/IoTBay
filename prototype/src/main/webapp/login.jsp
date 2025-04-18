<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login to IOTBAY</title>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&display=swap" rel="stylesheet">
    <style>
        body {
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

        .subTitle, .title, .button-container, .logo, .form-container {
            position: relative;
            z-index: 1;
        }

        @keyframes UpScale {
            0% {
                opacity: 0;
                transform: scale(0.5);
            }
            100% {
                opacity: 1;
                transform: scale(1);
            }
        }

        .subTitle {
            font-size: 80px;
            letter-spacing: 3px;
            margin: 0 0 10px 0;
            font-weight: normal;
            opacity: 0;
            animation: UpScale 1.5s ease-out forwards;
            animation-delay: 0.2s;
        }

        .title {
            font-size: 100px;
            font-family: 'Anton', sans-serif;
            text-transform: uppercase;
            letter-spacing: 12px;
            margin: 0 0 30px 0;
            font-weight: bold;
            opacity: 0;
            animation: UpScale 2.0s ease-out forwards;
            animation-delay: 0.2s;
        }

        .form-container {
            opacity: 0;
            animation: UpScale 1.5s ease-out forwards;
            animation-delay: 0.2s;
        }

        input[type="email"], input[type="password"] {
            padding: 16px;
            font-size: 20px;
            width: 300px;
            margin-bottom: 15px;
            background-color: rgba(255, 255, 255, 0.2);
            border: none;
            border-radius: 8px;
            color: white;
            font-family: 'Bebas Neue', sans-serif;
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
    </style>
</head>
<body>
    <img src="IoTBay Logo Design.PNG" alt="logo" class="logo">
    <div class="subTitle">WELCOME BACK TO</div>
    <div class="title">IOTBAY</div>

    <div class="form-container">
        <form action="main.jsp" method="POST">
            <input type="email" id="email" name="email" placeholder="Enter your email" required><br>
            <input type="password" id="password" name="password" placeholder="Enter your password" required><br>
            <button type="submit" class="btn">LOGIN</button>
        </form>
    </div>
</body>
</html>
