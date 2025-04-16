<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to IOTBAY</title>
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

        .logo {
            position: absolute;
            top: 15px;
            left: 15px;
            width: 100px;
            height: auto;
        }

        .title {
            font-size: 50px;
            font-family: 'Anton', sans-serif;
            text-transform: uppercase;
            letter-spacing: 8px;
            margin-bottom: 10px;
            opacity: 0;
            animation: UpScale 1.5s ease-out forwards;
        }

        .subTitle {
            font-size: 35px;
            letter-spacing: 2px;
            margin: 0 0 20px 0;
            font-weight: normal;
            opacity: 0;
            animation: UpScale 1.2s ease-out forwards;
            animation-delay: 0.2s;
        }

        .user-info {
            font-size: 22px;
            line-height: 1.4;
            background-color: rgba(255, 255, 255, 0.2);
            padding: 15px 30px;
            border-radius: 12px;
            margin-top: 20px;
            opacity: 0;
            animation: UpScale 1.5s ease-out forwards;
            animation-delay: 0.3s;
            max-width: 80%;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
            opacity: 0;
            animation: UpScale 1.5s ease-out forwards;
            animation-delay: 0.4s;
        }

        .btn {
            padding: 12px 50px;
            font-size: 18px;
            background-color: rgba(255, 255, 255, 0.2);
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 10px;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.2s;
            opacity: 0;
            animation: UpScale 1.5s ease-out forwards;
        }

        .btn:hover {
            background-color: rgba(255, 255, 255, 0.4);
            transform: scale(1.1);
        }

        .btn.logout {
            animation-delay: 0.5s;
        }

        .btn.shop {
            animation-delay: 0.6s;
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
    </style>
</head>
<body>
    <img src="IoTBay Logo Design.PNG" alt="logo" class="logo">

    <div class="subTitle">WELCOME TO</div>
    <div class="title">IOTBAY</div>

    <div class="user-info">
    <h1> Your Details: </h1>
        <p><strong>Name:</strong> <%=request.getParameter("firstname") %><%= request.getParameter("lastname") %></p>
        <p><strong>Email:</strong> <%=request.getParameter("email") %></p>
        <p><strong>Phone Number:</strong> <%=request.getParameter("phone") %></p>
        <p><strong>DOB:</strong>
        <%=request.getParameter("DOB_day") %> / <%=request.getParameter("DOB_month") %> / <%=request.getParameter("DOB_year") %></p>

    </div>

    <div class="button-container">
            <form action="Mainpage.jsp" method="GET">
            <button type="submit" class="btn shop">View Shop Items</button>
        </form>

        <form action="logout.jsp" method="POST">
            <button type="submit" class="btn logout">Logout</button>
        </form>

    </div>
</body>
</html>
