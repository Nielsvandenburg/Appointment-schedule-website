CREATE TABLE [dbo].Appointment
(
	[AppointmentId] INT identity(1001, 1) NOT NULL PRIMARY KEY,
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL,
	PublishingTitle nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	PhoneNumber INT identity(9999999999, 1) NOT NULL,
	AppointmentTime datetime NOT NULL,
)
