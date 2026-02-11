CREATE TABLE dbo.Horario (
	ID_Horario        INT          PRIMARY KEY NOT NULL,
	ID_Materia        INT          NOT NULL,
	Numero_Dia        NVARCHAR(5),
	ID_Hora           INT,
	Periodo_Academico VARCHAR(10),
	FOREIGN KEY (ID_Materia) REFERENCES dbo.Materia(ID_Materia)
);
