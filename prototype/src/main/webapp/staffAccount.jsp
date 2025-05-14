<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Staff Account Settings</title>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Orbitron:wght@400;700;900&display=swap" rel="stylesheet">
    <style>
    body{
        font-family: 'Anton', sans-serif;
        letter-spacing: 1px;
        margin: 0;
        background-color: #121214;
        color: white;
        display: flex;
        flex-direction: row;
    }

    .sidebar{
        width: 250px;
        padding: 32px;
        background-color: #121214;
    }

    .sidebar h1{
        font-family: 'Orbitron', sans-serif;
        font-size: 40px;
        margin-bottom: 32px;
    }

    .tab-button{
        display: block;
        width: 100%;
        margin: 16px 0;
        padding: 16px;
        font-family: 'Anton', sans-serif;
        text-transform: uppercase;
        letter-spacing: 1px;
        text-align: center;
        background: linear-gradient(to right, #6a5af9, #d16ba5);
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        transition: all 0.2s;
        box-sizing: border-box;
    }

    .tab-button:hover{
        transform: scale(1.15);
        box-shadow: 0 0 15px rgba(106, 90, 249, 0.8);
    }

    .logout-button{
        font-family: 'Anton', sans-serif;
        letter-spacing: 1px;
        margin-top: 64px;
        width: 100%;
        background-color: #6a5af9;
        color: white;
        padding: 12px 24px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        box-sizing: border-box;
    }

    .logout-button:hover{
        background-color: #9189d9;
        box-shadow: 0 0 15px rgba(106, 90, 249, 0.8);
    }

    .main-content{
        flex-grow: 1;
        padding: 32px;
        background-color: white;
        color: #121214;
        border-radius: 10px;
        margin: 32px 32px 32px 0;
        max-width: calc(100%-350px);
    }

    .hidden{
        display: none;
    }

    h2{
        font-family: 'Orbitron', sans-serif;
        font-size: 32px;
        margin-top: 0;
    }

    label{
        display: block;
        margin: 16px 0 8px;
        font-family: 'Anton', sans-serif;
        letter-spacing: 1px;
    }

    input{
        padding: 12px;
        width: 100%;
        border-radius: 5px;
        border: 2px solid #6a5af9;
        font-family: 'Anton', sans-serif;
        font-size: 16px;
        letter-spacing: 1px;
        margin-bottom: 16px;
        box-sizing: border-box;
        background-color: #f7f7ff;
    }

    .info-box{
        padding: 12px;
        width: 100%;
        border-radius: 5px;
        border: 2px solid #6a5af9;
        font-family: 'Anton', sans-serif;
        letter-spacing: 1px;
        margin-bottom: 16px;
        box-sizing: border-box;
        background-color: #f7f7ff;
    }

    .log-entry{
        padding: 12px;
        margin-bottom: 12px;
        background-color: #f7f7ff;
        border: 2px solid #6a5af9;
        border-radius: 5px;
    }

    .log-time{
        color: #6a5af9
    }

    .viewer-notice {
    background-color: #f7f7ff;
    border: 2px solid #6a5af9;
    padding: 12px;
    margin: 12px 0;
    border-radius: 5px;
    text-align: center;
    font-family: 'Orbitron', sans-serif;
    }

    .btn-save, .btn-cancel{
        margin-top: 24px;
        padding: 12px 24px;
        font-size: 16px;
        border-radius: 6px;
        border: none;
        cursor: pointer;
        font-family: 'Anton', sans-serif;
        letter-spacing: 1px;
        transition: all 0.2s;
    }

    .btn-save{
        background-color: #6a5af9;
        color: white;
    }

    .btn-save:hover{
        background-color: #9189d9;
        box-shadow: 0 0 15px rgba(106, 90, 249, 0.8);
    }

    .btn-cancel{
        background-color: #6a5af9;
        color: white;
    }

    .btn-cancel:hover{
        background-color: #9189d9;
        box-shadow: 0 0 15px rgba(106, 90, 249, 0.8);

    }

    </style>
    </head>
    <body>

    <div class="sidebar">
    <h1>ACCOUNT<br>SETTINGS</h1>
    <button class="tab-button" onclick="showTab('personal')">Personal Details</button>
    <button class="tab-button" onclick="showTab('edit')">Edit Profile</button>
    <button class="logout-button">LOGOUT</button>
    </div>

    <div class="main-content">
    <div id="personal" class="tab-content">
    <h2>PERSONAL INFORMATION</h2>
        <label>STAFF ID:</label>
        <div class="info-box"><%=request.getAttribute("userName") %></div>
        <label>EMAIL:</label>
        <div class="info-box"><%=request.getAttribute("email") %></div>
        <label>FIRST NAME:</label>
        <div class="info-box"><%=request.getAttribute("firstName") %></div>
        <label>LAST NAME:</label>
        <div class="info-box"><%=request.getAttribute("lastName") %></div>
        <label>PHONE:</label>
        <div class="info-box"><%=request.getAttribute("phone") %></div>
    </div>

    <div id="edit" class="tab-content hidden">
    <h2>EDIT PROFILE</h2>
    <form action="updateStaffProfile.jsp" method="post">
        <label>STAFF ID:</label>
        <input type="text" name="user ID" placeholder="ENTER ID">
        <label>EMAIL:</label>
        <input type="email" class="input-field" name="email" placeholder="ENTER EMAIL" value="<%=request.getAttribute("email") %>" required>
        <label>FIRST NAME:</label>
        <input type="text" class="input-field" name="firstName" placeholder="ENTER FIRST NAME" value="<%=request.getAttribute("firstName") %>" required>
        <label>LAST NAME:</label>
        <input type="text" class="input-field" name="lastName" placeholder="ENTER LAST NAME" value="<%=request.getAttribute("lastName") %>" required>
        <label>PHONE:</label>
        <input type="tel" class="input-field" name="phone" placeholder="ENTER PHONE" value="<%=request.getAttribute("phone") %>" required>

    <button type="submit" class="btn-save">SAVE CHANGES</button>
    </form>
    </div>

    <div id="manage" class="tab-content hidden">
    <h2>MANAGE ACCOUNT</h2>
    <p>Not happy? Cancel your account below! Reminder this action is permanent and cannot be undone.</p>
    <button class="btn-cancel" onclick="confirmCancel()">CANCEL MY ACCOUNT</button>
    </div>
    </div>


<script>
function showTab(tabId){
    const tabs = document.querySelectorAll('.tab-content');
    tabs.forEach(tab => tab.classList.add('hidden'));
    document.getElementById(tabId).classList.remove('hidden');
}
function confirmCancel() {
    if(confirm('Are you sure you want to cancel your account? This action cannot be undone!')) {
        alert('Account cancellation request has been submitted. Thank you!');
    }
}
</script>
</body>
</html>