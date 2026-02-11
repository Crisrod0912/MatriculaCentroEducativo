CREATE TABLE dbo.Congelamiento (
	ID_Congelamiento INT PRIMARY KEY NOT NULL,
	ID_Fecha         INT NOT NULL,
	ID_Motivo        INT NOT NULL,
	Activo           BIT NOT NULL,
);
