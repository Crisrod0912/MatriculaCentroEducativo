CREATE TABLE dbo.Motivo (
	ID_Motivo        INT           PRIMARY KEY NOT NULL,
	ID_Congelamiento INT           NOT NULL,
	Salud            BIT           NULL,
	Laboral          BIT           NULL,
	Otros            NVARCHAR(150) NULL,
	FOREIGN KEY (ID_Congelamiento) REFERENCES dbo.Congelamiento(ID_Congelamiento)
);
