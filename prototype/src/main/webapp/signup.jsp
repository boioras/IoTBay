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
        font-family: 'Anton', sans-serif;
    }

    body{
        background-color: #0000;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .form-content{
        width: 100%;
        max-width: 500px;
        padding: 40px;
        border-radius: 10px;
        background-color: rgba(30, 30, 30, 0.7);
        box-shadow: 
        0 0 10px rgba(76, 29, 149, 0.5),
        0 0 20px rgba(124, 58, 237, 0.3),
        0 0 30px rgba(147, 51, 234, 0.2),
        0 0 40px rgba(139, 92, 246, 0.1);
        text-align: center;
        position: relative;
        overflow: hidden;
    }

    .form-content:before{
        content:"";
        position: absolute;
        top: -2px;
        left: -2px;
        right: -2px;
        bottom: -2px;
        background: linear-gradient(45deg, #1e3c72, #2a5298, #7303c0, #9c27b0);
        z-index: -1;
        border-radius: 12px;
        background-size: 400% 400%;
        animation: glowing 8s ease infinite;
    }

    @keyframes glowing {
        0%{
            background-position: 0% 
        }
    }


    </style>