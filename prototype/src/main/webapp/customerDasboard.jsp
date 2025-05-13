<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to IOTBAY</title>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Orbitron:wght@400;700;900&display=swap" rel="stylesheet">
    <style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body{
        font-family: 'Bebas Neue', sans-serif;
        background-color: #0000;
        color: white;
        overflow-x: hidden;
    }

    .nav{
        display: flex;
        justify-content: center;
        padding: 20px 50px;
        position: absolute;
        width: 100%;
        z-index: 10;
        opacity: 0;
        animation: fadeIn 1s ease forwards;
        animation-delay: 0.8s;
    }

    .nav-links{
        display: flex;
        gap: 250px;
    }

    .nav-links a{
        color: white;
        text-decoration: none;
        font-size: 25px;
        transition: all 0.3s ease;
        position: relative;
        display: inline-block;
    }

    .nav-links a:hover{
        color: rgba(255,255,255, 0.5);
        transform: scale(1.15);
    }

    .text{
        height: 100vh;
        display: flex;
        align-items: center;
        position: relative;
        overflow: hidden;
    }

    .text-content{
        z-index: 2;
        max-width: 600px;
        position: absolute;
        left: 5%;
        top: 50%;
        transform: translateY(-50%);
    }

    .subtitle{
        font-family:'Orbitron', sans-serif;
        font-size: 70px;
        letter-spacing: 2px;
        margin-bottom: 10px;
        opacity: 0;
        animation: fadeUp 1s ease forwards;
        animation-delay: 0.2s;
    }

    .title{
        font-size: 140px;
        font-family:'Orbitron', sans-serif;
        text-transform: uppercase;
        letter-spacing: 10px;
        margin-bottom: 30px;
        opacity: 0;
        animation: fadeUp 1s ease forwards;
        animation-delay: 0.4s;
    }

    .devices {
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
        width: 50%;
        height: auto;
        z-index: 1;
        opacity: 1;
        animation: slideIn 1.8s ease forwards;
        animation-delay: 0.6s;
        pointer-events: none;
     }

    .shape {
        position: absolute;
        right: 0;
        top: 0;
        width: 100%;
        height: 100%;
        opacity: 0;
        z-index: 0;
        pointer-events: none;
        animation: fadeIn 2s ease forwards;
        animation-delay: 0.4s;
    }

    .dropdown{
        position: relative;
        display: inline-block;
    }

    .dropdown-menu{
        display: none;
        position: absolute;
        top: 100%;
        left: 0;
        background-color: rgba(255, 255, 255);
        padding: 10px 0;
        border-radius: 5px;
        box-shadow: 0px 4px 8px rgba(0,0,0,0.4);
        z-index: 99;
        min-width: 180px;
        text-align: left;
        overflow: hidden;
    }

    .dropdown-menu a{
        display: block;
        padding: 12px 20px;
        color: #000;
        text-decoration: none;
        font-size: 20px;
        width: 100%;
        transition: all 0.4s ease;
        box-sizing: border-box
    }

    .dropdown-menu a:hover{
        background-color: rgba(0, 0, 255, 0.5);
        color: black;
    }

    .dropdown:hover .dropdown-menu{
        display: block;
    }

        .search-bar{
        width: 100%;
        padding: 10px;
        font-size: 16px;
        margin-bottom: 10px;
        border-radius: 5px;
        border: 2px solid #6a5af9;
        background-color: #f7f7ff;
        letter-spacing: 1px;

    }

    @keyframes fadeUp {
        0% {
            opacity: 0;
            transform: translateY(30px);
        }
            100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes slideIn {
        0% {
            opacity: 0;
            transform: translate(100px, -50%);
        }
        100% {
            opacity: 1;
            transform: translate(-50px, -50%);
        }
    }

    @keyframes fadeIn{
        0%{
            opacity: 0;
        }
        100%{
            opacity: 1;
        }
    }

    .floating {
        animation: floating 3s ease-in-out infinite;
        animation-delay: 1.5s
    }

    @keyframes floating {
        0% {
            transform: translate(0, -50%);
        }
        50% {
            transform: translate(0, -52%);
        }
        100% {
            transform: translate(0, -50%);
        }
    }

    @media (max-width: 1200px) {
        .title {
            font-size: 100px;
        }
        .devices {
            width: 50%;
        }
    }

    @media (max-width: 768px) {
        .text-content {
            left: 5%;
            width: 90%;
            text-align: center;
        }
        .subtitle {
            font-size: 30px;
        }
        .title {
            font-size: 70px;
        }
        .devices {
            opacity: 0.3;
            width: 100%;
            right: -30%;
        }

        .nav {
            padding: 20px;
        }
    }
    </style>
</head>
<body>

<nav class ="nav">
    <div class="nav-links">
        <a href ="#">Cart</a>

        <div class="dropdown">
        <a href="#">Order</a>
        <div class="dropdown-menu">
        <a href="#">Manage Orders</a>
        <a href="#">Order History</a>
        </div>
        </div>

        <div class="dropdown">
        <a href ="#" id="devices-link">Devices</a>
        <div class="dropdown-menu">
        <input type="text" id="search-bar" placeholder="Search Devices" class="search-bar">
        </div>
        </div>

        <a href ="login2.jsp">Login</a>

        <div class ="dropdown">
        <a href ="#">Profile</a>
        <div class="dropdown-menu">
        <a href="accountSetting.jsp">Account Settings</a>
        <a href="#">Payment Settings</a>
        <a href="#">Shipment Settings</a>
        <a href="#">Wishlist</a>
        <a href="#">Logout</a>
    </div>
    </div>
    </div>
</nav>

<section class = "text">
<img src = "IOTBay.png" alt="shape" class="shape">

<div class ="text-content">
    <div class="subtitle">WELCOME TO</div>
    <div class="title"><strong>IOTBay</strong></div>
</div>

<img src = "3d-render-game-equipment-console-headset-free-png.webp" alt="Devices" class="devices floating">

</section>

<script>
document.getElementById("devices-link").addEventListener("click", function(event) {
    event.preventDefault(); 
    const searchBar = document.getElementById("search-bar");
    searchBar.style.display = (searchBar.style.display === "block") ? "none" : "block";
});

</script>

</body>
</html>