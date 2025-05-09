
-- Users Table
CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT NOT NULL,           
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    password TEXT NOT NULL,
    phone TEXT NOT NULL,
    role TEXT CHECK(role IN ('customer', 'staff')) NOT NULL
);

-- AccessLog Table
CREATE TABLE AccessLog (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userEmail TEXT NOT NULL,
    loginTime DATETIME NOT NULL,
    logoutTime DATETIME,
    FOREIGN KEY (userEmail) REFERENCES Users(email)
); 
