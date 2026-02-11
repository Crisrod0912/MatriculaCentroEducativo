CREATE TABLE dbo.Materia (
	ID_Materia  INT          PRIMARY KEY NOT NULL,
	ID_Profesor INT          NOT NULL,
	Nombre      NVARCHAR(30) NOT NULL,
	FOREIGN KEY (ID_Profesor) REFERENCES dbo.Profesor(ID_Profesor)
);
