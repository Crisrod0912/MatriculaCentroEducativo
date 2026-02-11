CREATE TABLE dbo.DatosPersonales (
	ID_DatosPersonales INT           PRIMARY KEY NOT NULL,
	ID_Estudiante      INT           NOT NULL,
	Direccion          NVARCHAR(500) NOT NULL,
	Correo             NVARCHAR(150) NOT NULL,
	FOREIGN KEY (ID_Estudiante) REFERENCES dbo.Estudiante(ID_Estudiante)
);
