CREATE TABLE dbo.Estudiante (
	ID_Estudiante      INT          PRIMARY KEY NOT NULL,
	ID_DatosPersonales INT          NOT NULL,
	Apellido           NVARCHAR(30) NOT NULL,
	Fecha_Nacimiento   Date         NOT NULL,
	Genero             NVARCHAR(30) NOT NULL,
	Annio_Ingreso      INT          NOT NULL,
	Nombre             NVARCHAR(30) NOT NULL,
);
