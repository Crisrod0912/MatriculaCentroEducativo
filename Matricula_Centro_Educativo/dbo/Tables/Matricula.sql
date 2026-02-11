CREATE TABLE dbo.Matricula (
	ID_Matricula  INT PRIMARY KEY NOT NULL,
	ID_Materia    INT NOT NULL,
	ID_Estudiante INT NOT NULL,
	FOREIGN KEY (ID_Materia) REFERENCES dbo.Materia(ID_Materia),
	FOREIGN KEY (ID_Estudiante) REFERENCES dbo.Estudiante(ID_Estudiante)
);
