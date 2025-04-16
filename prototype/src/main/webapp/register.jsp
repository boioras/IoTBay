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
            background-color: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }

        .subTitle {
            font-size: 80px;
            letter-spacing: 3px;
            margin: 0 0 10px 0;
            font-weight: normal;
            opacity: 0;
            animation: fadeIn 1.5s forwards;
        }


        @keyframes fadeIn{
            from {opacity: 0; transform: scale(0.8);}
            to {opacity: 1; transform: scale(1);}
        }

        .form-container{
            display: flex;
            flex-direction: column;
            align-items: center;
            opacity: 0;
            animation: fadeIn 1.5s forwards;
            animation-delay: 0.5s;
        }

        .form-row{
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }


        input[type="text"], input[type="email"], input[type="password"], input[type="tel"], select{
            padding: 16px;
            font-size: 20px;
            width: 280px;
            background-color: rgba(255, 255, 255, 0.2);
            border: none;
            border-radius: 8px;
            color: white;
            margin: 10px 0;
            font-family: 'Bebas Neue', sans-serif;
        }

        .dob-container select{
            width: 90px;
            margin: 10px 5px
        }

        .btn {
            padding: 16px 80px;
            font-size: 20px;
            background-color: rgba(255, 255, 255, 0.4);
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 8px;
            font-weight: bold;
            transition: background-color 0.5s ease, transform 0.3s;
        }

        .btn:hover {
            background-color: rgba(255, 255, 255, 0.5);
            transform: scale(1.1);
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
    <div class="subTitle">Join IoTBay Now</div>

    <div class="form-container">
        <form action="welcome.jsp" method="POST">

        <div class="form-row">
            <input type="text" id="firstname" name="firstname" placeholder="First Name" required>
            <input type="text" id="lastname" name="lastname" placeholder="Last Name" required>

            </div>
            <div class="form-row">
            <input type="tel" id="phone" name="phone" placeholder="Phone Number" required>
            
            <div class="dob-container">
            <select name="DOB_day" required>
            <option value="">DD</option>
            <% for( int i=1; i<31; i++){ %>
            <option value ="<%=i%>"><%=i%></option>
            <% } %>
            </select>
            <select name="DOB_month" required>
            <option value="">MM</option>
            <% for( int i=1; i<=12; i++){ %>
            <option value ="<%=i%>"><%=i%></option>
            <% } %>
            </select>
            <select name="DOB_year" required>
            <option value="">YY</option>
            <% for( int i=2025; i>=1900; i--){ %>
            <option value ="<%=i%>"><%=i%></option>
            <% } %>
            </select>
            </div>
            </div>
            <input type="email" id="email" name="email" placeholder="Email Address" required><br>
            <input type="password" id="password" name="password" placeholder="Password" required><br>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required><br>

            <button type="submit" class="btn">REGISTER</button>
        </form>
    </div>
</body>
</html>