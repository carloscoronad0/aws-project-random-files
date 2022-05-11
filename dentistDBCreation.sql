use mydentistdatabase

CREATE TABLE Dentists (
	id 		INT NOT NULL AUTO_INCREMENT,
	name 		VARCHAR(100),
	speciality 	VARCHAR(100),
	PRIMARY KEY (id)
)

CREATE TABLE Clients (
	id 	INT NOT NULL AUTO_INCREMENT,
	name 	VARCHAR(100),
	PRIMARY KEY (id)
)

CREATE TABLE Appointments (
	id 			INT NOT NULL AUTO_INCREMENT,
	dentist_id 		INT NOT NULL,
	client_id 		INT NOT NULL,
	appointment_date 	DATE,
	appointment_hour 	VARCHAR(10),
	FOREIGN KEY (dentist_id) REEFRENCES Dentists(id),
	FOREIGN KEY (client_id) REFERENCES Clients(id)
)

CREATE TABLE Payments (
	id INT NOT NULL AUTO_INCREMENT,
	appointment_id INT NOT NULL,
	amount INT,
	method VARCHAR(20),
	PRIMARY KEY (id),
	FOREIGN KEY (appointment_id) REFERENCES Appointments(id)
)

CREATE TABLE Canceled (
	id INT NOT NULL AUTO_INCREMENT,
	appointment_id INT NOT NULL,
	reason VARCHAR(200),
	PRIMARY KEY (id),
	FOREIGN KEY (appointment_id) REFERENCES Appointments(id)
)
