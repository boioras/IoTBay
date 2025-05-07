<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Account Settings</title>
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
    <button class="tab-button" onclick="showTab('addCustomer')">Add Customer</button>
    <button class="tab-button" onclick="showTab('removeCustomer')">Remove Customer</button>
    <button class="tab-button" onclick="showTab('editCustomer')">Edit Customer</button>
    <button class="tab-button" onclick="showTab('accessLogs')">Access Logs</button>
    </div>

    <div class="main-content">
    <div id="addCustomer" class="tab-content">
    <h2>ADD CUSTOMER</h2>
    <form action="addCustomerServlet" method="post">
    <label>USERNAME:</label>
    <input type="text" name="userName" placeholder="ENTER USERNAME">
    <label>EMAIL:</label>
    <input type="email" class="input-field" name="email" placeholder="ENTER EMAIL" required>
    <label>FIRST NAME:</label>
    <input type="text" class="input-field" name="firstName" placeholder="ENTER FIRST NAME" required>
    <label>LAST NAME:</label>
    <input type="text" class="input-field" name="lastName" placeholder="ENTER LAST NAME" required>
    <label>PHONE:</label>
    <input type="tel" class="input-field" name="phone" placeholder="ENTER PHONE" required>
 

    <button type="submit" class="btn-save">ADD CUSTOMER</button>
    </form>
    
    </div>

    <div id="removeCustomer" class="tab-content hidden">
    <h2>REMOVE CUSTOMER</h2>
    <form action="removeCustomerServlet" method="post">
    <label>USERNAME:</label>
    <input type="text" name="userName" required>

    <button type="submit" class="btn-cancel">REMOVE CUSTOMER</button>
    </form>
    </div>

    <div id="editCustomer" class="tab-content">
    <h2>EDIT CUSTOMER INFORMATION</h2>
    <form action="editCustomerServlet" method="post">
    <label>USERNAME:</label>
    <input type="text" name="userName" placeholder="ENTER USERNAME">
    <label>EMAIL:</label>
    <input type="email" class="input-field" name="email" placeholder="ENTER EMAIL" required>
    <label>FIRST NAME:</label>
    <input type="text" class="input-field" name="firstName" placeholder="ENTER FIRST NAME" required>
    <label>LAST NAME:</label>
    <input type="text" class="input-field" name="lastName" placeholder="ENTER LAST NAME" required>
    <label>PHONE:</label>
    <input type="tel" class="input-field" name="phone" placeholder="ENTER PHONE" required>

    <button type="submit" class="btn-cancel">UPDATE CUSTOMER</button>
    </form>
    </div>
 

    <div id="accessLogs" class="tab-content hidden">
    <h2>ACCESS LOGS</h2>
    <form method="get" action="SearchLogServlet">
    <label>SEARCH LOG ACTIVITY:</label>
    <input type="date" name="searchDate" required>
    <button type="submit" class="btn-save">Search</button>
    </form>
    
    <label>ACTIVITY LOG DETAILS:</label>
    <div id="logs-container">
    <div class="log-entry">
    <label>LOGGED TIME:</label>
    <div class="log-time"><%=request.getAttribute("logTime") %></div>
    <label>LOG DETAILS:</label>
    <div class="log-details"><%=request.getAttribute("activity") %></div>
    <label>LOG LOCATION:</label>
    <div class="log-location"><%=request.getAttribute("location") %></div>
    </div>
    </div>
        

    <div id="manage" class="tab-content hidden">
    <h2>MANAGE ACCOUNT</h2>
    <p>Not happy? Cancel your account below! Reminder this action is permanent and cannot be undone.</p>
    <button class="btn-cancel" onclick="confirmCancel()">CANCEL MY ACCOUNT</button>
    </div>


    <div id="access" class="tab-content hidden">
    <h2>ACCESS LOGS</h2>
    <div class="viewer-notice">VIEW AND SEARCH ONLY - ACCOUNT ACTIVITY TRACKING</div>
    <form method="get" action="SearchLogServlet">
    <label>SEARCH LOG ACTIVITY:</label>
    <input type="date" name="searchDate" required>
    <button type="submit" class="btn-save">Search</button>
    </form>
    <label>ACTIVITY LOG DETAILS:</label>
    <div id="logs-container">
    <div class="log-entry">
    <label>LOGGED TIME:</label>
    <div class="log-time"><%=request.getParameter("logTime") %></div>
    <label>LOG DETAILS:</label>
    <div class="log-details"><%=request.getParameter("activity") %></div>
    <label>LOG LOCATION:</label>
     <div class="log-location"><%=request.getParameter("location") %></div>
    </div>
    </div>
    </div>
    </div>

<script>
function showTab(tabId){
    const tabs = document.querySelectorAll('.tab-content');
    tabs.forEach(tab => tab.classList.add('hidden'));
    document.getElementById(tabId).classList.remove('hidden');
}

</script>
</body>
</html>