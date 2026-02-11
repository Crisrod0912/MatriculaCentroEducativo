CREATE TABLE dbo.Hora (
	ID_Hora      INT           PRIMARY KEY NOT NULL,
	ID_Horario   INT           NOT NULL,
	Hora_Inicial NVARCHAR(10),
	Hora_Final   NVARCHAR(10),
	FOREIGN KEY (ID_Horario) REFERENCES dbo.Horario(ID_Horario)
);
