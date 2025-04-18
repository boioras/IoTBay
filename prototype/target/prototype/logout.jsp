<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Logout - IOTBAY</title>
    <link href="https://fonts.googleapis.com/css2?family=Helvetica&display=swap" rel="stylesheet">
    <style>
        
        body {
    margin: 0;
    padding: 0;
    background-color: #f5f5f5;
    font-family: 'Helvetica', sans-serif;
    color: #333333;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    font-weight: 700;
    }

        .header {
            background-image: url("IMG_0149.PNG");
            background-size: cover;
            background-position: center;
            height: 150px;
        }

        .logo {
            position: absolute;
            top: 15px;
            left: 15px;
            width: 60px;
            background-color: #ffffff;
            padding: 5px;
            border-radius: 10px;
        }

        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .title {
            font-size: 64px;
            margin-bottom: 20px;
            color: #333333;
            font-weight: 600;
        }

        .message {
            font-size: 24px;
            margin-bottom: 40px;
            color: #666666;
            font-weight: 700;
        }

        .button-container {
            display: flex;
            gap: 20px;
        }

        .btn {
            padding: 14px 30px;
            font-size: 16px;
            background-color: #888888;
            border: none;
            color: #ffffff;
            cursor: pointer;
            border-radius: 8px;
            font-weight: 700;
            font-family: 'Helvetica', sans-serif;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .btn:hover {
            background-color: #666666;
            transform: scale(1.05);
        }


    </style>
</head>
<body>
    <div class="header"></div>

    <img src="IoTBay Logo Design.PNG" alt="logo" class="logo">

    <div class="content">
        <div class="title">User Logged Out</div>
        <div class="message">Keep Exploring?</div>
        <div class="button-container">
            <form action="index.jsp">
                <button class="btn">Back to Home</button>
            </form>
            <form action="login.jsp">
                <button class="btn">Login Again</button>
            </form>
        </div>
    </div>
</body>
</html>