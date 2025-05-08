CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    phone TEXT,
    role TEXT CHECK(role IN ('customer', 'staff')) NOT NULL
);

CREATE TABLE AccessLog (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userEmail TEXT NOT NULL,
    loginTime DATETIME NOT NULL,
    logoutTime DATETIME,
    FOREIGN KEY (userEmail) REFERENCES User(email)
);