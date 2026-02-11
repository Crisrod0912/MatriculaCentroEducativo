CREATE TABLE dbo.Profesor (
	ID_Profesor      INT          PRIMARY KEY NOT NULL,
	Nombre           NVARCHAR(30) NOT NULL,
	Apellido         NVARCHAR(30),
	Correo           NVARCHAR(50),
	Especializacion  BIT,
	Titulo_Academico BIT,
);
