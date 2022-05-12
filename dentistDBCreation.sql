use mydentistdatabase
go

CREATE TABLE Dentists (
	id INT NOT NULL AUTO_INCREMENT,
	dentist_name VARCHAR(100),
	speciality VARCHAR(100),
	createdAt DATE,
	updatedAt DATE,
	PRIMARY KEY (id)
);

CREATE TABLE Clients (
	id INT NOT NULL AUTO_INCREMENT,
	client_name VARCHAR(100),
	createdAt DATE,
	updatedAt DATE,
	PRIMARY KEY (id)
);

CREATE TABLE Appointments (
	id INT NOT NULL AUTO_INCREMENT,
	dentist_id INT NOT NULL,
	client_id INT NOT NULL,
	appointment_date VARCHAR(100),
	appointment_hour INT,
	createdAt DATE,
	updatedAt DATE,
	PRIMARY KEY (id),
	CONSTRAINT FK_Appointment_DentistId FOREIGN KEY (dentist_id) REFERENCES Dentists(id),
	CONSTRAINT FK_Appointment_ClientId FOREIGN KEY (client_id) REFERENCES Clients(id)
);

CREATE TABLE Payments (
	id INT NOT NULL AUTO_INCREMENT,
	appointment_id INT NOT NULL,
	amount INT,
	method VARCHAR(20),
	createdAt DATE,
	updatedAt DATE,
	PRIMARY KEY (id),
	CONSTRAINT FK_Payment_AppointmentId FOREIGN KEY (appointment_id) REFERENCES Appointments(id)
);

CREATE TABLE Cancellations (
	id INT NOT NULL AUTO_INCREMENT,
	appointment_id INT NOT NULL,
	reason VARCHAR(200),
	createdAt DATE,
	updatedAt DATE,
	PRIMARY KEY (id),
	CONSTRAINT FK_Canceled_AppointmentId FOREIGN KEY (appointment_id) REFERENCES Appointments(id)
);
