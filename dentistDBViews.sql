use mydentistdatabase
go

CREATE VIEW MoneyPerDays AS 
SELECT 
    Appointments.appointment_date AS date,
    SUM(Payments.amount) AS amount
    FROM Payments 
    INNER JOIN Appointments
        ON Payments.appointment_id = Appointments.id
    GROUP BY Appointments.appointment_date