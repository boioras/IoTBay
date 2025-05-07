<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Orbitron:wght@400;700;900&display=swap" rel="stylesheet">
    <style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Anton', sans-serif;
    }

    body{
        background-color: #121214;
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
            background-position: 0% 50%;
        }
        50%{
            background-position: 100% 50%;
        }
        100%{
            background-position: 0% 50%;
        }
    }

    h1{
        margin-top: 0;
        font-family: 'Orbitron', sans-serif;
        font-size: 40px;
        margin-bottom: 10px;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    p{
        margin-bottom: 30px;
        font-size: 20px;
        letter-spacing: 1px;
        color: #ccc;
    }

    .input-field{
        width: 100%;
        padding: 15px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #444;
        background-color: #333;
        color: white;
        box-sizing: border-box;
        font-size: 15px;
        letter-spacing: 2px;
        transition: border-color 0.3s;
    }

    .input-field:focus{
        border-color: #9c27b0;
        outline: none;
    }

    .input-field::placeholder{
        display: flex;
        justify-content: space-between;
    }

    .button-row{
        display: flex;
        justify-content: space-between;
    }

    .btn{
        padding: 12px 30px;
        border-radius: 5px;
        border: none;
        background-color: #333;
        color: white;
        font-size: 20px;
        cursor: pointer;
        transition: all 0.3s ease;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .btn:hover{
        background-color: #444;
        transform: scale(1.15);
    }

    .btn-submit{
        background-color: #9c27b0;
    }

    .btn-submit:hover{
        background-color: #7b1fa2;
        transform: scale(1.15);
    }

        </style>
    </head>
    <body>
    <div class ="form-content">
    <h1>SIGN UP TO IOTBay</h1>
    <p>Thank you for joining IOTBay</p>

    <form action="signup.jsp" method="post">
    <input type="text" class="input-field" name="firstName" placeholder="FIRST NAME" required>
    <input type="text" class="input-field" name="lastName" placeholder="LAST NAME" required>
    <input type="email" class="input-field" name="email" placeholder="EMAIL" required>
    <input type="tel" class="input-field" name="phone" placeholder="PHONE" required>
    <input type="password" class="input-field" name="password" placeholder="PASSWORD" required>

    <div class="button-row">
    <button type="button" class ="btn" onclick="location.href='login2.jsp'">RETURN</button>
    <button type="submit" class ="btn btn-submit">SIGN UP</button>
    </div>
    </form>
    </div>
            
