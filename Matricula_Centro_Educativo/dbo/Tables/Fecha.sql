CREATE TABLE dbo.Fecha (
	ID_Fecha         INT  PRIMARY KEY NOT NULL,
	ID_Congelamiento INT  NOT NULL,
	Fecha_Inicio     DATE NOT NULL,
	Fecha_Fin        DATE NULL,
	FOREIGN KEY (ID_Congelamiento) REFERENCES dbo.Congelamiento(ID_Congelamiento)
);
