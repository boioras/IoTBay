
-- User Table Entries
INSERT INTO Users (email, first_name, last_name, password, phone, role) VALUES
('alex@gmail.com', 'Alex', 'Doe', 'password1', '0412987347', 'customer'),
('irene@gmail.com', 'Irene', 'Smith', 'password2', '0488798022', 'customer'),
('josh@gmail.com', 'Josh', 'Doe', 'password3', '0477869003', 'customer'),
('john@gmail.com', 'John', 'Adams', 'password4', '0466603208', 'customer'),
('ethan@gmail.com', 'Ethan', 'Smith', 'password5', '0400098722', 'customer'),
('jennifer@gmail.com', 'Jennifer', 'Kim', 'password6', '0454567897', 'customer'),
('jess@gmail.com', 'Jess', 'Garcia', 'password7', '0424345678', 'customer'),
('mark@gmail.com', 'Mark', 'Cruz', 'password8', '0487656678', 'customer'),
('jill@gmail.com', 'Jill', 'Smith', 'password9', '04109765665', 'customer'),
('stephen@gmail.com', 'Stephen', 'Cruz', 'password10', '0434356764', 'customer'),

('staff1@gmail.com', 'Julian', 'Walker', 'password11', '0412344567', 'staff'),
('staff2@gmail.com', 'Rhys', 'Barnes', 'password12', '0499876545', 'staff'),
('staff3@gmail.com', 'Carmen', 'Rogers', 'password13', '0400098654', 'staff'),
('staff4@gmail.com', 'Nia', 'Stark', 'password14', '0466743421', 'staff'),
('staff5@gmail.com', 'Damon', 'Parker', 'password15', '048890986', 'staff'),
('staff6@gmail.com', 'Alexi', 'Strange', 'password16', '0499987623', 'staff'),
('staff7@gmail.com', 'Karl', 'Kent', 'password17', '0450129655', 'staff'),
('staff8@gmail.com', 'Mina', 'Wayne', 'password18', '0488804323', 'staff'),
('staff9@gmail.com', 'Rex', 'Solo', 'password19', '0444567654', 'staff'),
('staff10@gmail.com', 'Alyssa', 'Renner', 'password20', '0409007654', 'staff');


--Access log Table Entries
INSERT INTO AccessLog (userEmail, loginTime, LogoutTime) VALUES
('alex@gmail.com', '2025-04-01 10:00:00', '2025-04-01 14:00:00'),
('jennifer@gmail.com', '2025-04-01 15:22:00', '2025-04-01 16:30:00'),
('irene@gmail.com', '2025-04-03 13:30:00', '2025-04-03 15:45:00'),
('josh@gmail.com', '2025-04-06 09:45:00', '2025-04-06 11:30:00'),
('jill@gmail.com', '2025-04-07 20:55:00', '2025-04-07 21:15:00'),
('alex@gmail.com', '2025-04-07 10:00:00', '2025-04-07 11:50:00'),
('john@gmail.com', '2025-04-09 08:25:00', '2025-04-09 13:10:00'),
('irene@gmail.com', '2025-04-11 21:34:00', '2025-04-11 22:00:00'),
('ethan@gmail.com', '2025-04-12 10:22:00', '2025-04-12 22:15:00'),
('jennifer@gmail.com', '2025-04-15 08:10:00', '2025-04-15 08:30:00'),
('jess@gmail.com', '2025-04-18 23:08:00', '2025-04-19 01:55:00'),
('jill@gmail.com', '2025-04-19 07:55:00', '2025-04-24 12:45:00'),
('mark@gmail.com', '2025-04-21 15:12:00', '2025-04-21 21:30:00'),
('jill@gmail.com', '2025-04-24 20:55:00', '2025-04-24 21:15:00'),
('irene@gmail.com', '2025-04-26 16:30:00', '2025-04-03 19:45:00'),
('stephen@gmail.com', '2025-04-27 21:43:00', '2025-04-27 23:30:00'),


('staff1@gmail.com','2025-04-02 09:00:00', '2025-04-02 17:30:00'),
('staff2@gmail.com','2025-04-04 09:00:00', '2025-04-04 17:30:00'),
('staff3@gmail.com','2025-04-06 09:00:00', '2025-04-06 17:30:00'),
('staff5@gmail.com','2025-04-06 12:00:00', '2025-04-06 20:30:00'),
('staff1@gmail.com','2025-04-08 09:00:00', '2025-04-08 17:30:00'),
('staff4@gmail.com','2025-04-08 12:00:00', '2025-04-08 20:30:00'),
('staff5@gmail.com','2025-04-10 09:00:00', '2025-04-10 17:30:00'),
('staff6@gmail.com','2025-04-12 09:00:00', '2025-04-12 17:30:00'),
('staff7@gmail.com','2025-04-14 09:00:00', '2025-04-14 17:30:00'),
('staff4@gmail.com','2025-04-14 12:00:00', '2025-04-14 20:30:00'),
('staff1@gmail.com','2025-04-16 09:00:00', '2025-04-16 17:30:00'),
('staff8@gmail.com','2025-04-16 12:00:00', '2025-04-16 20:30:00'),
('staff2@gmail.com','2025-04-16 12:00:00', '2025-04-16 20:30:00'),
('staff9@gmail.com','2025-04-18 09:00:00', '2025-04-18 17:30:00'),
('staff10@gmail.com','2025-04-20 09:00:00', '2025-04-20 17:30:00'),
('staff2@gmail.com','2025-04-20 12:00:00', '2025-04-20 20:30:00');
