INSERT INTO Dentists (dentist_name, speciality) 
    VALUES ("Andrea Sarmiento", "Caries"),
    ("Alejandro Ledezma", "Braquets"),
    ("Sofia Vargas", "Muelas del juicio");

INSERT INTO Clients (client_name)
    VALUES ("Fabricio Fernandez"),
    ("Estefany Duran"),
    ("Boris Pedraza");

INSERT INTO Appointments (dentist_id, client_id, appointment_date, appointment_hour)
    VALUES (1, 2, "13/04/22", "15:30"),
    (2, 3, "25/02/22", "14:00"),
    (3, 2, "01/03/22", "11:00");

INSERT INTO Payments (appointment_id, amount, method)
    VALUES (1, 200, "Efectivo"),
    (3, 600, "Tarjeta");

INSERT INTO Canceled (appointment_id, reason)
    VALUES (2, "Malestar estomacal");